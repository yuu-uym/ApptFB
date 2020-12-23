class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index ]

  def index
    @appointments =Appointment.all
  end

  def new
    @appointment = Appointment.all.order(appt_date: "DESC")
  end

  def create
   appointment = Appointment.new(appointment_params)
    if appointment.save
      render json:{ post: appointment }
    else
       render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
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
    params.require(:appointment).permit(:company, :appt_date, :result_id, :score).merge(user_id: current_user.id)
  end

end
