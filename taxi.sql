psql postgres
CREATE DATABASE kurut_taxi;
\q
psql kurut_taxi
CREATE TABLE car (mark varchar(255), model varchar(255), fuel varchar (255), engine_volume varchar(255), transmission varchar(255), year varchar(255), color varchar(255), id bigint PRIMARY KEY);
CREATE TABLE driver (name varchar(255), last_name varchar(255), birthday varchar(255), driving_ex integer, gender varchar(7), car bigint REFERENCES car(id);
CREATE TABLE operator (name varchar(255), last_name varchar(255), birthday varchar(255), gender varchar(7));
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('BMW', 'I3', 'Электричество', '21,6 кВт*ч', 'Автомат', 2013, 'black', 1);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('BMW', 'I8', 'Бензин', '231 литров', 'Автомат', 2013, 'grey', 2);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('BMW', 'X3', 'Бензин', '190 литров', 'Автомат', 2006, 'black', 3);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('BMW', 'M8', 'Бензин', '600 литров', 'Автомат', 2018, 'blue', 4);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('BMW', 'X7', 'Бензин', '326 литров', 'Автомат', 2019, 'black', 5);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Mercedes', 'AMG GT', 'Бензин', '116 литров', 'Автомат', 2017, 'red', 6);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Mercedes', 'A SEDAN', 'Бензин', '476 литров', 'Автомат', 2015, 'white', 7);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Mercedes', 'A CLASS', 'Бензин', '116 литров', 'Автомат', 2004, 'grey', 8);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Mercedes', 'E CLASS', 'Бензин', '150 литров', 'Автомат', 1995, 'green', 9);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Mercedes', 'CITAN', 'Дизель', '75 литров', 'Автомат', 2012, 'black', 10);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Toyota', '4RUNNER', 'Дизель', '270 литров', 'Автомат', 2013, 'white', 11);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Toyota', 'AVALON', 'Бензин', '208 литров', 'Автомат', 2012, 'red', 12);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Toyota', 'CAMRY', 'Бензин', '149 литров', 'Автомат', 2001, 'white', 13);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Toyota', 'IQ', 'Бензин', '98 литров', 'Автомат', 2009, 'blue', 14);
INSERT INTO car (mark, model, fuel, engine_volume, transmission, year, color, id) VALUES ('Toyota', 'VENZA', 'Дизель', '181 литров', 'Автомат', 2012, 'grey', 15);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Alexander', 'Kushtov', '12-01-1990', 7, 'male', 1);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Alexandra', 'Masslow', '21-12-1985', 12, 'female', 1);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Johnny', 'Rider', '21-10-1999', 5, 'male', 1);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Kira', 'Bowser', '01-01-1998', 3, 'male', 2);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Lola', 'Richie', '07-22-2000', 1, 'female', 2);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Kathrine', 'Richie', '07-22-1995', 4, 'female', 2);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Lola', 'West', '37-06-1992', 4, 'female', 2);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Marie', 'Noona', '17-06-2001', 1, 'female', 8);
INSERT INTO driver (name, last_name, birthday, driving_ex, gender, car) VALUES ('Coby', 'Fisher', '22-08-1998', 3, 'male', 9);
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Emmie', 'Wottson', '14-11-1998', 'female');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Emmily', 'Clark', '12-02-1996', 'female');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Lory', 'Loud', '12-02-1996', 'female');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Lincoln', 'Cruse', '31-01-1995', 'male');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Isaac', 'Newton', '14-02-1997', 'male');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Kamila', 'Shepard', '08-06-1999', 'female');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Mark', 'Zipper', '06-11-1993', 'male');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Marko', 'White', '28-02-1990', 'male');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Odin', 'Thomas', '03-12-1998', 'male');
INSERT INTO operator (name, last_name, birthday, gender) VALUES ('Lily', 'Yohannes', '31-12-200', 'female');
SELECT * FROM car WHERE mark = 'Toyota' AND model = 'CAMRY' ORDER BY year DESC;
SELECT DISTINCT name FROM operator ORDER BY name DESC LIMIT 10;
UPDATE car SET mark = 'Mersus' WHERE mark = 'Mercesed';
DELETE FROM operator WHERE name = 'Azamat' AND last_name = 'Azamatov';
SELECT * FROM driver WHERE driving_ex > 10 AND gender = 'female';
SELECT AVG(driving_ex) AS DrivingAvg FROM driver ;

SELECT COUNT(*) FROM car WHERE mark = 'Mersus';
SELECT COUNT(*) FROM car WHERE mark = 'BMW';
SELECT COUNT(*) FROM car WHERE mark = 'Toyota';
SELECT driver.name, car.mark FROM car INNER JOIN driver ON driver.car=driver.car ORDER BY mark DESC;
























