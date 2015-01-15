Feature: accessing the website
 
  As an accountant
  So that I can try the features of the system
  I want to all the features to be available from homepage
  
  
Scenario: visit home page
	Given I am on the home page
	Then I should see add account
	And I should see show balance
	And I should see manage transactions
	  

Scenario: navigate to show balance page
	Given I am on the home page
	And I press "show_balance"
	Then I should go to the balances page
	

Scenario: navigate to add account page
	Given I am on the home page
	And I press "add_count"
	Then I should go to "new_account"	

Scenario: navigate to manage transactions
	Given I am on the home page
	When I press "manage_transactions"
	Then I should go to "edit_transactions"
	
Scenario: show the balance
	Given I am on the balances page
	Then I should see all the accounts
	And I should see all the balances
	

