require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gomeet
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #Configuration layout for authetication users
    config.to_prepare do
        Devise::SessionsController.layout "lightbox"
        Devise::RegistrationsController.layout "lightbox"
        Devise::ConfirmationsController.layout "lightbox"
        Devise::UnlocksController.layout "lightbox"
        Devise::PasswordsController.layout "lightbox"
    end

  end
end
