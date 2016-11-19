class UsersController < ApplicationController

	 def index
    @users = User.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email])
    
    @user.save
    redirect_to "/users/#{@user.id}"

  end

  def show
    @user = User.find_by(id: params[:id])

    unless @user
    	render "user_error"
    	
    end

  end

  def destroy
    User.find_by(id: params[:id]).destroy
    redirect_to "/users"
  end
	
	
end
