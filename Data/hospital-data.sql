/*	Physicians	*/			
	
INSERT INTO physician (name, phone_number, certification, expertise, address) 
VALUES ('Mark Teal', 7045557724, 327,'hair loss','123 applewood drive');
INSERT INTO physician (name, phone_number, certification, expertise, address) 
VALUES ('June Frost', 7045557788, 497,'skin','24 bubblebath ln');
INSERT INTO physician (name, phone_number, certification, expertise, address) 
VALUES ('Kaz Marshall', 6142557827, 13,'fecile matter','327 purple street');
INSERT INTO physician (name, phone_number, certification, expertise, address) 
VALUES ('Sarah Connors', 5872336457, 698,'death','626 doomsdeay drive');
INSERT INTO physician (name, phone_number, certification, expertise, address) 
VALUES ('Bruce Banner', 4458776332, 1447,'ph balances','1 angry mean street');


/*	Nurses	*/	

INSERT INTO nurse (name, phone_number, certification, address) 
VALUES ('Joy S.', 9772554457, 144, '2424 jane lane');
INSERT INTO nurse (name, phone_number, certification, address) 
VALUES ('May Dye', 9725663758, 1005, '100 where at drive');
INSERT INTO nurse (name, phone_number, certification, address) 
VALUES ('Lars Trail', 4551223557, 80075, '123 magic four street');
INSERT INTO nurse  (name, phone_number, certification, address) 
VALUES ('Lazy K.', 9804771296, 8075, '1244 kiss me kate drive');
INSERT INTO nurse  (name, phone_number, certification, address) 
VALUES ('Pot Buster', 4235978888, 777, 'heavenly drive 7 rd');


/*	Patients	*/	

INSERT INTO patient (name, address, phone_number, monitored_by) 
VALUES ('AJ CJ', '233 red cane drive', 2772554457, 1);
INSERT INTO patient (name, address, phone_number, monitored_by) 
VALUES ('OJ da Juice', 'orange peel street', 1112223333, 3);
INSERT INTO patient (name, address, phone_number, monitored_by) 
VALUES ('Denzel Fowler', '123 not my address', 7045586347, 2);
INSERT INTO patient (name, address, phone_number, monitored_by) 
VALUES ('Kris Chris', '3445 blue drive', 7045586388, 4);
INSERT INTO patient (name, address, phone_number, monitored_by) 
VALUES ('Louis Lane', '3232 blue drive', 5556668877, 5);


/*	medication	*/	

INSERT INTO medication (name, daily_dose, p_recieved, n_provided) 
VALUES ('salt', '300g', 2, 1);
INSERT INTO medication (name, daily_dose, p_recieved, n_provided) 
VALUES ('vapor rub', '2 tps', 1, 3);
INSERT INTO medication (name, daily_dose, p_recieved, n_provided) 
VALUES ('ativan', '3 pills', 4, 5);
INSERT INTO medication (name, daily_dose, p_recieved, n_provided) 
VALUES ('clarithromycin', '1 pill', 3, 2);
INSERT INTO medication (name, daily_dose, p_recieved, n_provided) 
VALUES ('cyanocobalamin', '1000mg', 5, 4);


/*	health_record	*/	

INSERT INTO health_record (patient_id, description, disease, date, status) 
VALUES (1, "bad hip", "none", "12-25-1998", "bad");
INSERT INTO health_record (patient_id, description, disease, date, status) 
VALUES (2, "lazy eye", "lazy eye disease", "1-1-2021", "ok");
INSERT INTO health_record (patient_id, description, disease, date, status) 
VALUES (4, "purple skin", "unknown", "2-17-1998", "unknown");
INSERT INTO health_record (patient_id, description, disease, date, status) 
VALUES (3, "lazy", "rich kid disease", "5-14-2014", "typical");
INSERT INTO health_record (patient_id, description, disease, date, status) 
VALUES (5, "depressed", "depressed?", "3-30-2015", "bad");


