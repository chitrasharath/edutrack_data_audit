# EduTrack — Q3 Database Audit Report

## Query 1 — Enrollments in 'Intro to Python'

Result: 5 enrollments found

| student_name | student_email | completion_percentage |
|---|---|---|
| Emily Watson | emily.watson@student.edutrack.com | 85 |
| Klaus Weber | klaus.weber@student.edutrack.com | 92 |
| Marco Rossi | marco.rossi@student.edutrack.com | 88 |
| James Miller | james.miller@test.com | 30 |
| Priya Sharma | priya.sharma@student.edutrack.com | 55 |

## Query 2 — Potential dropouts (completion < 10%)

Result: 4 students identified

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 5 | 3 | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2 | Web Design Basics | Design | 2024-06-20 | 5 | false | 39.99 | Carlos Vega |
| 6 | 3 | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4 | Digital Marketing 101 | Marketing | 2024-07-01 | 3 | false | 29.99 | Lucia Prades |
| 10 | 5 | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-10-11 | 0 | false | 44.99 | null |
| 11 | 6 | Pierre Dubois | pierre.dubois@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-11-05 | 0 | false | 44.99 | null |

## Query 3 — Enrollments with NULL instructor

Result: 2 students identified

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 10 | 5 | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-10-11 | 0 | false | 44.99 | null |
| 11 | 6 | Pierre Dubois | pierre.dubois@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-11-05 | 0 | false | 44.99 | null |

## Query 4 — Top 5 highest completion (not yet passed)

Result: Range from 30%-60%

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 2 | 1 | Emily Watson | emily.watson@student.edutrack.com | 2 | Web Design Basics | Design | 2024-04-15 | 60 | false | 39.99 | Carlos Vega |
| 15 | 7 | Priya Sharma | priya.sharma@student.edutrack.com | 1 | Intro to Python | Programming | 2025-01-10 | 55 | false | 49.99 | Marta López |
| 9 | 5 | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 3 | Data Analysis with SQL | Data | 2024-09-03 | 45 | false | 59.99 | Marta López |
| 17 | 1 | Emily Watson | emily.watson@student.edutrack.com | 5 | Advanced Python | Programming | 2025-03-05 | 40 | false | 69.99 | Carlos Vega |
| 13 | 8 | James Miller | james.miller@test.com | 1 | Intro to Python | Programming | 2024-05-22 | 30 | false | 49.99 | Marta López |

## Query 5 — Enrollments in the last year (2025)

Result: 3 enrollments found

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 17 | 1 | Emily Watson | emily.watson@student.edutrack.com | 5 | Advanced Python | Programming | 2025-03-05 | 40 | false | 69.99 | Carlos Vega |
| 16 | 6 | Pierre Dubois | pierre.dubois@student.edutrack.com | 3 | Data Analysis with SQL | Data | 2025-02-20 | 20 | false | 59.99 | Marta López |
| 15 | 7 | Priya Sharma | priya.sharma@student.edutrack.com | 1 | Intro to Python | Programming | 2025-01-10 | 55 | false | 49.99 | Marta López |

## Insert 6 — Missing enrollment record

Result: 1 record inserted

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 18 | 3 | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5 | Advanced Python | Programming | 2025-04-01 | 0 | false | 69.99 | Carlos Vega |

## Update 7 — NULL instructors set to 'Pending assignment'

Result: 2 records updated

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 10 | 5 | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-10-11 | 0 | false | 44.99 | Pending assignment |
| 11 | 6 | Pierre Dubois | pierre.dubois@student.edutrack.com | 6 | UI/UX Fundamentals | Design | 2024-11-05 | 0 | false | 44.99 | Pending assignment |

## Delete 8 — Test account enrollments removed

Result: 2 records deleted

| id | student_id | student_name | student_email | course_id | course_title | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 13 | 8 | James Miller | james.miller@test.com | 1 | Intro to Python | Programming | 2024-05-22 | 30 | false | 49.99 | Marta López |
| 14 | 9 | Alex Chen | alex.chen@test.com | 2 | Web Design Basics | Design | 2024-06-30 | 10 | false | 39.99 | Carlos Vega |

## Query 9 — Enrollments by category

Result: Programming has highest enrollment

| category | enrollments |
|---|---|
| Marketing | 2 |
| Programming | 7 |
| Design | 4 |
| Data | 3 |

## Query 10 — Average completion by course title (lowest to highest)

Result: Intro to Python has highest average completion

| course_title | avg_completion_percentage |
|---|---|
| UI/UX Fundamentals | 0.00 |
| Web Design Basics | 32.50 |
| Digital Marketing 101 | 36.50 |
| Advanced Python | 45.00 |
| Data Analysis with SQL | 47.67 |
| Intro to Python | 80.00 |

## Query 11 — Courses with more than 3 enrollments

Result: Intro to Python course has the most enrollments

| course_title | enrollment |
|---|---|
| Intro to Python | 4 |

## Query 12 — Total revenue by category (highest to lowest)

Result: Programming has highest revenue

| category | total_monthly_fee_paid |
|---|---|
| Programming | 409.93 |
| Data | 179.97 |
| Design | 169.96 |
| Marketing | 59.98 |

## Summary

- Marketing has the lowest enrollments and revenue.
- UI/UX Fundamentals has 0% completion which may mean that students are not engaged in completing this course, so review course content.
- Students with high completions are not passing the course.
