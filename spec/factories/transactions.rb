FactoryGirl.define do

  factory :transaction do
    account1_id 1
    account2_id 9
    dir1 "to"
    dir2 "to"
    amount 50000
    description "adding transaction"
  end

end
