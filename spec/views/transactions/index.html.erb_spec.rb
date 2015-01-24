require 'rails_helper'

RSpec.describe "transactions/index", :type => :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :dir1 => "Dir1",
        :dir2 => "Dir2",
        :amount => 1.5,
        :description => "MyText"
      ),
      Transaction.create!(
        :dir1 => "Dir1",
        :dir2 => "Dir2",
        :amount => 1.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => "Dir1".to_s, :count => 2
    assert_select "tr>td", :text => "Dir2".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
