When(/^I login with existent user$/) do
	steps %Q{When I follow "topbar-login-link"}
	within_frame(find('#iframeLogin')) do
		steps %Q{ When I fill in "signinField" with "#{ENV['USER']}"
							 And I fill in "password" with "#{ENV['PASS']}"
		           And I press "signinButtonSend"}  
	end
end