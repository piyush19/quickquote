require_relative '../../app'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :phantomjs)
end

Capybara.default_driver  = :selenium
Capybara.configure do |config|
  Capybara.server_port = 9887 + ENV['TEST_ENV_NUMBER'].to_i
  Capybara.app = App.new
end