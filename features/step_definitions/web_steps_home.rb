
When(/^I am searching "([^"]*)"$/) do |arg1|
  steps %Q{ When I fill in "suggestion-search" with "#{arg1}"
             And I press "Procurar"}  
end

When(/^I open my cart$/) do
  find('header div div a span.cart-icon').click
end

When(/^I enter in my profile$/) do
	find('.profile-img').click
end
