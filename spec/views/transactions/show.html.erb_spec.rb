require 'rails_helper'

RSpec.describe "transactions/show", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :dir1 => "Dir1",
      :dir2 => "Dir2",
      :amount => 1.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dir1/)
    expect(rendered).to match(/Dir2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
  end
end
