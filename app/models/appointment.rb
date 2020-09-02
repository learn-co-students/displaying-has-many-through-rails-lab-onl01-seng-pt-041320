class Appointment < ApplicationRecord
  belongs_to :doctor 
  belongs_to :patient

  #def appt_format
    #@appointment_datetime.strftime("%B %d, %C at %I:%M%p")
  #end
end
