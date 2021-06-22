require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Swiit
  class Application < Rails::Application
    onfig.load_defaults 6.1
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
  end
end
