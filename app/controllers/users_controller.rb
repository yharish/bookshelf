class UsersController < ApplicationController

  before_filter :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new   
  end

  def edit
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end
  end


  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
