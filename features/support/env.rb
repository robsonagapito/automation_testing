require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer = false
  Capybara::Selenium::Driver.new(app, :profile => profile)
end

Capybara.ignore_hidden_elements = true
Capybara.default_selector = :css
Capybara.page.driver.browser.manage.window.maximize

AfterStep do
  sleep (ENV['PAUSE'] || 0).to_i
end