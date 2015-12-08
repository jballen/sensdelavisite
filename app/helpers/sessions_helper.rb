module SessionsHelper
  # Returns the current logged-in user (if any).
  def current_user
    return @current_user ||= User.find_by(id: session[:user_id])
  end

  def admin_user?
    return current_user && current_user.admin == true
  end
  # Returns true if the given user is the current user.
  def current_user?(user)
    return user == current_user
  end

  def current_user_or_admin?(user)
    @user = User.find(params[user])
    return current_user?(user) || admin_user?(user)
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    return !current_user.nil?
  end
end
