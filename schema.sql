/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic
	
	create table animals
	(
		id SERIAL PRIMARY KEY,
		name varchar(50),
		date_of_birth date,
		escaped_attempts int,
		neutered boolean,
		weight_kg decimal,
	)

	ALTER TABLE animals ADD species varchar(255);

	/* DAY THREE*/

CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	full_name varchar(255),
	age int
)

CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name varchar(255)
);

ALTER TABLE animals 
	DROP COLUMN species,

ALTER TABLE animals
    ADD COLUMN species_id int,
	ADD FOREIGN KEY (species_id) REFERENCES species (id),
	ADD COLUMN owner_id int,
	ADD FOREIGN KEY (owner_id) REFERENCES owners (id);
