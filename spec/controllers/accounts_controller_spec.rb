require 'rails_helper'
require 'spec_helper'
# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AccountsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Account. As you add validations to Account, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
     {name: "Cash", balance: 5000, account_type: "Asset"}
  }

  let(:invalid_attributes) {
    {balance: 9000,account_type: "Asset"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SalesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET show_balance" do
   
    it "assigns all accounts as @accounts" do
      get :show_balance, {}, valid_session
      expect(assigns(:accounts)).to eq(Account.all)
    end
  end


  describe "GET show" do
    it "assigns the requested account as @account" do
      account = Account.create! valid_attributes
      get :show, {:id => account.to_param}, valid_session
      expect(assigns(:account)).to eq(account)
    end
  end

  describe "GET new" do
    it "assigns a new account as @account" do
      get :new, {}, valid_session
      expect(assigns(:account)).to be_a_new(Account)
    end
  end

  describe "GET edit" do
    it "assigns the requested account as @account" do
      account = Account.create! valid_attributes
      get :edit, {:id => account.to_param}, valid_session
      expect(assigns(:account)).to eq(account)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Account" do
        expect {
          post :create, {:account => valid_attributes}, valid_session
        }.to change(Account, :count).by(1)
      end

      it "assigns a newly created account as @account" do
        post :create, {:account => valid_attributes}, valid_session
        expect(assigns(:account)).to be_a(Account)
        expect(assigns(:account)).to be_persisted
      end

      it "redirects to the created account" do
        post :create, {:sale => valid_attributes}, valid_session
        expect(response).to redirect_to('/accounts')
      end
    end
  end

end
