select S.SID, S.name, S.surname, 100 - E2.sscore as pscore
from student_advised_enroll S, (select E.SID, SUM(E.score) as sscore from
event_score_reduction E group by E.SID) E2
where S.SID = E2.SID AND S.TID = ?;