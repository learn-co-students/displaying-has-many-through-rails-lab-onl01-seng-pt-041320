class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def scheduled
    appointment_datetime.gregorian
  end
  
end
