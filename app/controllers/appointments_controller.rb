class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find_by_id(params[:id])
    @doctor = Doctor.find_by_id(params[:id])
    @patient = Patient.find_by_id(params[:id]) 
  end
  
end


 