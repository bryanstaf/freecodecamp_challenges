
create table galaxy (
  galaxy_id serial primary key, 
  name varchar(40) unique,
  age int,
  distance int not null,
  volume numeric not null,
  visible boolean,
  description text
  );


create table star (
  star_id serial primary key, 
  name varchar(40) unique,
  age int,
  distance int not null,
  volume numeric not null,
  visible boolean,
  galaxy_id int references galaxy(galaxy_id),
  description text
  );



create table planet (
  planet_id serial primary key, 
  name varchar(40) unique,
  age int,
  distance int not null,
  volume numeric not null,
  visible boolean,
  star_id int references star(star_id),
  description text
  );


create table moon (
  moon_id serial primary key, 
  name varchar(40) unique,
  age int,
  distance int not null,
  volume numeric not null,
  visible boolean,
  planet_id int references planet(planet_id),
  mainelement varchar(50),
  description text
);



create table asteroid (
  asteroid_id serial primary key,
  name varchar(40) unique,
  age int,
  distance int not null,
  volume numeric not null,
  description text
);









insert into galaxy (
  name,
  age,
  distance,
  volume,
  visible,
  description
)

values 

('galaxy_1', 1000, 1000, 1000, true, 'description 1'), 
('galaxy_2', 1000, 1000, 1000, true, 'description 1'),
('galaxy_3', 1000, 1000, 1000, true, 'description 1'),
('galaxy_4', 1000, 1000, 1000, true, 'description 1'),
('galaxy_5', 1000, 1000, 1000, true, 'description 1'),
('galaxy_6', 1000, 1000, 1000, true, 'description 1');


insert into star (
  name,
  age,
  distance,
  volume,
  visible,
  galaxy_id,
  description
)

values 

('star_1', 1000, 1000, 1000, true, 1, 'description 1'),
('star_2', 1000, 1000, 1000, true, 2, 'description 1'),
('star_3', 1000, 1000, 1000, true, 3, 'description 1'),
('star_4', 1000, 1000, 1000, true, 4, 'description 1'),
('star_5', 1000, 1000, 1000, true, 5, 'description 1'),
('star_6', 1000, 1000, 1000, true, 6, 'description 1');



insert into planet (
  name,
  age,
  distance,
  volume,
  visible,
  star_id,
  description
)

values

('planet_1', 1000, 1000, 1000, true, 1, 'description 1'),
('planet_2', 1000, 1000, 1000, true, 2, 'description 2'),
('planet_3', 1000, 1000, 1000, true, 3, 'description 3'),
('planet_4', 1000, 1000, 1000, true, 4, 'description 4'),
('planet_5', 1000, 1000, 1000, true, 5, 'description 5'),
('planet_6', 1000, 1000, 1000, true, 6, 'description 7'),
('planet_7', 1000, 1000, 1000, true, 6, 'description 8'),
('planet_8', 1000, 1000, 1000, true, 6, 'description 9'),
('planet_9', 1000, 1000, 1000, true, 1, 'description 10'),
('planet_10', 1000, 1000, 1000, true, 2, 'description 11'),
('planet_11', 1000, 1000, 1000, true, 3, 'description 12'),
('planet_12', 1000, 1000, 1000, true, 4, 'description 14'),
('planet_13', 1000, 1000, 1000, true, 5, 'description 15'),
('planet_14', 1000, 1000, 1000, true, 6, 'description 16'),
('planet_15', 1000, 1000, 1000, true, 6, 'description 17'),
('planet_16', 1000, 1000, 1000, true, 6, 'description 18'),
('planet_17', 1000, 1000, 1000, true, 6, 'description 19'),
('planet_18', 1000, 1000, 1000, true, 6, 'description 20');



insert into moon (
  name,
  age,
  distance,
  volume,
  visible,
  planet_id,
  mainelement,
  description
)

values 

('moon_1', 1000, 1000, 1000, true, 1, 'main_element', 'description'),
('moon_2', 1000, 1000, 1000, true, 2, 'main_element', 'description'),
('moon_3', 1000, 1000, 1000, true, 3, 'main_element', 'description'),
('moon_4', 1000, 1000, 1000, true, 4, 'main_element', 'description'),
('moon_5', 1000, 1000, 1000, true, 5, 'main_element', 'description'),
('moon_6', 1000, 1000, 1000, true, 6, 'main_element', 'description'),
('moon_7', 1000, 1000, 1000, true, 1, 'main_element', 'description'),
('moon_8', 1000, 1000, 1000, true, 2, 'main_element', 'description'),
('moon_9', 1000, 1000, 1000, true, 3, 'main_element', 'description'),
('moon_10', 1000, 1000, 1000, true, 4, 'main_element', 'description'),
('moon_11', 1000, 1000, 1000, true, 5, 'main_element', 'description'),
('moon_12', 1000, 1000, 1000, true, 6, 'main_element', 'description'),
('moon_13', 1000, 1000, 1000, true, 1, 'main_element', 'description'),
('moon_14', 1000, 1000, 1000, true, 2, 'main_element', 'description'),
('moon_15', 1000, 1000, 1000, true, 3, 'main_element', 'description'),
('moon_16', 1000, 1000, 1000, true, 4, 'main_element', 'description'),
('moon_17', 1000, 1000, 1000, true, 5, 'main_element', 'description'),
('moon_18', 1000, 1000, 1000, true, 6, 'main_element', 'description'),
('moon_19', 1000, 1000, 1000, true, 1, 'main_element', 'description'),
('moon_20', 1000, 1000, 1000, true, 2, 'main_element', 'description');



insert into asteroid (
  name,
  age,
  distance,
  volume,
  description
)

values

('asteroid_1', 10000, 10000, 10000, 'description 1'),
('asteroid_2', 10000, 10000, 10000, 'description 2'),
('asteroid_3', 10000, 10000, 10000, 'description 3'),
('asteroid_4', 10000, 10000, 10000, 'description 4'),
('asteroid_5', 10000, 10000, 10000, 'description 5'),
('asteroid_6', 10000, 10000, 10000, 'description 6');



