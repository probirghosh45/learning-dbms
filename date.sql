-- Active: 1747421302880@@127.0.0.1@5433@update_db5

show timezone;
create table timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

insert into timeZ(ts,tsz)
values ('2022-01-01 12:00:00', '2022-01-01 12:00:00+00'),
       ('2024-01-01 12:00:00+02', '2022-01-01 12:00:00+02'),
       ('2025-01-01 12:00:00+05', '2022-01-01 12:00:00+05'),
       ('2021-01-01 12:00:00', '2021-01-01 12:00:00'),
       ('2023-01-01 12:00:00+02', '2023-01-01 12:00:00'),
       ('2026-01-01 12:00:00+05', '2025-01-01 12:00:00');

select * FROM timeZ;

SELECT now(), current_timestamp, current_time;
 SELECT CURRENT_DATE;
 SELECT now()::DATE;
 SELECT now()::TIME;

 SELECT to_char(now(),'YYYY-MM-DD HH24:MI:SS');
 SELECT to_char(now(),'YYYY-MM-DD HH12:MI:SS');
 SELECT to_char(now(),'YYYY/MM/DD HH12:MI:SS');
 SELECT to_char(now(),'DD/MM/YYYY HH12:MI:SS');
 SELECT to_char(now(),'DDth Mon YYYY HH12:MI:SS');

 SELECT CURRENT_DATE - INTERVAL '1 day';
SELECT CURRENT_DATE - INTERVAL '1 month';
SELECT CURRENT_DATE - INTERVAL '1 year';

select age(CURRENT_DATE,'1990-07-26');

SELECT * FROM students;
SELECT * , age (CURRENT_DATE ,dob) FROM students;
SELECT extract (year from '2025-05-19'::date) as year,
       extract (month from '2025-05-19'::date) as month,
       extract (day from '2025-05-19'::date) as day;


 SELECT 1::BOOLEAN; 
 SELECT 0::BOOLEAN; 
 SELECT 'n'::BOOLEAN; 


 