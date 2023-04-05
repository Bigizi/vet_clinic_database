/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic
	
	create table animals
	(
		id int PRIMARY KEY NOT NULL,
		name varchar(50),
		date_of_birth date,
		escaped_attempts int,
		neutered boolean,
		weight_kg decimal,
		spacies varchar(50),
	)
