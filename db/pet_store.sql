DROP TABLE pets;
DROP TABLE pet_stores;

CREATE TABLE pet_stores (
  id serial4 primary key,
  name VARCHAR(255),
  address VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE pets (
  id serial4 primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  store_id int8 references pet_stores(id)
);