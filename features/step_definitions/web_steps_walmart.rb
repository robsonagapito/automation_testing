# require File.dirname(__FILE__) + 'web_steps.rb'

When(/^I searching "([^"]*)"$/) do |arg1|
  steps %Q{ When I fill in "suggestion-search" with "#{arg1}"
             And I press "Procurar"}  
end

When(/^I open product page$/) do 
	find('li.shelf-item.item-0.with-buy-box figure a img.loading').click
end

When(/^I open my cart$/) do
  find('header div div a span.cart-icon').click
end