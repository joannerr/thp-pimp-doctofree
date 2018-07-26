require 'faker'

# #Création des villes
10.times do
	City.create(name: Faker::Address.city)
end

# # # #Creations des patients
20.times do 
	Patient.create(first_name: Faker::Cat.name, last_name: Faker::Color.color_name, city_id: City.all.sample.id)
end

# # #Creation des docteurs
10.times do
	Doctor.create!(first_name: Faker::Coffee.variety, last_name: Faker::Coffee.intensifier, postal_code: Faker::Company.french_siren_number, city_id: City.all.sample.id)
end

# # #Creation des appointments
10.times do
	docto = Doctor.all.sample
	Appointment.create(date: Faker::Date.forward(23), doctor_id: docto.id, patient_id: Patient.where(city_id: docto.city_id), city_id: docto.city_id)
end

# # #Création des spécialités 
5.times do
	Speciality.create(name: Faker::Address.state)
end

# # #Alimentation du tableau join Docteurs-Specialités
10.times do |i|
	Doctor.find(i = rand(1..10)).specialities << Speciality.find(i = rand(1..5))
end