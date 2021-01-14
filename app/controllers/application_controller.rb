class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :joined])
  end

  helper_method :def_point1
  def def_point1
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point1.to_i > @appointment.point1.to_i
      @evaluation.point1.to_i - @appointment.point1.to_i
    else 
      @appointment.point1.to_i -  @evaluation.point1.to_i
    end
  end
  end

  helper_method :def_point2
  def def_point2
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point2.to_i > @appointment.point2.to_i
      @evaluation.point2.to_i - @appointment.point2.to_i
   else 
      @appointment.point2.to_i -  @evaluation.point2.to_i
   end
  end
  end

  helper_method :def_point3
  def def_point3
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point3.to_i > @appointment.point3.to_i
      @evaluation.point3.to_i - @appointment.point3.to_i
   else 
      @appointment.point3.to_i -  @evaluation.point3.to_i
   end
  end
  end

  helper_method :def_point4
  def def_point4
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point4.to_i > @appointment.point4.to_i
      @evaluation.point4.to_i - @appointment.point4.to_i
   else 
      @appointment.point4.to_i -  @evaluation.point4.to_i
   end
  end
  end

  helper_method :def_point5
  def def_point5
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point5.to_i > @appointment.point5.to_i
      @evaluation.point5.to_i - @appointment.point5.to_i
   else 
      @appointment.point5.to_i -  @evaluation.point5.to_i
   end
  end
  end

  helper_method :def_point6
  def def_point6
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point6.to_i > @appointment.point6.to_i
      @evaluation.point6.to_i - @appointment.point6.to_i
   else 
      @appointment.point6.to_i -  @evaluation.point6.to_i
   end
  end
  end

  helper_method :def_point7
  def def_point7
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point7.to_i > @appointment.point7.to_i
      @evaluation.point7.to_i - @appointment.point7.to_i
   else 
      @appointment.point7.to_i -  @evaluation.point7.to_i
   end
  end
  end

  helper_method :def_point8
  def def_point8
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point8.to_i > @appointment.point8.to_i
      @evaluation.point8.to_i - @appointment.point8.to_i
   else 
      @appointment.point8.to_i -  @evaluation.point8.to_i
   end
  end
  end

  helper_method :def_point9
  def def_point9
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point9.to_i > @appointment.point9.to_i
      @evaluation.point9.to_i - @appointment.point9.to_i
   else 
      @appointment.point9.to_i -  @evaluation.point9.to_i
   end
  end
  end

  helper_method :def_point10
  def def_point10
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point10.to_i > @appointment.point10.to_i
      @evaluation.point10.to_i - @appointment.point10.to_i
   else 
      @appointment.point10.to_i -  @evaluation.point10.to_i
   end
  end
  end

  helper_method :def_point11
  def def_point11
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point11.to_i > @appointment.point11.to_i
      @evaluation.point11.to_i - @appointment.point11.to_i
   else 
      @appointment.point11.to_i -  @evaluation.point11.to_i
   end
  end
  end

  helper_method :def_point12
  def def_point12
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point12.to_i > @appointment.point12.to_i
      @evaluation.point12.to_i - @appointment.point12.to_i
   else 
      @appointment.point12.to_i -  @evaluation.point12.to_i
   end
  end
  end

  helper_method :def_point13
  def def_point13
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point13.to_i > @appointment.point13.to_i
      @evaluation.point13.to_i - @appointment.point13.to_i
   else 
      @appointment.point13.to_i -  @evaluation.point13.to_i
   end
  end
  end

  helper_method :def_point14
  def def_point14
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point14.to_i > @appointment.point14.to_i
      @evaluation.point14.to_i - @appointment.point14.to_i
   else 
      @appointment.point14.to_i -  @evaluation.point14.to_i
   end
  end
  end

  helper_method :def_point15
  def def_point15
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point15.to_i > @appointment.point15.to_i
      @evaluation.point15.to_i - @appointment.point15.to_i
   else 
      @appointment.point15.to_i -  @evaluation.point15.to_i
   end
  end
  end

  helper_method :def_point16
  def def_point16
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point16.to_i > @appointment.point16.to_i
      @evaluation.point16.to_i - @appointment.point16.to_i
   else 
      @appointment.point16.to_i -  @evaluation.point16.to_i
   end
  end
  end

  helper_method :def_point17
  def def_point17
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point17.to_i > @appointment.point17.to_i
      @evaluation.point17.to_i - @appointment.point17.to_i
   else 
      @appointment.point17.to_i -  @evaluation.point17.to_i
   end
  end
  end

  helper_method :def_point18
  def def_point18
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point18.to_i > @appointment.point18.to_i
      @evaluation.point18.to_i - @appointment.point18.to_i
   else 
      @appointment.point18.to_i -  @evaluation.point18.to_i
   end
  end
  end

  helper_method :def_point19
  def def_point19
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point19.to_i > @appointment.point19.to_i
      @evaluation.point19.to_i - @appointment.point19.to_i
   else 
      @appointment.point19.to_i -  @evaluation.point19.to_i
   end
  end
  end

  helper_method :def_point20
  def def_point20
    @evaluation = Evaluation.find_by(appointment_id:@appointment.id)
    @appointment = Appointment.find(params[:id])
    unless @evaluation.nil? || @appointment.nil?
    if @evaluation.point20.to_i > @appointment.point20.to_i
      @evaluation.point20.to_i - @appointment.point20.to_i
   else 
      @appointment.point20.to_i -  @evaluation.point20.to_i
   end
  end
  end

end
