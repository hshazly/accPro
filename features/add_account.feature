Feature: adding new account
  As an accountant
  So that I can serve more customers
  I want to be able to add new accounts for them
  

Scenario: add new account
	Given I am an authenticated user
	And I am on the create account page
	When I fill in "account_name" with "Bank"
	And I select "Asset" from "account_account_type"
	And I press "submit"
	
Scenario: invalid account
	Given I am an authenticated user
	And I am on the create account page
	And I press "submit"
	Then I should go to the create account page
	
Scenario: go back to all accounts
	Given I am an authenticated user
	And I am on the create account page
	And I follow "Back"
	Then I should go to all accounts page
		
