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
where `departments`.name = "Dipartimento di Neuroscienze" and `degrees`.level= "Magistrale"
-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
from `teachers`
inner join `course_teacher`
on `teachers`.id = `course_teacher`.teacher_id
inner join `courses`
on `course_teacher`.course_id = `courses`.id
where `teachers`.id = 44

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome
select `students`.surname,`students`.name, `degrees`.name, `departments`.name
from `students`
inner join `degrees`
on `students`.degree_id = `degrees`.id
inner join `departments`
on `degrees`.department_id = `departments`.id

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

select `degrees`.name, `courses`.name,`teachers`.*
from `degrees`
inner join `courses`
on `degrees`.id = `courses`.degree_id
inner join `course_teacher`
on `courses`.id = `course_teacher`.course_id
inner join `teachers`
on `course_teacher`.teacher_id = `teachers`.id
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
select `teachers`.name,`teachers`.surname,`teachers`.email
from `departments`
inner join`degrees`
on `departments`.id = `degrees`.department_id
inner join `courses`
on `degrees`.id = `courses`.degree_id
inner join `course_teacher`
on `courses`.id = `course_teacher`.course_id
inner join `teachers`
on `course_teacher`.teacher_id = `teachers`.id
where `departments`.name = "Dipartimento di Matematica"


















SELECT `exams`.*, `courses`.name, `courses`.cfu
FROM `exams`
INNER JOIN `courses`
ON `exams`.course_id = `courses`.id
INNER JOIN `degrees`
ON `courses`.degree_id = `degrees`.id
WHERE `degrees`.name = "Corso di Laurea Magistrale in Fisica"
AND `courses`.year = 1