Then(/^I should see add account$/) do
   assert page.body =~ /(.*)Add account(.*)/m
end

Then(/^I should see show balance$/) do
  assert page.body =~ /(.*)Show balance(.*)/m
end

Then(/^I should see manage transactions$/) do
	assert page.body =~ /(.*)Manage transactions(.*)/m
end


Then(/^I should see all the accounts$/) do
    if page.respond_to? :should	
	    page.should have_content(Account.all)
	else
	    assert page.has_content?(Account.all)
   	end
end

Then(/^I should see all the balances$/) do
  if page.respond_to? :should
    page.should have_content(Balance.all)
  else
    assert page.has_content?(Balance.all)
  end

end



