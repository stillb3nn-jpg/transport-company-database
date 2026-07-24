CREATE TABLE passengers (
    id INT NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    age INT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trips (
    id INT NOT NULL AUTO_INCREMENT,
    passenger_id INT NOT NULL,
    passenger_class INT NOT NULL,
    ticket_number VARCHAR(30) NOT NULL,
    fare DECIMAL(10,2) NOT NULL,
    cabin VARCHAR(10) NULL,
    parents_children INT NOT NULL,
    siblings_spouses INT NOT NULL,
    embarkation VARCHAR(5) NOT NULL,
    survived TINYINT(1) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(id)
);
