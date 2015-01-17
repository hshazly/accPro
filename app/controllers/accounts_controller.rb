class AccountsController < ApplicationController
	def show_balance
		@accounts = Account.all
	end
	
	def show
		@account = Account.find(params[:id])
	end
end
