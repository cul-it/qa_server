require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module QaServer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.web_console.development_only = false if config.respond_to?(:web_console) && !Rails.env.production?

    Qa::Authorities::Discogs::GenericAuthority.discogs_key = 'bXDsQzXjWPxUowNRUoxq'
    Qa::Authorities::Discogs::GenericAuthority.discogs_secret = 'yNSnBqrCDUYmwfMheZdtdCDuaUgQRJTn'

    config.to_prepare do
      QaServer::AuthorityListPresenter.prepend PrependedPresenters::AuthorityListPresenter
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
