module SessionsHelper
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def admin_user?(user)
    return user.admin == true
  end
  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
