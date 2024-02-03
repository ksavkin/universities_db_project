-- Using transaction when filling a db

start transaction;
INSERT INTO cities 
(id, name, average_living_cost, state_id)
VALUES (31, 'Kansas City', 2900, 1),
(32, 'Atlanta', 3300, 32),
(1, 'Omaha', 2700, 33);
rollback;
