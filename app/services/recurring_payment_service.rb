class RecurringPaymentService
  def self.create_card (recurring_contribution, card_hash)
    card = PagarMe::Card.new(card_hash: card_hash)
    card.create

    recurring_contribution.update_attributes(credit_card: card.id)
  end

  def self.perform (recurring_id, contribution = nil, card_hash = nil)
    recurring_contribution = RecurringContribution.find(recurring_id)

    unless recurring_contribution.credit_card?
      create_card(recurring_contribution, card_hash)
      recurring_contribution.reload
    end

    transaction = PagarMe::Transaction.new({
      amount: recurring_contribution.value.to_f * 100,
      card: PagarMe::Card.find_by_id(recurring_contribution.credit_card),
      postback_url: Rails.application.routes.url_helpers.transaction_status_update_url,
      split_rules: [{
        recipient_id: recurring_contribution.project.recipient,
        percentage: 100,
        liable: true,
        charge_processing_fee: true
      }]
    })

    transaction.charge

    if contribution
      contribution.update_attributes({
        payment_method: 'PagarMe',
        payment_id: transaction.id,
        payment_service_fee: transaction.cost.to_f / 100
      })
    else
      CreateContribution.new(recurring_contribution, transaction).call
    end
  end
end
