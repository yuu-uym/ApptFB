class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index ]
  before_action :get_cheak

  def index
    @appointments =Appointment.all
    @checks = Check.all
  end

  def new
    @checks = Check.all
    @appointment = Appointment.all.order(appt_date: "DESC")
    appointment = @appointment
    @appointment = current_user.appointments
    @appointment1 = Appointment.where(result_id: [nil, 1], user_id: current_user.id ).order(appt_date: "DESC")
    @appointment2 = Appointment.where(result_id: 2, user_id: current_user.id ).order(appt_date: "DESC")
    @appointment3 = Appointment.where(result_id: 3, user_id: current_user.id ).order(appt_date: "DESC")
    @appointment4 = Appointment.where(result_id: 4, user_id: current_user.id ).order(appt_date: "DESC")
  end

  def create
   appointment = Appointment.new(appointment_params)
   @checks = Check.all.to_json
    if appointment.save
      render json:{ post: appointment }
    else
       render :new
    end
  end


  def edit
    @appointment = Appointment.find(params[:id])
    redirect_to action: :new if @appointment.user_id != current_user.id 
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to new_appointment_path
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.user_id == current_user.id
       @appointment.destroy
       redirect_to action: :new
    else
      redirect_to action: :index
    end
  end

  private
  def appointment_params
    params.require(:appointment)
    .permit(:company, :appt_date, :result_id, :score, :check_id,
       :point1, :point2, :point3, :point4, :point5, 
       :point6, :point7, :point8, :point9, :point10,
       :point11, :point12, :point13, :point14, :point15, 
       :point16, :point17, :point18, :point19, :point20, :comment)
    .merge(user_id: current_user.id)
  end

  def get_cheak
    @checks = Check.all.to_json
  end

end
