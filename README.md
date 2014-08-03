ar-review
=========
Please model the following relationships.

This involves two many-to-many relationships and aliasing. It's representative of what you can expect to see on the Phase 2 assessment.

+ The models are doctors, users, appointments, and symptoms.
+ When a user makes an appointment with the doctor, they become a 'patient' (ex. you should be able to call doctor.patients to see the list of patients a given doctor is seeing.)
+ Appointment is the join table between doctors and patients.
+ A patient can have many symptoms.
+ A symptom can belong to many patients.

This page is the canonical source of Active Record association goodness. Would recommend referring to it often: http://guides.rubyonrails.org/association_basics.html

#### Things to try in irb

To test your associations type into console:  
    $ irb -r./hospital.rb  

+ Doctor.create
+ Doctor.first.users.create
+ Doctor.first.patients.create
+ Doctor.appointments
+ Patient.first
+ User.first.doctors
+ User.first.appointments
+ Appointment.first
+ Appointment.first.doctor
+ Appointment.first.patient
+ Appointment.first.user

What works? What doesn't? Why?  

I'm going to leave it to you to figure out the user and symptoms associations. Good luck!  

Feel free to try things out and see what you can do with active record. Sandboxing is one of my favorite ways to learn. We'll be around for the day, and feel free to ask me any questions at any time at DBC (not just about Active Record). I'm sure many of the Newts will be just as happy to help.  


I wanted to make some tests for you guys. Sorry for not getting to it. If you can get these associations, you're well on your way to being an Active Record pro.  

I will push my solution for the associations on Monday.
