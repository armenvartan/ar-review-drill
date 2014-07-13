class User < ActiveRecord::Base
  has_many :symptoms
  has_many :appointments
  belongs_to :doctor#, through: :appointments
end