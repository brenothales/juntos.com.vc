class ContactController < ApplicationController
  layout 'juntos_bootstrap'

  def index
    @contact_page = Page.find_by(name: Page.names[:contact])
  end

end
