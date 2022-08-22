-- In the person.sql file, write out the code for the following problems:

-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

-- Select all the people in the person table by height from tallest to shortest.

-- Select all the people in the person table by height from shortest to tallest.

-- Select all the people in the person table by age from oldest to youngest.

-- Select all the people in the person table older than age 20.

-- Select all the people in the person table that are exactly 18.

-- Select all the people in the person table that are less than 20 and older than 30.

-- Select all the people in the person table that are not 27 (use not equals).

-- Select all the people in the person table where their favorite color is not red.

-- Select all the people in the person table where their favorite color is not red and is not blue.

-- Select all the people in the person table where their favorite color is orange or green.

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).

CREATE TABLE person (
    id SERIAL PRIMARY KEY,
  	name VARCHAR(40),
  	age INTEGER,
  	height INTEGER,
  	city VARCHAR(40),
  	favorite_color VARCHAR(40)
);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('Ciaran', 'Green', 'Louisville', 170, 29),
	('Billy', 'Blue', 'Cincinnati', 156, 15),
    ('Amelia', 'Purple', 'Cincinnati', 145, 20),
    ('Lucius', 'Red', 'Chicago', 186, 25),
    ('Stede', 'Blue', 'Tampa', 180, 55);

SELECT * from person
order by height desc;

SELECT * from person
order by height asc;

Select * from person
where age > 20;

Select * from person
where age = 18;

Select * from person
where age < 20 or age > 30;

Select * from person
where age != 27;

Select * from person
where favorite_color != "red";

Select * from person
where favorite_color != "red" and favorite_color != "blue";

Select * from person
where favorite_color = "orange" or favorite_color = "green";

select * from person
where favorite_color IN('Blue', 'Orange', 'Green');

select * from person
where favorite_color IN('Yellow', 'Purple');