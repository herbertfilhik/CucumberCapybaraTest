begin 
	require 'rspec/expectations'; 
	rescue LoadError; 
	require 'spec/expectations'; 
end

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rubygems'
require "rspec"

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end