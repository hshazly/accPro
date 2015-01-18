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




