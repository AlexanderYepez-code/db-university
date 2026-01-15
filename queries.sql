-- . Selezionare tutti gli studenti nati nel 1990 (160)
SELECT COUNT(*)
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;
-- Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT COUNT(*)
FROM `courses`
WHERE `cfu` > "10"
-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE `date_of_birth` < "1996-01-14"
ORDER BY `date_of_birth` DESC;
select COUNT(*)
from `students`;
WHERE YEAR(NOW()) - YEAR(`date_of_birth`) < 30;

-- correzione
SELECT *,  TIMESTAMPDIFF(YEAR, `date_of_birth`,CURDATE()) AS `age`
FROM `students`
-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT *
FROM `courses`
WHERE `period` = "I semestre"
AND `year` = 1;
-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT COUNT(*)
FROM `exams`
WHERE `date` = "2020-06-20"
AND `hour`> '14:00:00';
-- Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM `degrees`
WHERE `level` ="magistrale"
-- Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*)
FROM `departments`
-- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL

-- BONUS
SELECT YEAR(`enrolment_date`), COUNT(`id`)
FROM `students`
group by(`enrolment_date`)


SELECT `office_address`,COUNT(`id`)
FROM `teachers`
WHERE `phone` IS NULL
group by `office_address`

SELECT `department_id`, COUNT(*) AS `degrees_number`
FROM `degrees`
GROUP BY `department_id`
HAVING `degrees_number` < 5