require 'rails_helper'
require 'spec_helper'

RSpec.describe Transaction, :type => :model do

  let(:transaction) { FactoryGirl.create(:transaction) }

  it { expect respond_to(:account1_id) }
  it { expect respond_to(:account2_id) }
  it { expect respond_to(:dir1) }
  it { expect respond_to(:dir2) }
  it { expect respond_to(:amount) }
  it { expect respond_to(:description) }
  
  it { expect be_valid }

  describe "ran the seed file" do
    
    it "should return 3 for number of transaction records" do
 	expect(Transaction.count).to eq(3)
    end
    
    it "should have the first Transaction element correct" do
        e1= Transaction.first
        expect(e1.account1_id).to eq(1)
        expect(e1.account2_id).to eq(9)
        expect(e1.dir1).to eq("to")
        expect(e1.dir2).to eq("to")
        expect(e1.amount).to eq(50000.0)
        expect(e1.description).to eq("first seed")
    end
  end

  describe "validate_transaction" do
     it "should return true when the transaction is valid" do
        account1 = Account.create(name: "Capital",account_type: "Equity",balance:0)
        account2 = Account.create(name: "Bank",account_type: "Asset",balance:0)
        valid_transaction = Transaction.new(account1_id: account1.id,account2_id: account2.id,dir1:"to",dir2:"to",amount:50000, description: "Valid test")
        result = valid_transaction.validate_transaction
        expect(result).to eq(true)
     end


     it "should return false when the transaction is invalid" do
        account1 = Account.create(name: "Capital",account_type: "Equity",balance:0)
        account2 = Account.create(name: "Bank",account_type: "Asset",balance:0)
        invalid_transaction = Transaction.new(account1_id: account1.id,account2_id: account2.id,dir1:"from",dir2:"to",amount:50000.0, description: "Invalid test")
        result = invalid_transaction.validate_transaction
        expect(result).to eq(false)
     end

  end

  describe "make_transaction" do
     it "should call validate_transaction" do
        transaction = Transaction.new
        transaction.should_receive(:validate_transaction)
        transaction.make_transaction
     end
     it "should edit the balances in the right way" do
        account1 = Account.create(name: "Capital1",account_type: "Equity",balance:0)
        account2 = Account.create(name: "Bank1",account_type: "Asset",balance:0)
        expect { Transaction.create(account1_id: account1.id,account2_id: account2.id,dir1:"to",dir2:"to",amount: 50000.0, description: "adding transaction") }.to change {Account.find(account1.id).balance}.from(0).to(50000.0)
        Transaction.create(account1_id: account1.id,account2_id: account2.id,dir1:"to",dir2:"to",amount: 50000.0, description: "adding transaction")
	account2 = Account.find(account2.id)
       expect(account2.balance).to eq(100000.0) 

     end
  end


end
