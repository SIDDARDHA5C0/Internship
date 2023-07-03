create database health;
use health;
create table patient (patientid int primary key, name varchar(50), date_of_birth date,contact int);
desc patient;
create table medical_history(patientid int primary key, diagnoses varchar(50),treatments varchar(50),
surgeries varchar(50),medications varchar(50),foreign key(patientid) references patient(patientid));
desc medical_history;
create table lab_results(patientid int primary key,blood_tests varchar(50),urine_tests varchar(50),
imaging_tests varchar(50),foreign key(patientid) references patient(patientid));
desc lab_results;
create table prescription (patientid int primary key,medication_name varchar(50),dosage varchar(50),
frequency varchar(50),foreign key(patientid) references patient(patientid));
desc prescription;
create table outcome(patientid int primary key, readmission_rates int,medication_adherence varchar(50),
foreign key(patientid) references patient(patientid));
desc outcome;
