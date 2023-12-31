/* 1) Look up patients name in alphabetical order */
Select * From patient
Order By name;

/* 2) Search room by size capacity ascending */
Select number, capacity 
From room
Order By  capacity;

/* 3) Search room by size capacity descending */
Select number, capacity 
From room
Order By  capacity Desc;

/* 4) Shows total amount of money the hospital received */
Select SUM(amount) 
From payment;

/* 5) Shows what patients owe in decending order */
Select invoice.amount, patient.name
From invoice
Inner Join patient On invoice.patient = patient.id;

/* 6) Find the average cost of a hospital visit */
Select AVG(amount) AS averageCost 
From invoice;

/* 7) Find out which patients owe more than the average cost */
Select name, amount
From invoice Join patient
ON patient.id = invoice.patient 
	Where amount > (
		Select AVG(amount) 
		From invoice);

/* 8) Find out which patients had surgery in the past */
Select name 
From patient Join instructions
ON patient.id = instructions.p_recieved
Where description = 'surgery';

/* 9) Find the above average prices of non-surgical related instructions */
Select fee, description
From instructions 
Where description != 'surgery'
    And fee > (
		Select AVG(amount) 
		From invoice
        Where description != 'surgery');

/* 10) Find the average prices of non-surgical related instructions */
Select AVG(fee)
From instructions 
Where description != 'surgery';

/* 11) Finds cheaper than average room/room fees */
Select number, night_fee
From room
Where night_fee > (
	Select AVG(night_fee)
    From room);

