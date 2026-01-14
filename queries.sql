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
