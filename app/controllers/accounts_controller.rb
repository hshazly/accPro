class AccountsController < ApplicationController

	def index
		@accounts = Account.all
	end

	def home_page 
	end
	
	def dashboard
	end
	
	
	def show_balance
		@accounts = Account.all
	end
	
	def show
		@account = Account.find(params[:id])
	end
	
	def new 
		@account = Account.new
	end
	
	def create 
		@account = Account.new(params[:account])
		@account.save
		redirect_to @account
	end
	
	def edit 
		@account = Account.find(params[:id])
	end
	
	def update 
		@account = Account.find(params[:id])
		@account.update_attributes(params[:account])
		redirect_to @account
	end
end
