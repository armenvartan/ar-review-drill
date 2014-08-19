class Appointment < ActiveRecord::Base
	belongs_to :patient, class_name: 'User', foreign_key: :user_id
	belongs_to :doctor
end
