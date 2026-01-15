-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
Select `students`.name, `students`.surname,`degrees`.name
From `students`
inner join `degrees`
on `students`.degree_id =`degrees`.id
where `degrees`.name = "Corso di Laurea in Economia"

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select `degrees`.name,`departments`.name as "name_of_department"
from `degrees`
inner join `departments`
on `degrees`.department_id = `departments`.id
where `departments`.name = "Dipartimento di Neuroscienze"
-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
from `teachers`
inner join `course_teacher`
on `teachers`.id = `course_teacher`.teacher_id
inner join `courses`
on `course_teacher`.course_id = `courses`.id
where `teachers`.id = 44

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome



















SELECT `exams`.*, `courses`.name, `courses`.cfu
FROM `exams`
INNER JOIN `courses`
ON `exams`.course_id = `courses`.id
INNER JOIN `degrees`
ON `courses`.degree_id = `degrees`.id
WHERE `degrees`.name = "Corso di Laurea Magistrale in Fisica"
AND `courses`.year = 1