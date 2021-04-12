-- Create a small script to enter 3 real pieces of data
USE posts;

INSERT INTO address(street_address, city, state, country)
VALUES
('3201 State St', 'Chicago', 'IL', 'US'),
('10 W 35th St', 'Chicago', 'IL', 'US'),
('3137 S Federal St', 'Chicago', 'IL', 'US');

INSERT INTO karma(karma)
VALUES
('4.5'),
('5.0'),
('3.0');

INSERT INTO customer (address_id, name, email, phone_number, karma_id)
VALUES
('1', 'Cristian', 'cristian@test.com', '630-555-5555', '2'),
('3', 'Grace', 'grace@test.com', '847-555-5555', '1'),
('2', 'Naveed', 'naveed@test.com', '773-555-5555', '3');