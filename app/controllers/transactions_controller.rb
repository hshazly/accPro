class TransactionsController < ApplicationController
  before_filter :set_transaction, only: [:show]

  respond_to :html

  def index
    @transactions = Transaction.all
  end

  def show
    respond_with(@transaction)
  end

  def new
  	@all_accounts = []
  	Account.all.each do |account|
  		@all_accounts << account.name
  	end
    @transaction = Transaction.new
    respond_with(@transaction)
  end

  def edit
  end

  def create
  	params[:transaction][:account1] = Account.find_by_name(params[:transaction][:account1])
  	params[:transaction][:account2] = Account.find_by_name(params[:transaction][:account2])  	 
    @transaction = Transaction.new(params[:transaction])
    if @transaction.save
    	respond_with(@transaction)
    else 
    	redirect_to new_transaction_path
    end
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end
end
