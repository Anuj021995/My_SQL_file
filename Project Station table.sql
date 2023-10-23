create database project;
use project;
create table station(
id  int,
city varchar (100),
state varchar (100),
lat_N int,
long_W int
);
-- READ DATA --
select * from station;
-- Query a list of CITY and STATE from the STATION table. The STATION table is described as follows --
select city, state from station;

 /* Query a list of CITY names from STATION for cities that have an even ID number. 
 Print the results in any order, but exclude duplicates from the answer. 
 The STATION table is described as follows: */
 
select distinct city from station where id%2 =0 ;

/* Find the difference between the total number of CITY entries in the table and the number of
distinct CITY entries in the table */

select (count(city) - count(distinct city)) 
as "cityCount - DistinctCityCount" from station;
/*  Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically. */
(select city, length(city) as length from station order by length(city) asc,city 
asc limit 1)
union
(select city, length(city) as length from station order by length(city) 
desc,city asc limit 1);
-- and --
select city, length (city) from station 
order by length (city), city limit 1;

select city, length(city) from station 
order by length(city)desc, city limit 1;


/*  Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
cannot contain duplicates.
Input Format */

select distinct city from station
 where left(city, 1) in ('a','e','i','o','u');
-- or -- 
select distinct city from station where 
(city like 'a%'or city like  'e%'or city like  'i%' or city like  'o%' or city like 'U%') ;

 /* Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
contain duplicates.
Input Format */
select distinct city from station where 
(city like '%a'or city like  '%e'or city like  '%i' or city like  '%u' or city like '%o') ;
 -- or --
 select distinct city from station where right(city,1) in ('a','e','i','o','u');
 
 /* . Query the list of CITY names from STATION that do not start with vowels. Your result cannot
contain duplicates. */

select distinct city from station where left(city,1) not in  ('a','e','i','o','u');
-- or 
select distinct city from station where 
not (city like 'a%'or city like  'e%'or city like  'i%' or city like  'o%' or city like 'U%') ;
/*  Query the list of CITY names from STATION that do not end with vowels. Your result cannot
contain duplicates.
 */
 select distinct city from station where right(city, 1) not in ('a','e','i','o','u');
 -- or --
select distinct city from station where 
not (city like '%a'or city like  '%e'or city like  '%i' or city like  '%u' or city like '%o') ;

/*  Query the list of CITY names from STATION that either do not start with vowels or do not end
with vowels. Your result cannot contain duplicates. */

select distinct city from station 
where (left(city,1) not in ('a','e','i','o','u')) or (right(city,1) not in ('a','e','i','o','u')) ;









 