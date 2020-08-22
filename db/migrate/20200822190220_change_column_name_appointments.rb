class ChangeColumnNameAppointments < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :apointment_datetime, :apointment_datetime
  end
end
