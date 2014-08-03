require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

# Define your migrations below:
# for example:
#
# ActiveRecord::Migration.create_table :fruits do |t|
#   t.string :name
#   t.belongs_to :bowl
# end
#
# Repeat the above template for each table you need to create
#
# end migrations
ActiveRecord::Migration.create_table :doctors do |t|
  has_many :appointments
  has_many :patients, through: :appointments, source: 'User'
end

ActiveRecord::Migration.create_table :users do |t|
  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :patient_symptoms
  has_many :symptoms, through: :patient_symptoms
end

ActiveRecord::Migration.create_table :appointments do |t|
  belongs_to :user
  belongs_to :doctor
end

ActiveRecord::Migration.create_table :symptoms do |t|
  has_many :patient_symptoms
  has_many :patients, through: :patient_symptoms
end

ActiveRecord::Migration.create_table :patient_symptoms do |t|
  belongs_to :patient
  belongs_to :symptom
end

# The following line executes the migrations. Don't delete it!
ActiveRecord::Migrator.up "db/migrate"

# Define your AR classes below:
# for example:
#
# class Fruit < ActiveRecord::Base
#   belongs_to :bowl
# end
#
# You can define multiple classes, one after another

# end classes

class Doctor < ActiveRecord::Base

end

class User < ActiveRecord::Base

end

class Appointment < ActiveRecord::Base

end

class Symptom < ActiveRecord::Base

end

class PatientSymptom < ActiveRecord::Base

end
