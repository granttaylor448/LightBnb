INSERT INTO users (name, email, password)
VALUES ('Mike Smith', 'mikesmith@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Craig Smith', 'craigsmith@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Forest Smith', 'forestsmith@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active )
VALUES (1, 'Temple', 'description', 'somepic', 'somepic', 60, 5, 10, 15, 'Canada', 'street', 'calgary', 'AB', 'iro4332', true),
(2, 'CHEAPER Temple', 'description', 'somepic', 'somepic', 60, 5, 10, 15, 'Canada', 'street', 'calgary', 'AB', 'iro4332', true);

INSERT INTO rates (start_date, end_date, cost_per_night, property_id)
VALUES ('2018-09-11', '2018-09-26', 10000, 1),
('2018-09-11', '2018-09-26', 1, 2);

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 2, '2021-10-01', '2021-10-14');

INSERT INTO guest_reviews(guest_id, owner_id, reservation_id, rating, message)
VALUES (1, 2, 1, 5, 'Best stay Ever!'),
(2, 2, 2, 1, 'Worst stay Ever!');

INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 5, 'Best renter ever'),
(2, 2, 2, 5, 'Best renter ever');