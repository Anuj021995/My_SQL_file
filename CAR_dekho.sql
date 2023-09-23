create schema cars;
select * from cars.car_dekho;
use cars;
-- READ DATA --
select * from car_dekho;
-- Total cars: To get a count of total records --
select count(*) from car_dekho;
-- The manager asked the employee how many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023 ;
-- The manager asked the employee how many cars will be available in 2020, 2021,2022 --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; # 7
-- GROUP BY --
select count(*) from car_dekho where year in ( 2020,2021,2022, 2015) group by year;

-- Clint asked me to print the total of all cars by years. i don't see all the detaila --
select  year, count(*) from car_dekho group by year ;
-- Clint asked to car dealer agent How may diesel cars will be there be in 2020 ? --
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel'; # 20
-- Claint requested a car dealer agent how may petrol car will there be in 2020 --

select count(*) from car_dekho where year = 2020 and fuel = 'petrol';

-- Manager told the employee to give a print all the fule cars (petrol, disel and CNG) come by all years    / --

SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;

-- Manager said there where more then 100 cars in a given year, which ywar had mor then 100 cars ? --

select year, count(*) from car_dekho  group by year having count(*) > 100;
select year, count(*) from car_dekho  group by year having count(*) < 100;

-- Manager said to the employee All cars count details between 2015 and 2023; we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- Manager said to the employee all cars detail between 2015 tp 2023 we need complete lists --

select * from car_dekho where year between 2015 and 2023;






