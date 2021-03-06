require "rails_helper"
require 'spec_helper'

RSpec.describe AccountsController, :type => :routing do
  describe "routing" do

    it "routes to #home_page" do
      expect(:get => "/accounts").to route_to("accounts#home_page")
    end

    it "routes to #show_balance" do
      expect(:get => "/accounts/show_balance").to route_to("accounts#show_balance")
    end

    it "routes to #new" do
      expect(:get => "/accounts/new").to route_to("accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/accounts/1").to route_to("accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/accounts/1/edit").to route_to("accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/accounts").to route_to("accounts#create")
    end

    it "routes to #update" do
      expect(:put => "/accounts/1").to route_to("accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/accounts/1").to route_to("accounts#destroy", :id => "1")
    end

  end
end
