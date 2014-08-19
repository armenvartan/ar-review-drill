require 'faker'
User.create(name: "Stephen Estrada")

10.times do 
	User.create(name: Faker::Name.name)
end

10.times do 
	Doctor.create(name: Faker::Name.name)
end

10.times do 
	Appointment.create(patient: User.find(rand(10)+1), doctor: Doctor.find(rand(10)+1))
end

10.times do 
	Symptom.create(ailment: Faker::Lorem.sentence, patient: User.find(rand(10)+1))
end