create table tree_type
(
  name_en character varying(30),
  name_tr character varying(30),
  CONSTRAINT tree_types_pkey PRIMARY KEY (name_en)
)

insert into tree_type(name_en, name_tr) values
('oak', 'meşe'),
('pine', 'çam') 

create extension postgis

CREATE TABLE trees
(
  t_type character varying(30), 
  height real,
  id serial,
  loc geometry('point', 4326),
  observation_time timestamp,
  CONSTRAINT trees_pkey PRIMARY KEY (id)
)

create table regions
(
  region_id serial,
  responsible character varying(30),
  region_geom geometry('polygon', 4326),
  CONSTRAINT regions_pkey PRIMARY KEY (region_id)
)