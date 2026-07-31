USE transport_company; 
CREATE TABLE passengers (
    id INT NOT NULL AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    age INT,
    PRIMARY KEY (id)
);

CREATE TABLE trips (
    id INT NOT NULL AUTO_INCREMENT,
    passenger_id INT NOT NULL,
    passenger_class INT NOT NULL,
    ticket_number VARCHAR(30) NOT NULL,
    fare DECIMAL(10,2) NOT NULL,
    cabin VARCHAR(20),
    parents_children INT NOT NULL,
    siblings_spouses INT NOT NULL,
    embarkation CHAR(1) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(id)
);

CREATE TABLE survivals (
    id INT NOT NULL AUTO_INCREMENT,
    passenger_id INT NOT NULL,
    survived BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(id)
);