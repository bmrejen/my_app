# frozen_string_literal: true

Raven.configure do |config|
  config.dsn = 'https://8a1e58a7ecab4bd8bbc9f965bb852962:9a70f31344a2416e817b0cae1fa7ca94@sentry.io/1863756'
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
