class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    # accepts_nested_attributes_for :doctor, :patient
end
