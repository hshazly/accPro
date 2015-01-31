Feature: show balance sheet
  As an accountant
  So that I can view the current balances of the system
  I want to be able to see the current accounts of the system
  
Background: accounts have been added to database
  
  Given the following accounts exist:
  | name            | balance | account_type | 
  | assets_account1 | 1000    | Asset        |
  | assets_account2 | 1000    | Asset        |
  | equity_account  | 1000    | Equity       |

  And I am an authenticated user 	
  And I am on the balances page

Scenario: view balance sheets
	I should see the following accounts: "assets_account1", "assets_account2", "equity_account"
	And I should see the following balances: "1000", "1000", "1000"
	And I should see the following account_types: "Asset", "Asset", "Equity"
	
Scenario: return to the home page
	When I follow "Dashboard"
	Then I should go to the home page	
