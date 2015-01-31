Feature: accessing the website
 
  As an accountant
  So that I can try the features of the system
  I want to all the features to be available from homepage
  
  
Scenario: visit home page
	Given I am an authenticated user
	And I am on the home page
	Then I should see add account
	And I should see show balance
	And I should see make transactions
	  

Scenario: navigate to show balance page
	Given I am an authenticated user
	And I am on the home page
	And I follow "Show Balance Sheet"
	Then I should go to the balances page
	

Scenario: navigate to add account page
	Given I am an authenticated user
	And I am on the home page
	And I follow "Add New Account"
	Then I should go to "new_account"	

Scenario: navigate to manage transactions 	
	Given I am an authenticated user
	And I am on the home page
	When I follow "Make Transaction"
	Then I should go to "Make Transaction"
	
Scenario: show the balance
	Given I am an authenticated user
	And I am on the balances page
	Then I should see all the accounts
	

Scenario: show transactions history
	Given I am an authenticated user 
	And I am on the home page
	When I follow "Transactions History"
	Then I should go to "Show Transactions history"
	
Scenario: edit profile from dashboard
	When I am an authenticated user
	And I am on the home page
	When I follow "Profile"
	Then I should go to edit profile page
	
Scenario: can log out
	When I am an authenticated user
	And I am on the home page
	When I follow "Logout"
	Then I should sign out
	And I should go to the main page
	
Scenario: main page details
	When I am on the main page
	Then I should see "Sign In"
	And I should see "Sign Up"
	And I should see "Home"
	
Scenario: can sign in
	When I am on the main page
	And I follow "Sign In"
	Then I should go to the sign in page
	And I should see "Log in"
	
Scenario: can sign up
	When I should go to the sign up page
	And I fill in "user_email" with "testing@man.net"
	And I fill in "user_password" with "secretpass"
	And I fill in "user_password_confirmation" with "secretpass"
	And I press "Sign up"
	Then I should go to the home page 	

Scenario: can go to accounts
	When I am an authenticated user
	And I follow "Accounts"
	Then I should go to all accounts page

Scenario: can go to tranactions
	When I am an authenticated user
	And I follow "Transactions"
	Then I should go to "Show Transactions history"
	
									
