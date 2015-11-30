class UsersController < ApplicationController
  # before_action :admin_user, only: [:index]

  def index
    @users = User.all
  end
  
  def new
  end

  private
    def admin_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless admin_user?(@user)
    end
end
