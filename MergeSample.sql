CREATE TABLE employee (
employee_id NUMBER(5),
first_name  VARCHAR2(20),
last_name   VARCHAR2(20),
dept_no     NUMBER(2),
salary      NUMBER(10));

INSERT INTO employee VALUES (1, 'Dan', 'Morgan', 10, 100000);
INSERT INTO employee VALUES (2, 'Helen', 'Lofstrom', 20, 100000);
INSERT INTO employee VALUES (3, 'Akiko', 'Toyota', 20, 50000);
INSERT INTO employee VALUES (4, 'Jackie', 'Stough', 20, 40000);
INSERT INTO employee VALUES (5, 'Richard', 'Foote', 20, 70000);
INSERT INTO employee VALUES (6, 'Joe', 'Johnson', 20, 30000);
INSERT INTO employee VALUES (7, 'Clark', 'Urling', 20, 90000);

CREATE TABLE bonuses (
employee_id NUMBER, bonus NUMBER DEFAULT 100);

INSERT INTO bonuses (employee_id) VALUES (1);
INSERT INTO bonuses (employee_id) VALUES (2);
INSERT INTO bonuses (employee_id) VALUES (4);
INSERT INTO bonuses (employee_id) VALUES (6);
INSERT INTO bonuses (employee_id) VALUES (7);
COMMIT;

SELECT * FROM employee;

SELECT * FROM bonuses;

MERGE INTO bonuses b
USING (
  SELECT employee_id, salary, dept_no
  FROM employee
  WHERE dept_no =20) e
ON (b.employee_id = e.employee_id)
WHEN MATCHED THEN
  UPDATE SET b.bonus = e.salary * 0.1
  DELETE WHERE (e.salary < 40000)
WHEN NOT MATCHED THEN
  INSERT (b.employee_id, b.bonus)
  VALUES (e.employee_id, e.salary * 0.05)
  WHERE (e.salary > 40000);

SELECT * FROM bonuses;