require 'rails_helper'

RSpec.describe Sale, :type => :model do

  let(:sale) { FactoryGirl.create(:sale) }

  it { should respond_to(:good) }
  it { should respond_to(:price) }
  it { should respond_to(:date) }
  it { should respond_to(:city) }
  
  it { should be_valid }

  describe "ran the seed file" do
    it "should return 201 for number of sales records" do
	expect(Sale.count).to eq(100)
    end
    
    it "should have the first sales element correct" do
        e1= Sale.first
        expect(e1.good).to eq("Galaxy S5")
        expect(e1.price).to eq(5000)
        expect(e1.date).to eq(Date.parse("2015-01-09"))
        expect(e1.city).to eq("Alex")
    end
  end

  describe "filter_by_city" do
     it "should filter by city Alex" do
        results=Sale.filter_by_city(["Alex"])
        expect(results.count).to eq(25)
        expect(results.first.price).to eq(5000)
     end

     it "should return empty array if no matches" do
        results=Sale.filter_by_city("")
        expect(results.count).to eq(0)
     end

     it "should return all matches" do
        results=Sale.filter_by_city(["Alex","Mansoura"])
        expect(results.count).to eq(46)
     end
  end

end
