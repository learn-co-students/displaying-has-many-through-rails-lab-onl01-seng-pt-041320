class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def scheduled
        self.appointment.appointment_datetime.gregorian
    end

end
