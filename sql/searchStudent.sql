SELECT EN.SID,EN.enroll_year,EN.name,EN.surname,EN.phone_number,EN.score,EN.GPAX,EN.Email,EN.status,E1.faculty,E2.branch,EN.DateOfBirth 
FROM student_advised_enroll EN,faculty E1,branch E2  
WHERE E1.FID = EN.FID AND E2.BID = EN.BID AND EN.tid = ? AND  EN.sid = ?;