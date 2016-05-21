
When(/^I am searching "([^"]*)"$/) do |arg1|
  steps %Q{ When I fill in "suggestion-search" with "#{arg1}"
             And I press "Procurar"}  
end

When(/^I open product page$/) do 
	find('li.shelf-item.item-0.with-buy-box figure a img.loading').click
end

When(/^I open my cart$/) do
  find('header div div a span.cart-icon').click
end

When(/^I login with existent user$/) do
	steps %Q{When I follow "topbar-login-link"}
	within_frame(find('#iframeLogin')) do
		steps %Q{ When I fill in "signinField" with "#{ENV['USER']}"
							 And I fill in "password" with "#{ENV['PASS']}"
		           And I press "signinButtonSend"}  
	end
end

When(/^I enter in my profile$/) do
	find('.profile-img').click
end
