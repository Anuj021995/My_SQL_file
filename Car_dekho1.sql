create schema cars;
select * from cars.car_dekho;
use cars;
-- READ DATA --
select * from car_dekho;
# Total cars: To get a count of total records 
select count(*) as Total_Cars from car_dekho;

#The manager asked the employee how many cars will be available in 2023?
 
select year,count(*) as Total_cars from car_dekho where year = 2023 ;

#The manager asked the employee how many cars will be available in 2020, 2021,2022 

select year, count(*) as Total_cars from car_dekho where year in (2020,2021,2022) group by year;

# Clint asked me to print the total of all cars by years. i don't see all the detaila

Select year, count(*) Total_cars from car_dekho group by year;

#Clint asked to car dealer agent How may diesel cars will be there be in 2020 ?
select year, fuel,count(*) from car_dekho where year = 2020 and fuel = 'diesel';

#Clint asked to car dealer agent How may Petrol cars will be there be in 2020 ?

select year, fuel,count(*) from car_dekho where year = 2020 and fuel = 'Petrol';

#The manager told the employee to give a print all the fuel cars(petrol,desel and CNG) come by all years
Select year, 'Diesel' as fule_type , count(*) from car_dekho where fuel ='Diesel' group by year
Union
select year, 'Petrol' as fule_type, count(*) from car_dekho where fuel ='Petrol' group by year
union
select year, 'CNG' as fule_type, count(*) from car_dekho where fuel ='cng' group by year order by year;
#we can write same query
Select Year,Fuel, count(*) as Toal_Count from car_dekho where fuel in ('CNG','Petrol','Diesel')
group by year, fuel 
order by year,fuel;

# we need to find out all cars detials between 2015 to 2023
Select * from Car_dekho where year between 2015 and 2023;

# Manager said there where more then 100 cars in a given year, which ywar had mor then 100 cars ? --

select year, count(*) from car_dekho  group by year having count(*) > 100;

#The manager instructed the employee to print a list of all fuel cars (Petrol, Diesel, and CNG) for all years where the count exceeds 100.
Select year, fuel, count(*) as Fule_Type from car_dekho
where fuel in ('Diesel','Petrol','CNG') 
group by fuel,year having count(*) > 10
order by year, Fuel;






                                                                                               