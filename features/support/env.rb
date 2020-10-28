require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'
require 'os'
require 'addressable/uri'
require "rubygems"
require "selenium-webdriver"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

Capybara.register_driver :selenium do |app|
  if ENV["ENVIRONMENT"] == 'remote'
	options = Selenium::WebDriver::Chrome::Options.new
	options.add_argument("--window-size=1024,768")
	options.add_argument("--disable-dev-shm-usage")  
	options.add_argument("--headless")
	options.add_argument("--no-sandbox")
  #url = 'http://192.168.6.4:4444/wd/hub' -> DOCKER-SELENIUM
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome
    Capybara::Selenium::Driver.new(app,
                                   :browser => :remote,
                                   :url => url,
                                   :desired_capabilities => capabilities,
								   :options => options )
    #Capybara.ignore_hidden_elements = false
  elsif ENV["ENVIRONMENT"] == 'chrome'
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  elsif ENV["ENVIRONMENT"] == 'firefox'
   Capybara::Selenium::Driver.new(app, browser: :firefox)
  elsif ENV["ENVIRONMENT"] == 'safari'
   Capybara::Selenium::Driver.new(app, browser: :safari)
  end
end
