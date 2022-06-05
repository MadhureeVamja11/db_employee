# Create employee table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  employee_id bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  months int(8) unsigned DEFAULT 0,
  salary bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (employee_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Insert employee data
INSERT INTO employees (employee_id, `name`, months, salary) 
VALUES 
    (12228, 'Rose', 15, 1968),
    (33645, 'Angela', 1, 3443),
    (45692, 'Frank', 17, 1608),
    (56118, 'Patrik', 7, 1345),
    (59725, 'Lisa', 11, 2330),
    (74197, 'Kimberly', 16, 4372),
    (78454, 'Bonnie', 8, 1771),
    (83565, 'Michael', 6, 2017),
    (98607, 'Todd', 5, 3396),
    (99989, 'Joe', 9, 3573);