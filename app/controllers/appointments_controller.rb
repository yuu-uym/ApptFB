class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index ]

  def index
    @appointments =Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
   @appointment = Appointment.new(appointment_params)
    if @appointment.save
       redirect_to root_path
    else
       render :new
    end
  end

  def show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:company, :appt_date, :result_id, :score).merge(user_id: current_user.id)
  end

end
