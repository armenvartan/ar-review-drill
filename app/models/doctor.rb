class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments
  alias_attribute :patients, :users
end