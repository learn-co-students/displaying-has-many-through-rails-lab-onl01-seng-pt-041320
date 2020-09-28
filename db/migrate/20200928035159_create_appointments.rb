class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient_id
      t.integer :doctor_id
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :doctor, foreign_key: true

      t.timestamps null: false
    end
  end
end
