-- 1. Quels sont les m�decins pr�sents dans le cabinet m�dical ?
SELECT * FROM Medecin;

-- 2. Combien de patients sont enregistr�s dans la base de donn�es ?
SELECT COUNT(*) AS NombreDePatients FROM Patient;

-- 3. Quels patients sont suivis par le m�decin avec l'ID 1 ?
SELECT DISTINCT Patient.*
FROM Patient
JOIN Consultation ON Patient.PatientID = Consultation.PatientID
WHERE Consultation.MedecinID = 1;

-- 4. Quelles sont les consultations effectu�es par le m�decin avec l'ID 2 ?
SELECT * 
FROM Consultation
WHERE MedecinID = 2;

-- 5. Quels sont les patients qui n'ont pas encore de prescription ?
SELECT Patient.*
FROM Patient
LEFT JOIN Prescription ON Patient.PatientID = Prescription.PatientID
WHERE Prescription.PatientID IS NULL;

-- 6. Quel est le nombre total de prescriptions effectu�es dans le cabinet m�dical ?
SELECT COUNT(*) AS Nombre
