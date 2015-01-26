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
    @transaction = Transaction.new
    respond_with(@transaction)
  end

  def edit
  end

  def create
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
