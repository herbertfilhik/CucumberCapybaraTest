begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
#require 'capybara-webkit' # I added this

require 'selenium-webdriver'
#Selenium::WebDriver.for :internet_explorer
#Capybara.default_driver = :selenium # And changed this!

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end




