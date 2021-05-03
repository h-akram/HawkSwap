-- Creates a small table with three values

USE posts;

CREATE TABLE address (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    country VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE karma (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    karma DOUBLE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE customer (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    address_id INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    phone_number VARCHAR(45) NOT NULL,
    karma_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (address_id) REFERENCES address(id),
    FOREIGN KEY (karma_id) REFERENCES project_karma(id)
);

CREATE TABLE chat (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    PRIMARY KEY (id)
);

CREATE TABLE chat_conversations (
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    chat_id INT NOT NULL,
    user_one INT NOT NULL,
    user_two INT NOT NULL,
    conversations TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (chat_id) REFERENCES chat(id),
    FOREIGN KEY (user_one) REFERENCES customer(id),
    FOREIGN KEY (user_two) REFERENCES customer(id)
);