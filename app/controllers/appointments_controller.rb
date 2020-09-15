class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
      if @appointment.save
        redirect_to appointment_path(@appointment)
      else
        render :new
      end
  end

  def edit
    set_appointment
  end


  def show
    set_appointment
  end

  private
  def set_appointment
    @appointment = Appointment.find_by_id(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime)
  end
end
