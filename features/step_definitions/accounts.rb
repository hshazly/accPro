Given(/^the following accounts exist:$/) do |table|
	table.hashes.each do |account|
    	Account.create(account)
	end
end

Given(/^I should see the following balances: "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3|
	page.should have_content(arg1)
	page.should have_content(arg2)
	page.should have_content(arg3)
end

Given(/^I should see the following account_types: "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3|
	page.should have_content(arg1)
	page.should have_content(arg2)
	page.should have_content(arg3)
end

Given /^PENDING/ do
  pending
end

Then(/^I should see add account$/) do
   assert page.body =~ /(.*)Add New Account(.*)/m
end

Then(/^I should see show balance$/) do
  assert page.body =~ /(.*)Show Balance Sheet(.*)/m
end

Then(/^I should see manage transactions$/) do
	assert page.body =~ /(.*)Make Transaction(.*)/m
end


Then(/^I should see all the accounts$/) do
	accounts = Account.all
	accounts.each do |account|
		assert page.has_content?(account)
	end	
end




