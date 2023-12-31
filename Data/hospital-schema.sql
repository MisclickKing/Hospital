CREATE DATABASE IF NOT EXISTS hospital;

CREATE TABLE IF NOT EXISTS physician (
  id       			INT          PRIMARY KEY AUTO_INCREMENT,
  name				VARCHAR(45),
  phone_number		DOUBLE,
  certification		INT,
  expertise			VARCHAR(100),
  address			VARCHAR(100)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS nurse (
  id		       	INT          PRIMARY KEY AUTO_INCREMENT,
  name				VARCHAR(45),
  phone_number		DOUBLE,
  certification		INT,
  address			VARCHAR(100)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS patient (
  id       	INT          PRIMARY KEY AUTO_INCREMENT,
  name				VARCHAR(45),
  address			VARCHAR(100), 
  phone_number		DOUBLE,
  monitored_by		INT,
  
  CONSTRAINT fk_patient_physician
  FOREIGN KEY (monitored_by) REFERENCES physician (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS medication (
  name				VARCHAR(80),
  daily_dose		VARCHAR(45),
  p_recieved		INT,
  n_provided		INT,
  
  CONSTRAINT fk_medication_patient
  FOREIGN KEY (p_recieved) REFERENCES patient (id),
  CONSTRAINT fk_medication_nurse
  FOREIGN KEY (n_provided) REFERENCES nurse (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS health_record (
  id       			INT          PRIMARY KEY AUTO_INCREMENT,
  patient_id		INT,
  description		VARCHAR(150),
  disease			VARCHAR(100),
  date				VARCHAR(20),
  status			VARCHAR(200),
  
  CONSTRAINT fk_health_record_patient
  FOREIGN KEY (patient_id) REFERENCES patient (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS instructions (
  code		       	INT          PRIMARY KEY AUTO_INCREMENT,
  fee				INT,
  description		VARCHAR(150),
  date				VARCHAR(20),
  p_ordered			INT,
  p_recieved		INT,
  n_recieved		INT,
  
  CONSTRAINT fk_instructions_physician
  FOREIGN KEY (p_ordered) REFERENCES physician (id),
  CONSTRAINT fk_instructions_patient
  FOREIGN KEY (p_recieved) REFERENCES patient (id),
  CONSTRAINT fk_instructions_nurse
  FOREIGN KEY (n_recieved) REFERENCES nurse (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS room (
  number		    INT          PRIMARY KEY AUTO_INCREMENT,
  night_fee			INT,
  capacity			INT,
  occupant			INT,
  
  CONSTRAINT fk_room_patient
  FOREIGN KEY (occupant) REFERENCES patient (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS pharamacy (
  name				VARCHAR(50)	  PRIMARY KEY
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS medicine (
  name				VARCHAR(80),
  daily_dose		VARCHAR(45),
  p_recieved		INT,
  p_provided		VARCHAR(50),
  
  CONSTRAINT fk_medicine_patient
  FOREIGN KEY (p_recieved) REFERENCES patient (id),
  CONSTRAINT fk_medicine_pharamacy
  FOREIGN KEY (p_provided) REFERENCES pharamacy (name)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS payment (
  date				VARCHAR(20),
  amount			INT,
  patient			INT,
  
  CONSTRAINT fk_payment_patient
  FOREIGN KEY (patient) REFERENCES patient (id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS invoice (
  amount			INT,
  instructions		INT,
  room_served		INT,
  patient			INT,
  
  CONSTRAINT fk_invoice_instructions
  FOREIGN KEY (instructions) REFERENCES instructions (code),
  CONSTRAINT fk_invoice_room
  FOREIGN KEY (room_served) REFERENCES room (number),
  CONSTRAINT fk_invoice_patient
  FOREIGN KEY (patient) REFERENCES patient (id)
) ENGINE = InnoDB;