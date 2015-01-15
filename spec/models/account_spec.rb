require 'rails_helper'

RSpec.describe Account, :type => :model do

  let(:account) { FactoryGirl.create(:account) }

  it { should respond_to(:name) }
  it { should respond_to(:balance) }
  it { should respond_to(:type) }
  
  it { should be_valid }

  describe "ran the seed file" do
    it "should return 10 for number of accounts records" do
 	expect(Account.count).to eq(10)
    end
    
    it "should have the first Account element correct" do
        e1= Account.first
        expect(e1.name).to eq("Cash")
        expect(e1.balance).to eq(1000)
        expect(e1.type).to eq("Asset")
    end
  end

  describe "filter_by_type" do
     it "should filter by city Asset" do
        results=Account.filter_by_type(["Asset"])
        expect(results.count).to eq(4)
        expect(results.first.balance).to eq(1000)
     end

     it "should return empty array if no matches" do
        results=Account.filter_by_type("")
        expect(results.count).to eq(0)
     end

     it "should return all matches" do
        results=Account.filter_by_type(["Asset","Liability"])
        expect(results.count).to eq(6)
     end
  end

  describe "get_type_balance" do
     it "should get Asset balance" do
        results=Account.get_type_balance(["Asset"])
        expect(results).to eq(17000)
     end

     it "should work for more than one type" do
        results=Account.get_type_balance(["Asset","Expense"])
        expect(results).to eq(25000)
     end
  end

end
