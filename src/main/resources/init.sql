DROP TABLE IF EXISTS taco_order CASCADE;
DROP TABLE IF EXISTS taco CASCADE;
DROP TABLE IF EXISTS ingredient_ref CASCADE;
DROP TABLE IF EXISTS ingredient CASCADE;

CREATE TABLE IF NOT EXISTS taco_order
(
    id              serial primary key,
    delivery_name   varchar(50) not null,
    delivery_street varchar(50) not null,
    delivery_city   varchar(50) not null,
    delivery_state  varchar(2)  not null,
    delivery_zip    varchar(10) not null,
    cc_number       varchar(16) not null,
    cc_expiration   varchar(5)  not null,
    cc_cvv          varchar(3)  not null,
    placed_at       timestamp   not null
);

CREATE TABLE IF NOT EXISTS taco
(
    id             serial primary key,
    name           varchar(50) not null,
    taco_order     bigint      not null,
    taco_order_key bigint      not null,
    created_at     timestamp   not null,
    FOREIGN KEY (taco_order) REFERENCES taco_order (id)
);

CREATE TABLE IF NOT EXISTS ingredient
(
    id   varchar(4)  not null primary key,
    name varchar(25) not null,
    type varchar(10) not null
);

CREATE TABLE IF NOT EXISTS ingredient_ref
(
    ingredient varchar(4) not null,
    taco       bigint     not null,
    taco_key   bigint     not null,
    FOREIGN KEY (ingredient) REFERENCES ingredient (id)
);

insert into Ingredient (id, name, type)
values ('FLTO', 'Flour Tortilla', 'WRAP');
insert into Ingredient (id, name, type)
values ('COTO', 'Corn Tortilla', 'WRAP');
insert into Ingredient (id, name, type)
values ('GRBF', 'Ground Beef', 'PROTEIN');
insert into Ingredient (id, name, type)
values ('CARN', 'Carnitas', 'PROTEIN');
insert into Ingredient (id, name, type)
values ('TMTO', 'Diced Tomatoes', 'VEGGIES');
insert into Ingredient (id, name, type)
values ('LETC', 'Lettuce', 'VEGGIES');
insert into Ingredient (id, name, type)
values ('CHED', 'Cheddar', 'CHEESE');
insert into Ingredient (id, name, type)
values ('JACK', 'Monterrey Jack', 'CHEESE');
insert into Ingredient (id, name, type)
values ('SLSA', 'Salsa', 'SAUCE');
insert into Ingredient (id, name, type)
values ('SRCR', 'Sour Cream', 'SAUCE');