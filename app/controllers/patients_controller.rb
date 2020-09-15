class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def edit
  end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by_id(params[:id])
  end
end
