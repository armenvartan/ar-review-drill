require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

# Define your migrations below:
# for example:
#
ActiveRecord::Migration.create_table :doctors do |t|
  t.string :name
  t.belongs_to :bowl
end

ActiveRecord::Migration.create_table :users do |t|
  t.string :name
  t.belongs_to :bowl
end

ActiveRecord::Migration.create_table :appointments do |t|
  t.string :name
  t.belongs_to :bowl
end

ActiveRecord::Migration.create_table :symptoms do |t|
  t.string :name
  t.belongs_to :bowl
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
  
end

class User < ActiveRecord::Base
  
end

class Appointment < ActiveRecord::Base
  
end

class Symptom < ActiveRecord::Base
  
end

#
# You can define multiple classes, one after another

# end classes
