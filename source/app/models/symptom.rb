class Symptom < ActiveRecord::Base
	belongs_to :patient, class_name: 'User', foreign_key: :user_id
	
end
