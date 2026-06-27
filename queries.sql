-- Query 1

SELECT * from enrollments where course_title='Intro to Python';

-- Query 2 

SELECT * from enrollments where completion_percentage<10;

-- Query 3

SELECT * from enrollments where instructor is null;

-- Query 4

SELECT * from enrollments where passed=false order by completion_percentage desc limit 5;

-- Query 5

SELECT * from enrollments where (enrollment_date > '2024-12-31' and enrollment_date < '2026-01-01') order by enrollment_date desc;


-- Insert 6

INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor) VALUES
(18,  3, 'Lucia Fernandes',      'lucia.fernandes@student.edutrack.com',    5, 'Advanced Python',        'Programming', '2025-04-01', 0, FALSE,  69.99, 'Carlos Vega');

SELECT * from enrollments where id=18;
 
-- Update 7

UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor is null;

SELECT * FROM enrollments where instructor='Pending assignment';

-- Delete 8

SELECT * FROM enrollments where student_email LIKE '%@test.com';

DELETE FROM enrollments WHERE student_email LIKE '%@test.com';

-- Query 9

SELECT category, count(*) as enrollments from enrollments group by category;

-- Query 10

SELECT course_title, avg(completion_percentage) as avg_completion_percentage from enrollments group by course_title order by avg_completion_percentage asc;

-- Query 11

SELECT course_title,count(*) as enrollment from enrollments group by course_title having count(*) > 3;

-- Query 12

SELECT category,sum(monthly_fee_paid) as total_monthly_fee_paid from enrollments group by category order by total_monthly_fee_paid desc;




