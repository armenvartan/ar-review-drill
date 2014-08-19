class User < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :symptoms
end
