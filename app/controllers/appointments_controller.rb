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

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
    redirect_to action: :new if @appointment.user_id != current_user.id 
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
    params.require(:appointment).permit(:company, :appt_date, :result_id, :score).merge(user_id: current_user.id, check_id: params[:check_id])
  end

  def get_cheak
    @checks = Check.all.to_json
  end

end
