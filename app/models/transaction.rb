class Transaction < ActiveRecord::Base
  attr_accessible :amount, :description, :dir1, :dir2, :account1_id, :account2_id
  belongs_to :account1, :class_name => Account , :foreign_key => 'account1_id'
  belongs_to :account2, :class_name => Account , :foreign_key => 'account2_id'
end
