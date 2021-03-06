class EvaluationsController < ApplicationController
  
  protect_from_forgery :except => [:create, :update]

  def index
    @users = User.all.order("created_at DESC")
    @checks = Check.all
    checks = @checks
    @mychecks = current_user.checks
  end

  def edit
    @appointment = Appointment.find(params[:appointment_id])
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
  end

  def create
    @evaluation = Evaluation.find_or_initialize_by(appointment_id: new_evaluation_params[:appointment_id])
    if @evaluation.new_record?
      @evaluation = Evaluation.new(new_evaluation_params)
      @evaluation.save!
       redirect_to "/admins/#{@evaluation.appointment.user.id}"
    else
      render :edit
    end
  end

  def update
    @evaluation = Evaluation.find_or_initialize_by(appointment_id: evaluation_params[:appointment_id])
    if @evaluation.update(evaluation_params)
      redirect_to "/admins/#{@evaluation.appointment.user.id}"
    else
      render :edit
    end
  end

  private

  def evaluation_params
    params.require(:evaluation)
    .permit(
      :point1, :point2, :point3, :point4, :point5, 
      :point6, :point7, :point8, :point9, :point10,
      :point11, :point12, :point13, :point14, :point15, 
      :point16, :point17, :point18, :point19, :point20, :comment)
   .merge(user_id: current_user.id,appointment_id:params[:appointment_id])  
  end

  def new_evaluation_params
    params
    .permit(
      :point1, :point2, :point3, :point4, :point5, 
      :point6, :point7, :point8, :point9, :point10,
      :point11, :point12, :point13, :point14, :point15, 
      :point16, :point17, :point18, :point19, :point20, :comment)
   .merge(user_id: current_user.id,appointment_id:params[:appointment_id])  
  end



end
