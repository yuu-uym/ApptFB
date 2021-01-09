class AdminsController < ApplicationController
  before_action :admin_user

  def index
    @users = User.all.order("created_at DESC")
    @checks = Check.all
    checks = @checks
    @mychecks = current_user.checks
  end

  def show
    @user = User.find(params[:id])
    @appointment = Appointment.all.order(appt_date: "DESC")
    appointment = @appointment
    @appointment = current_user.appointments
    @appointment1 = Appointment.where(result_id: [nil, 1], user_id: @user.id ).order(appt_date: "DESC")
    @appointment2 = Appointment.where(result_id: 2, user_id: @user.id ).order(appt_date: "DESC")
    @appointment3 = Appointment.where(result_id: 3, user_id: @user.id ).order(appt_date: "DESC")
    @appointment4 = Appointment.where(result_id: 4, user_id: @user.id ).order(appt_date: "DESC")
  end

  private
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
