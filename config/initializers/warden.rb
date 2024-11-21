Rails.configuration.middleware.use RailsWarden::Manager do |manager|
  manager.failure_app = Proc.new { |_env|
    ['302', { 'Location' => '/login' }, []]
  }
  manager.default_strategies :google_auth
end
require_relative 'warden/google_auth_strategy.rb'
Warden::Strategies.add(:google_auth, Warden::GoogleAuthStrategy)