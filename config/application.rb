require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


def set_locale_configs_and_timezone
  config.time_zone = "Brasilia"
  config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**/*.{rm,yml}').to_s]
  config.i18n.available_locales = ['pt-BR']
  config.i18n.default_locale = 'pt-BR'
end

module ThalesDpre
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    
    set_locale_configs_and_timezone

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
