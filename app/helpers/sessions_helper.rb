module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end


#   getter method
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def sign_out
    session[:user_id] = nil
    self.current_user = nil
  end

  def current_user?(user)
    user == current_user
  end

  def deny_access
    redirect_to signin_path, :notice => "Plese sign in to access this page."
  end

end
