--문1
SELECT department_name AS "학과 명", category AS "계열"
FROM tb_department;

-- 문2
SELECT department_name || '의 정원은 ' || capacity || '명 입니다.' AS "학과별 정원"
FROM tb_department;

-- 문3
SELECT student_name
FROM tb_student
WHERE student_no IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

-- 문 4
SELECT department_name, category
FROM tb_department
WHERE capacity BETWEEN 20 AND 30;

-- 문 5
SELECT professor_name
FROM tb_professor
WHERE department_no IS NULL;

--문6
SELECT *
FROM tb_student
WHERE department_no IS NULL;

-- 문 7
SELECT class_no
FROM tb_class
WHERE preattending_class_no IS NOT NULL;

--문 8
SELECT DISTINCT category
FROM tb_department;

-- 문 9
SELECT student_no, student_name, student_ssn
FROM tb_student
WHERE EXTRACT(YEAR FROM entrance_date) = 2002
  AND student_address LIKE '%전주%'
  AND absence_yn = 'N';