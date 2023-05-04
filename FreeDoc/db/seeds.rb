# Création de quelques villes
City.create(name: "Paris")
City.create(name: "Marseille")
City.create(name: "Lyon")

# Création de quelques spécialités
Specialty.create(name: "Dermatologue")
Specialty.create(name: "Cardiologue")
Specialty.create(name: "Gynécologude")

# Création de quelques docteurs
Doctor.create(first_name: "Jean", last_name: "Dupont", zip_code: "75001", city_id: 1)
Doctor.create(first_name: "Sophie", last_name: "Martin", zip_code: "75002", city_id: 1)
Doctor.create(first_name: "Luc", last_name: "Bernard", zip_code: "13001", city_id: 2)
Doctor.create(first_name: "Marie", last_name: "Rousseau", zip_code: "69001", city_id: 3)

# Ajout des spécialités pour les docteurs
Doctor.first.specialties << Specialty.first
Doctor.first.specialties << Specialty.last
Doctor.last.specialties << Specialty.last

# Création de quelques patients
Patient.create(first_name: "Paul", last_name: "Durand")
Patient.create(first_name: "Julie", last_name: "Lefebvre")
Patient.create(first_name: "Antoine", last_name: "Leclerc")
Patient.create(first_name: "Emilie", last_name: "Moreau")

# Création de quelques rendez-vous
Appointment.create(date: DateTime.now, doctor_id: 1, patient_id: 1)
Appointment.create(date: DateTime.now, doctor_id: 2, patient_id: 2)
Appointment.create(date: DateTime.now, doctor_id: 3, patient_id: 3)
Appointment.create(date: DateTime.now, doctor_id: 4, patient_id: 4)