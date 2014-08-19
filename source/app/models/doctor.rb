class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments, source: :patient
  has_many :appointments
end
