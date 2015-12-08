class UsersController < ApplicationController
  before_action :admin_user

  def index
    @users = User.all
  end
  
  def new
  end

  private
    def admin_user
      redirect_to(root_url) unless admin_user?
    end
end
