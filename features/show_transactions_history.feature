Feature: show transactions history
  As an accountant
  So that I can keep track of past transactions
  I want to be able to see transactions history
  
Background: movies have been added to database

  Given the following accounts exist:
  | name            | balance | account_type | 
  | assets_account1 | 1000    | Asset        |
  | equity_account  | 1000    | Equity       |

  And the following transactions exist:
  | dir1 | dir2 | amount | description      | account1_id | account2_id | 
  | to   | to   | 500.0  | transaction_test | 1           | 2 |

  And I am an authenticated user 	
  And I am on show transactions page


Scenario: show transaction history
	I should see "to"
	And I should see "to"
	And I should see "500.0"
	And I should see "transaction_test"
	And I should see "1"
	And I should see "2"
	
Scenario: return to home page
	When I follow "Dashboard"
	Then I should go to the home page
	
Scenario: make new transaction
	When I follow "New Transaction"
	Then I should go to new transactions page	
