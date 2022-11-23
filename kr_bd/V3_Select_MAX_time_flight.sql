
select number_flights
from flights
where flight_time =
      (select max(flight_time)  from flights)