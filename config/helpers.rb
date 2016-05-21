require 'rubygems'
require 'rspec'
require "json"
require 'open-uri'
require 'openssl'
require 'httparty'

module Helpers

  def decode(value, replace)
    value.gsub!("***", replace)
  end
  
end