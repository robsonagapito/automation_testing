# 
Projeto de testes utilizando Cucumber,  Capybara e HTTParty

Automation Testing
==================

This project run testing with BDD technic and use Cucumber and Capybara to UI testing.

It has too API Testing with HTTParty and use JSON example to do a validation.

You need:
---------

- Have RVM installed
- To be possible to intall ruby 2.1.3
- Clone the project
- Run Bundle (bundle install)
- To run cucumber in the project
	- Use parameter -p <tag> to take other parameters in tag of file config/cucumber.yml
 
How to run:
-----------

* Exercise 1 (BDD):	
** bundle exec cucumber features/steps/walmart_ui_steps.feature -p testers

* Exercise 2 (API):	
** rspec spec
