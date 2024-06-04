CREATE TABLE apartments(
    id SERIAL PRIMARY KEY,
    tenant BOOLEAN NOT NULL,
    price MONEY NOT NULL,
    landlord_name VARCHAR(20)
);

CREATE TABLE offices(
    id SERIAL PRIMARY KEY,
    bathrooms INT,
    cubicles INT,
    company VARCHAR(20)
);

CREATE TABLE companies(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL,
    location VARCHAR(20) NOT NULL,
    industry VARCHAR(20),
    employees INT
);

CREATE TABLE storefronts(
    id SERIAL PRIMARY KEY,
    kitchens BOOLEAN,
    square_footage INT,
    outdoor_seating BOOLEAN,
    company_id INT REFERENCES companies(id)
);

