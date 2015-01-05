require "action_controller/railtie"
require "logger"
require "better_delayed_job_web"

class RailsApp < Rails::Application
  config.logger = Rails.logger = Logger.new(nil)
  config.secret_key_base = "foo"

  routes.draw do
    match "/delayed_job" => BetterDelayedJobWeb, :anchor => false, via: [:get, :post]
  end
end
