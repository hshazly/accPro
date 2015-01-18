Feature: adding new account
 
  As an accountant
  So that I can serve more customers
  I want to be able to add new accounts for them
  

Scenario: add new account
	Given I am on the create account page
	When I fill in "account_name" with "Bank"
	And I select "Assets" from "account_account_type"
	And I press "submit"
	And I should go to show account page  

