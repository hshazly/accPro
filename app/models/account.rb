class Account < ActiveRecord::Base
  attr_accessible :balance, :name, :account_type
  validates_presence_of :name
  
  def self.filter_by_account_type(type)
  	return self.find_all_by_account_type(type)
  end
  
  def self.get_account_type_balance(type)
  	accounts = self.filter_by_account_type(type)
  	balance = 0 
  	if !accounts.nil?
			accounts.each do |account|
				balance = balance + account.balance
			end
  	end
  	return balance
  end
end
