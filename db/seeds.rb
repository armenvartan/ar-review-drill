require 'faker'

Doctor.create :name => 'Doctor Name'
5.times do
  Doctor.create :name => Faker::Name.name
end

Patient.create :name => 'Patient Name'
5.times do
  Patient.create :name => Faker::Name.name
end