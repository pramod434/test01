class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def index

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'signup'
    end
  end

end
