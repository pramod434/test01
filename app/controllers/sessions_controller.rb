class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flashr[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  #   this destroys the session hers with all credentials
  end
end