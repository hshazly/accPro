class Account < ActiveRecord::Base
  attr_accessible :balance, :name, :account_type
end
