class EvaluationsController < ApplicationController
  before_action :admin_user

  def index
    @users = User.all.order("created_at DESC")
    @checks = Check.all
    checks = @checks
    @mychecks = current_user.checks
  end

  def new
    
    @appointment = Appointment.find(params[:appointment_id])
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.save
    redirect_to "/admins/#{@evaluation.appointment.user.id}"
  end

  private
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

  def evaluation_params
    params.require(:evaluation)
    .permit(
      :point1, :point2, :point3, :point4, :point5, 
      :point6, :point7, :point8, :point9, :point10,
      :point11, :point12, :point13, :point14, :point15, 
      :point16, :point17, :point18, :point19, :point20, :comment)
   .merge(user_id: current_user.id,appointment_id:params[:appointment_id])  
  end

end

