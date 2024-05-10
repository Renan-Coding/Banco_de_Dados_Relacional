CREATE TABLE users_infos (
 id BIGINT AUTO_INCREMENT,
 name VARCHAR(100),
 birth_date DATE NOT NULL DEFAULT NULL,
 registration_site_date DATE NOT NULL DEFAULT NULL,
 country VARCHAR(50),
 state VARCHAR(100),
 city VARCHAR(100),
 neighborhood VARCHAR(100),
 education VARCHAR(50),
 family_constitution VARCHAR(50),
 family_income VARCHAR(20),
 housing_type VARCHAR(30),
 residents_number INT,
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE had_dogs (
 id BIGINT AUTO_INCREMENT,
 price INT,
 first_dog BIT DEFAULT 0,
 why_bought TEXT,
 pet_characteristics TEXT,
 pet_age INT DEFAULT 0,
 decision_of_who INT,
 most_liked TEXT,
 didnt_like TEXT,
 when_stopped_living DATE,
 id_dogs INT,
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE has_dogs (
 id BIGINT AUTO_INCREMENT,
 dog_age INT,
 why_you_have TEXT,
 what_pleased TEXT,
 didnt_keep_dog TEXT,
 say_about_dog TEXT,
 neutered BIT DEFAULT 0,
 involved_people VARCHAR(100),
 times_veterinarian_last_year INT,
 id_dogs INT,
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE want_dogs (
 id BIGINT AUTO_INCREMENT,
 physical_characteristics VARCHAR(150),
 personality TEXT,
 dog_name VARCHAR(50),
 why_would_have TEXT,
 when_year INT,
 monthly_expenses INT,
 buy_adopt VARCHAR(20),
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE dont_want_dogs (
 id BIGINT AUTO_INCREMENT,
 why_not TEXT,
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE current_dog (
 id BIGINT AUTO_INCREMENT,
 name VARCHAR(30),
 time_with INT,
 breed VARCHAR(30),
 origin VARCHAR(100),
 paid BIT,
 age_arrived INT,
 personality TEXT,
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE contact_users (
 id BIGINT AUTO_INCREMENT,
 full_name VARCHAR(100),
 phone_number VARCHAR(30),
 social_name VARCHAR(100),
 id_users INT,
 PRIMARY KEY (id)
);

CREATE TABLE users (
 id BIGINT AUTO_INCREMENT,
 email VARCHAR(100),
 password VARCHAR(50),
 admin BIT DEFAULT 0,
 PRIMARY KEY (id)
);

ALTER TABLE users_infos ADD CONSTRAINT users_infos_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE had_dogs ADD CONSTRAINT had_dogs_id_dogs_fkey FOREIGN KEY (id_dogs) REFERENCES current_dog(id);
ALTER TABLE had_dogs ADD CONSTRAINT had_dogs_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE has_dogs ADD CONSTRAINT has_dogs_id_dogs_fkey FOREIGN KEY (id_dogs) REFERENCES current_dog(id);
ALTER TABLE has_dogs ADD CONSTRAINT has_dogs_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE want_dogs ADD CONSTRAINT want_dogs_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE dont_want_dogs ADD CONSTRAINT dont_want_dogs_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE current_dog ADD CONSTRAINT current_dog_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE contact_users ADD CONSTRAINT contact_users_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
