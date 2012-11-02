class AccountsController < ApplicationController
  def index
    @accounts = Account.all
    
    respond_to do |format|
      format.html
      format.xml {render :xml => @accounts }
    end
  end

  def new
    @account = Account.new

  end

  def create
    @account = Account.new(params[:account])
    
    if @account.save
      redirect_to @account, :notice => "User was successfully created."
    else
      render :action => :new
    end
  end

  def show
    @account = Account.find(params[:id])
    
  end

  def edit
    @account = User.find(params[:id])
  end

  def update
    @account = User.find(params[:id])
    if @account.update_attributes(params[:account])
      redirect_to @account, :notice => 'Account was created'
    else
      render :action => :edit
    end
  end

  def destroy
    @account = @Account.find(params[:id])
    @account.destroy

    redirect_to accounts_url
  end
end
