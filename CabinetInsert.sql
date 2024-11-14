-- Insert sample data into Medecin table
INSERT INTO Medecin (MedecinID, Nom, Prenom, Specialite, Adresse) VALUES 
(1, 'Dupont', 'Jean', 'Cardiologue', '123 Rue de la Sant�, Paris'),
(2, 'Lemoine', 'Marie', 'P�diatre', '45 Avenue des Enfants, Lyon'),
(3, 'Moreau', 'Pierre', 'G�n�raliste', '78 Rue des Champs, Marseille');

-- Insert sample data into Patient table
INSERT INTO Patient (PatientID, Nom, Prenom, DateNaissance, Adresse) VALUES 
(1, 'Martin', 'Alice', '1990-05-10', '5 Rue de Paris, Bordeaux'),
(2, 'Bernard', 'Louis', '1985-03-15', '10 Avenue de la R�publique, Lille'),
(3, 'Dubois', 'Claire', '2000-07-22', '15 Rue des Fleurs, Nice');

-- Insert sample data into Consultation table
INSERT INTO Consultation (ConsultationID, DateConsultation, Description, MedecinID, PatientID) VALUES 
(1, '2024-10-01', 'Consultation annuelle', 1, 1),
(2, '2024-10-02', 'Consultation p�diatrique', 2, 3),
(3, '2024-10-03', 'Suivi g�n�ral', 3, 2);

-- Insert sample data into Prescription table
INSERT INTO Prescription (PrescriptionID, DatePrescription, MedecinID, PatientID) VALUES 
(1, '2024-10-01', 1, 1),
(2, '2024-10-02', 2, 3),
(3, '2024-10-04', 3, 2);

-- Insert sample data into Medicament table
INSERT INTO Medicament (MedicamentID, NomMedicament, Description, Forme, DosageStandard) VALUES 
(1, 'Parac�tamol', 'Antalgique et antipyr�tique', 'Comprim�', '500 mg'),
(2, 'Ibuprof�ne', 'Anti-inflammatoire', 'Comprim�', '200 mg'),
(3, 'Amoxicilline', 'Antibiotique', 'G�lule', '500 mg'),
(4, 'C�tirizine', 'Antihistaminique', 'Comprim�', '10 mg');

-- Insert sample data into PrescriptionMedicament table
INSERT INTO PrescriptionMedicament (PrescriptionMedicamentID, PrescriptionID, MedicamentID, DosagePrescrit, Frequence, Duree) VALUES 
(1, 1, 1, '500 mg', '2 fois par jour', '5 jours'),
(2, 1, 2, '200 mg', '3 fois par jour', '7 jours'),
(3, 2, 3, '500 mg', '1 fois par jour', '10 jours'),
(4, 3, 4, '10 mg', '1 fois par jour', '5 jours');
