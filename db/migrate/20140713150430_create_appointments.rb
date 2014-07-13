class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.references :user
      t.references :doctor
      t.timestamps
    end
  end
end