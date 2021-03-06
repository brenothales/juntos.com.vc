source 'https://rubygems.org'

ruby '2.1.8'

gem 'rails', '~> 4.1.14'

gem 'rails-observers', '~> 0.1.2'

gem 'sidekiq',  '~> 3.1.3'
gem 'sidekiq-status'

gem 'sinatra', require: nil

# Turns every field on a editable one
gem "best_in_place", :git => "git://github.com/bernat/best_in_place", ref: "ee95961e639022e6aa528704b8cb4789596ea61b"

# State machine for attributes on models
gem 'state_machine', require: 'state_machine/core'

gem 's3_direct_upload', github: 'waynehoover/s3_direct_upload'

# Database and data related
gem 'pg'
gem 'postgres-copy'
gem 'pg_search', '~> 1.0.6'
gem 'i18n_alchemy'

gem 'schema_plus'
gem 'chartkick'
gem 'catarse_settings_db', '>= 0.1.0'

# Notifications
gem 'user_notifier', '~> 0.0.5'

# Mixpanel for backend tracking
gem 'mixpanel-ruby'

# Payment engines
gem 'pagarme', '2.1.2'
gem 'catarse_paypal_express', '3.0.1'
gem 'catarse_moip', github: 'juntos-com-vc/catarse_moip'
gem 'catarse_credits', '1.0.0'

gem 'catarse_contribution_validator', github: 'catarse/catarse_contribution_validator'
# gem 'catarse_wepay', '~> 0.0.1'

# Decorators
gem 'draper'

# Frontend stuff
gem 'slim-rails'
gem 'jquery-rails'
gem 'jquery-minicolors-rails'
gem 'jquery-ui-rails'
gem 'browser'
gem 'autoprefixer-rails'

# Static pages
gem 'high_voltage'

# Authentication and Authorization
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook', '~> 4.0.0'
gem 'devise'
gem 'ezcrypto'
gem 'pundit'

# Email marketing
gem 'catarse_monkeymail', '>= 0.1.6'

# HTML manipulation and formatting
gem 'formtastic',   '~> 2.2.1'
gem 'simple_form'
gem 'mail_form'
gem "auto_html",    '= 1.6.4'
gem "RedCloth"
gem 'kaminari'

# Uploads
gem 'carrierwave', '~> 0.10.0'
gem 'rmagick', :require => 'RMagick'

# Other Tools
gem 'to_xls'
gem 'ranked-model'
gem 'feedjira'
gem 'inherited_resources',        '~> 1.4.1'
gem 'has_scope', '~> 0.6.0.rc'
gem 'spectator-validates_email',  require: 'validates_email'
gem 'video_info', '>= 1.1.1'
gem 'httparty', '~> 0.6.1' # this version is required by moip gem, otherwise payment confirmation will break
gem 'enumerize'
gem 'enum_help'

# Translations
gem 'http_accept_language'
gem 'routing-filter', '~> 0.4.0.pre'

# Payment
gem 'moip', github: 'catarse/moip-ruby', ref: 'c0225ad71645cd1df35dafa1e45c9f092b3abb9e'
gem 'httpclient',     '>= 2.2.5'
gem 'catarse_juntos_gift_cards', github: 'danielweinmann/catarse_juntos_gift_cards', ref: 'a865ff347c748934c1d872656c7e4984755d6d00'

# Location by IP
gem 'geo_ip', '~> 0.5.0'

# Catch errors
  gem 'rollbar'

group :production do
  # Gem used to handle image uploading
  gem 'fog', '>= 1.3.1'

  # Workers, forks and all that jazz
  gem 'unicorn'

  # Enabling Gzip on Heroku
  # If you don't use Heroku, please comment the line below.
  gem 'heroku-deflater', '>= 0.4.1'

  # Make heroku serve static assets and loggin with stdout
  #gem 'rails_on_heroku'
  gem 'rails_12factor'

  # Monitoring with the new new relic
  gem 'newrelic_rpm', '3.6.5.130'

  gem 'clockwork', '~> 1.0.0'

  # Using dalli and memcachier have not presented significative performance gains
  # Probably this is due to our pattern of cache usage
  # + the lack of concurrent procs in our deploy
  #gem 'memcachier'
  #gem 'dalli'
end
group :development do
  gem "letter_opener"
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'thin'
  gem 'fuubar', '~> 2.0.0'
  gem 'quiet_assets', '~> 1.1.0'
end

group :test, :development do
  gem 'rspec-rails', '~> 3.1'
  gem 'rspec-its'
  gem 'rspec-collection_matchers'
  gem 'pry'
  gem 'pry-remote'
  gem 'jasmine-rails'
  gem 'dotenv-rails'
  gem 'timecop', '~> 0.8.0'
end

group :test do
  gem 'fakeweb'
  gem 'poltergeist'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'capybara',   '~> 2.2.0'
  gem 'coveralls', require: false
  gem 'selenium-webdriver', '~> 2.51.0'
  gem 'rspec-html-matchers', '~> 0.7.2'
  gem 'vcr'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-underscore', '~> 1.4.4'
end

# Rails simple carousel
gem 'slick_rails'
gem 'sass-rails', '~> 4.0.0'
gem 'sass', '3.4.5'
gem 'coffee-rails', '~> 4.0.0'
gem "compass-rails"
gem 'uglifier'
gem 'compass-960-plugin'
gem 'sprockets', '~> 2.10.1'

# FIXME: Not-anymore-on-development
# Gems that are with 1 or more years on the vacuum
gem 'weekdays'

# Countries collection
gem 'countries'
