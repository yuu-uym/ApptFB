class AdminsController < ApplicationController
  before_action :admin_user
  
  def index
    @users = User.all.order("created_at DESC")
    @checks = Check.all
    checks = @checks
    @mychecks = current_user.checks
  end

  private
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
