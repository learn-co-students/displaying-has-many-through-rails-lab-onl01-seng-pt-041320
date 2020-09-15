class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
      if @doctor.save
        redirect_to doctor_path(@doctor)
      else
        render :new
      end
  end

  def edit
    set_doctor
  end


  def index
    @doctors = Doctor.all
  end

  def show
    set_doctor
  end

  private
  def set_doctor
    @doctor = Doctor.find_by_id(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
