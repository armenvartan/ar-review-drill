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

Please grab Kai's excellent skeleton for this exercise: https://github.com/kaiprt/Active-Record-Skeleton