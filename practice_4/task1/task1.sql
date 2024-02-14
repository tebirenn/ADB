CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY
);

CREATE TABLE patient (
    patient_id INT PRIMARY KEY,
    doctor_id INT,
    name VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255),
    date_of_birth DATE,
    age INT,
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
);

DELIMITER $$
CREATE TRIGGER calculate_age_trigger BEFORE INSERT ON patient
FOR EACH ROW
BEGIN
    SET NEW.age = YEAR(CURDATE()) - YEAR(NEW.date_of_birth);
END$$
DELIMITER ;
# Использовал триггер чтобы с каждый новый запись в таблицу patient записывался с автоматическим age
