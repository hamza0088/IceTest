require 'capybara'
require 'capybara/cucumber'
require 'capybara/session'
require 'capybara/dsl'
require 'rspec/matchers'

Before do
  Capybara.register_driver :selenium_firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  Capybara.default_driver = :selenium_firefox
  Capybara.app_host = 'file://Users/hamzarazzak/Documents/Cucumber Projects/IceMobile/IceTest/html/index.html'
end

