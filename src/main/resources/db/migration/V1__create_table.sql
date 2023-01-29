CREATE TABLE category(
    id SERIAL PRIMARY KEY,
    category_name varchar(30)
);

CREATE TABLE product(
    id SERIAL PRIMARY KEY,
    ko_name varchar(50) NOT NULL,
    en_name varchar(50) NOT NULL,
    category_id INT NOT NULL REFERENCES category(id),
    description VARCHAR(300),
    kcal INT,
    salt INT,
    sugar INT,
    fat INT,
    protein INT,
    caffeine INT,
    img_url VARCHAR(200)
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(20) NOT NULL UNIQUE,
    user_pw VARCHAR(30) NOT NULL,
    name VARCHAR(10) NOT NULL,
    birth INT(8) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PHONT_NUMBER VARCHAR(11) NOT NULL;
);

CREATE  TABLE allergy_properties(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE product_allergy(
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES product(id),
    allergy_id INT REFERENCES allergy_properties(id)
);

CREATE TABLE tag_properties(
    id SERIAL primary key,
    name VARCHAR(50)
);

CREATE TABLE product_tag(
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES product(id),
    tag_id INT REFERENCES tag_properties(id)
);