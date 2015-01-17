

NAME  = ["Cash", "Bank", "Equipment", "Accounts Receivable","Accounts Payable","Debt","Office Expenses","Project Expenses","Capital","Revenue"]
BALANCE  = [1000,5000,3000,8000,10000,7000,3000,5000,3500,4500]
TYPE  = ["Asset","Asset","Asset","Asset","Liability","Liability","Expense","Expense","Equity","Equity"]

10.times do |i|
  name = NAME[i]
  balance = BALANCE[i]
  account_type = TYPE[i]
  puts "#{name}, #{balance}, #{account_type}"
  Account.create(:name => name,:balance => balance, :account_type => account_type)
end

