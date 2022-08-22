-- In the artist.sql file, write out the code for the following problems:

-- Add 3 new artists to the artist table. (It already exists.)

-- Select 10 artists in reverse alphabetical order.

-- Select 5 artists in alphabetical order.

-- Select all artists that start with the word ‘Black’.

-- Select all artists that contain the word ‘Black’.

insert into artist (name)
values  ('Lil Nas X'),
		('Lil Wayne'),
        ('Lil John');

select name from artist 
order by name desc
limit 10 ;

select name from artist 
order by name asc
limit 5 ;

select name from artist 
where name LIKE 'Black%';

select name from artist 
where name like '%Black%';

