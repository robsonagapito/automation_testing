require File.dirname(__FILE__) + '/../config/helpers.rb'
Dir[File.dirname(__FILE__) + '/../class/*.rb'].each { |f| require f } 

RSpec.configure do |config|
  include Helpers

  config.before(:each) do
  end

  config.after(:each) do
  end
end