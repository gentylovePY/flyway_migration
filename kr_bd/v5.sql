SELECT passenger.fio,passenger.id, sum(flights.flight_time)
FROM passenger JOIN flights ON passenger.id = flights.passenger_id
GROUP BY passenger.id, passenger.fio, flights.passenger_id
ORDER BY fio desc limit 1;

SELECT passenger.fio,passenger.id, sum(flights.flight_time)
FROM passenger JOIN flights ON passenger.id = flights.passenger_id
GROUP BY passenger.id, passenger.fio, flights.passenger_id
ORDER BY fio asc limit 1;