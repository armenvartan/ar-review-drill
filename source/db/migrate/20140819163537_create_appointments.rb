class CreateAppointments < ActiveRecord::Migration
  def change
  	create_table :appointments do |t|
  		t.references :doctor
  		t.references :user

  		t.timestamps
  	end
  end
end
