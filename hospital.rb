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
end

ActiveRecord::Migration.create_table :users do |t|
end

ActiveRecord::Migration.create_table :appointments do |t|
end

ActiveRecord::Migration.create_table :symptoms do |t|
end

ActiveRecord::Migration.create_table :patient_symptoms do |t|
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
  has_many :appointments
  has_many :patients, through: :appointments, source: 'User'
end

class User < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :patient_symptoms
  has_many :symptoms, through: :patient_symptoms
end

class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :doctor
end

class Symptom < ActiveRecord::Base
  has_many :patient_symptoms
  has_many :patients, through: :patient_symptoms
end

class PatientSymptom < ActiveRecord::Base
  belongs_to :patient
  belongs_to :symptom
end
