require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "webdrivers"
require "faker"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
