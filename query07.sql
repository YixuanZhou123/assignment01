/*
    How many trips started on one day and ended on a different day?

    Your result should have one column named trip_year, one column named
    trip_quarter, and one column named num_trips.
*/

-- Enter your SQL query here
select 
    '2021' as trip_year,
    'Q3' as trip_quarter,
    count(*) as num_trips
from indego.trips_2021_q3
where date(start_time)<>date(end_time)

union ALL

select
    '2022' as trip_year,
    'Q3' as trip_quarter,
    count(*) as num_trips
from indego.trips_2022_q3
where date(start_time) <> date(end_time)

select 
    '2021' as trip_year,
    'Q3' as trip_quarter,
    count(*) as num_trips
from indego.trips_2021_q3
where extract(day from start_time)<>extract(day from end_time)

union ALL

select
    '2022' as trip_year,
    'Q3' as trip_quarter,
    count(*) as num_trips
from indego.trips_2022_q3
where date(start_time) <> date(end_time)

/*

    Hint 1: when you cast a TIMESTAMP to a DATE the time component of the value is simply stripped off

    Hint 2: Years, quarters, and other parts of DATEs or TIMESTAMPs can be retrieved from a TIMESTAMP using the
    [EXTRACT](https://www.postgresql.org/docs/12/functions-datetime.html#FUNCTIONS-DATETIME-EXTRACT)
    function.
*/
