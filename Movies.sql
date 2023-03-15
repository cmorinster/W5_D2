CREATE TABLE customer(

customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL, --pretend this was in my ERD
address VARCHAR(100), 
movie_pass boolean DEFAULT FALSE
);

CREATE TABLE movie(

movie_ID SERIAL PRIMARY KEY, 
Title VARCHAR(50) NOT NULL,
Rating VARCHAR(25) NOT NULL
);


CREATE TABLE theater(

theater_ID SERIAL PRIMARY KEY,
theater_name VARCHAR(50) NOT NULL

);

CREATE TABLE tickets(
	ticket_ID SERIAL PRIMARY KEY,
	price NUMERIC (5,2) NOT NULL,
	customer_ID INTEGER NOT NULL,
	FOREIGN KEY(customer_ID) REFERENCES customer(customer_ID),
	movie_ID INTEGER NOT NULL,
	FOREIGN KEY(movie_ID) REFERENCES movie(movie_ID),
	theater_ID INTEGER NOT NULL,
	FOREIGN KEY(theater_ID) REFERENCES theater(theater_ID)
	

);

