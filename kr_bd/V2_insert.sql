INSERT INTO airport(airport_name, airport_city, airport_capacity, runway_length)  VALUES ('Аэропорт Каджехун', 'Бенин',8000,1200);
INSERT INTO airport(airport_name, airport_city, airport_capacity, runway_length)  VALUES ('Аэропорт Дахла', 'Марокко',3000,1000);
INSERT INTO airport(airport_name, airport_city, airport_capacity, runway_length)  VALUES ('Международный аэропорт Ломе–Токоин', 'Того',2000,900);


INSERT INTO aircraf(model_aircraft, maximum_flight_altitude, aircraft_personnel) VALUES ('Boeing 247',5000,3);
INSERT INTO aircraf(model_aircraft, maximum_flight_altitude, aircraft_personnel) VALUES ('Boeing 777',10000,9);
INSERT INTO aircraf(model_aircraft, maximum_flight_altitude, aircraft_personnel) VALUES ('Boeing 767',8000,8);


INSERT INTO passenger(fio, gender, contact_phone_number, baggage, nationality) VALUES ('Козлова София Владимировна', 'girl', 89858,true,'Russia');
INSERT INTO passenger(fio, gender, contact_phone_number, baggage, nationality) VALUES ('Колпакова Вероника Мироновна', 'girl', 89858,false,'Russia');
INSERT INTO passenger(fio, gender, contact_phone_number, baggage, nationality) VALUES ('Снегирев Иван Кириллович', 'men', 89930,false,'Russia');


INSERT INTO crews(fio_pilots, fio_stewardess, fio_techniques) VALUES ('Воробьев Роман Никитич','Сорокин Александр Иванович', 'Орлов Сергей Матвеевич');
INSERT INTO crews(fio_pilots, fio_stewardess, fio_techniques) VALUES ('Жуков Мирон Александрович','Панкова Эмилия Леонидовна', 'Попова Полина Львовна');


INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('324','2021-09-12','15:10:20','19:30:20','2021-09-12','04:20:00','1','2','3','2');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('342','2021-09-13','10:10:20','19:30:20','2021-09-13','07:20:00','2','1','2','1');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('312','2021-09-14','20:00:00','21:30:00','2021-09-14','01:30:00','3','1','2','1');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('425','2021-09-15','13:40:20','20:40:20','2021-09-15','07:00:00','2','1','1','1');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('451','2021-09-12','12:10:20','14:30:20','2021-09-12','02:20:00','2','3','2','2');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('327','2021-09-13','20:10:30','22:30:30','2021-09-13','02:20:00','1','3','1','2');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('754','2021-09-14','17:00:20','19:30:20','2021-09-14','02:30:00','3','2','2','1');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('123','2021-09-15','09:10:20','12:10:20','2021-09-15','03:00:00','1','2','2','2');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('129','2021-09-13','17:00:00','22:30:50','2021-09-13','05:30:50','2','1','2','1');
INSERT INTO flights(number_flights,departure_date, departure_time, time_of_arrival, date_of_arrival, flight_time,departure_airport_id, arrival_airport_id, passenger_id, crew_id) VALUES ('876','2021-09-14','08:10:20','20:10:20','2021-09-14','12:00:00','3','1','1','2');