/*	instructions	*/	

INSERT INTO instructions (fee, description, date, p_ordered, p_recieved, n_recieved) 
VALUES (2578, "surgery", "3-3-2023", 1, 1, 1);
INSERT INTO instructions (fee, description, date, p_ordered, p_recieved, n_recieved) 
VALUES (2756, "surgery", "5-3-2020", 2, 2, 2);
INSERT INTO instructions (fee, description, date, p_ordered, p_recieved, n_recieved) 
VALUES (1002, "flip patient over every two hours", "3-3-2014", 3, 3, 3);
INSERT INTO instructions (fee, description, date, p_ordered, p_recieved, n_recieved) 
VALUES (36022, "take medicine", "3-13-2015", 4, 4, 4);
INSERT INTO instructions (fee, description, date, p_ordered, p_recieved, n_recieved) 
VALUES (1, "breath", "3-31-2000", 5, 5, 5);


/*	rooms	*/	

INSERT INTO room (number, night_fee, capacity, occupant) 
VALUES (207, 127, 2, 1);
INSERT INTO room (number, night_fee, capacity, occupant) 
VALUES (209, 127, 2, 3);
INSERT INTO room (number, night_fee, capacity, occupant) 
VALUES (301, 358, 4, 5);
INSERT INTO room (number, night_fee, capacity, occupant) 
VALUES (400, 475, 1, 2);
INSERT INTO room (number, night_fee, capacity, occupant) 
VALUES (405, 1279, 1, 4);


/*	pharamacy	*/	

INSERT INTO pharamacy (name) 
VALUES ('Kmart');
INSERT INTO pharamacy (name) 
VALUES ('Walgreens');
INSERT INTO pharamacy (name) 
VALUES ('Shaddy Meds');
INSERT INTO pharamacy (name) 
VALUES ('Pill-ligder');
INSERT INTO pharamacy (name) 
VALUES ('Dr. Zeds');
INSERT INTO pharamacy (name) 
VALUES ('Walmart Medical');


/*	medicine	*/	

INSERT INTO medicine (name, daily_dose, p_recieved, p_provided) 
VALUES ('Salt', '1000mg', 1, 'Kmart');
INSERT INTO medicine (name, daily_dose, p_recieved, p_provided) 
VALUES ('Pepper', '1500mg', 2, 'Pill-ligder');
INSERT INTO medicine (name, daily_dose, p_recieved, p_provided) 
VALUES ('Lime', '1000mg', 3, 'Shaddy Meds');
INSERT INTO medicine (name, daily_dose, p_recieved, p_provided) 
VALUES ('Lemon', '200mg', 4, 'Shaddy Meds');
INSERT INTO medicine (name, daily_dose, p_recieved, p_provided) 
VALUES ('Viagra', '1000mg', 5, 'Walmart Medical');


/*	payment	*/	

INSERT INTO payment (date, amount, patient) 
VALUES ('2-2-2020', 1202, 1);
INSERT INTO payment (date, amount, patient) 
VALUES ('4-2-2022', 17, 2);
INSERT INTO payment (date, amount, patient) 
VALUES ('12-2-2021', 3022, 3);
INSERT INTO payment (date, amount, patient) 
VALUES ('2-12-2010', 120, 4);
INSERT INTO payment (date, amount, patient) 
VALUES ('7-2-2000', 100001, 5);


/*	invoice	*/	

INSERT INTO invoice (amount, instructions, room_served, patient) 
VALUES (200, 1, 207, 1);
INSERT INTO invoice (amount, instructions, room_served, patient) 
VALUES (150, 2, 400, 2);
INSERT INTO invoice (amount, instructions, room_served, patient) 
VALUES (20, 3, 209, 3);
INSERT INTO invoice (amount, instructions, room_served, patient) 
VALUES (47, 4, 405, 4);
INSERT INTO invoice (amount, instructions, room_served, patient) 
VALUES (1, 5, 301, 5);


