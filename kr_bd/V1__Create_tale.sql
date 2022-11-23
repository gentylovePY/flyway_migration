CREATE TABLE airport(
     id serial primary key,
     airport_name varchar(45),
     airport_city varchar(45),
     airport_capacity int,
     runway_length int
);
CREATE TABLE crews(
    id serial primary key,
    fio_pilots varchar(80),
    fio_stewardess varchar(80),
    fio_techniques varchar(80)
);

CREATE TABLE aircraf(
    id serial primary key ,
    model_aircraft varchar(45),
    maximum_flight_altitude int,
    aircraft_personnel int

);
CREATE TABLE passenger(
    id serial primary key,
    fio varchar(80),
    gender varchar(20),
    contact_phone_number int,
    baggage boolean,
    nationality varchar(45)
);

CREATE TABLE flights(
    id serial primary key,
    number_flights varchar(45),
    departure_date date,
    departure_time time,
    time_of_arrival time,
    date_of_arrival date,
    flight_time time,
    departure_airport_id int REFERENCES airport(id),
    arrival_airport_id int REFERENCES airport(id),
    passenger_id int REFERENCES passenger(id),
    crew_id int REFERENCES crews(id)
);