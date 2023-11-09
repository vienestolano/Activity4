CREATE DATABASE veterinary;

CREATE TABLE owners( 
    ownerid INT PRIMARY KEY, 
    ofirstname VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL, 
    phone VARCHAR(15) NOT NULL,
    olastname VARCHAR(50) NOT NULL, 
    address VARCHAR(15) NOT NULL, 
    email VARCHAR(100) NOT NULL );

CREATE TABLE animals(
   animalid INT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   species VARCHAR(50) NOT NULL,
   breed VARCHAR(50) NOT NULL,
   dateofbirth DATE,
   gender VARCHAR(10) NOT NULL,
   color VARCHAR(50) NOT NULL,
   ownerid INT,foreign key (ownerid) references owners(ownerid));

   CREATE TABLE Appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES Animals(animalid)
);

CREATE TABLE Doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices(
   invoiceid INT PRIMARY KEY,
   paymentdate TIME,
   totalamount NUMERIC(10,2) NOT NULL,
   appointid INT,
   foreign key (appointid) references appointments(appointid));

CREATE TABLE MedicalRecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES Animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);
