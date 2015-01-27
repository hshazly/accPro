Given(/^the following transactions exist:$/) do |table|
	table.hashes.each do |transaction|
    	Transaction.create(transaction)
	end
end


