require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

# Define your migrations below:
# for example:
#
ActiveRecord::Migration.create_table :doctors do |t|
  t.string :name

end

ActiveRecord::Migration.create_table :users do |t|
	t.string :name

end

ActiveRecord::Migration.create_table :appointments do |t|
  t.belongs_to :user
  t.belongs_to :doctor
end

ActiveRecord::Migration.create_table :symptoms do |t|
	t.belongs_to :user
	t.string :symptom
end
#
# Repeat the above template for each table you need to create
#
# end migrations


# The following line executes the migrations. Don't delete it!
ActiveRecord::Migrator.up "db/migrate"

# Define your AR classes below:
# for example:
#
class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments, source: :patient #source could be user
  has_many :appointments
end

class User < ActiveRecord::Base
	has_many :symptoms
	has_many :doctors, through: :appointments
	has_many :appointments
end

class Appointment < ActiveRecord::Base
  belongs_to :patient, class_name: 'User', foreign_key: :user_id
  belongs_to :doctor
end

class Symptom < ActiveRecord::Base
  belongs_to :patient, class_name: 'User', foreign_key: :user_id
  
end



#
# You can define multiple classes, one after another

# end classes
