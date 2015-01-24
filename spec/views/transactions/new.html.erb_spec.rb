require 'rails_helper'

RSpec.describe "transactions/new", :type => :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :dir1 => "MyString",
      :dir2 => "MyString",
      :amount => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input#transaction_dir1[name=?]", "transaction[dir1]"

      assert_select "input#transaction_dir2[name=?]", "transaction[dir2]"

      assert_select "input#transaction_amount[name=?]", "transaction[amount]"

      assert_select "textarea#transaction_description[name=?]", "transaction[description]"
    end
  end
end
