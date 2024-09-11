select name as student, (select ROUND(AVG(grade), 2) from grades) as grade
from grades
join students on grades.student_id == students.id
ORDER BY grade asc
group by student.id;
