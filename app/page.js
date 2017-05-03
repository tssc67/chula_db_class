const express = require('express');
const pageRouter = express.Router();
function tableResponse(page,res,fetcher,columns,type){
    fetcher.then(data=>{
        res.render(`pages/${page}`,{
            rowData:data,
            columns,
            type
        });
    })
    .catch(err=>{
        res.end("Error");
    });
}
pageRouter
.get('/students',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    tableResponse('students',res,db.students.getStudents(req.session.username),req.session.type);
})
.get('/search',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    console.log(req.query);
    tableResponse('students',res,db.students.searchStudent(req.session.username,req.query.sid),req.session.type);
})
.get('/student',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    res.render('pages/student');
})
.get('/registration_history',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    res.render('pages/student');
})
.get('/behavior_history',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    res.render('pages/student');
})
.get('/yearly_gpa',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    res.render('pages/student');
})
.get('/core_course',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    res.render('pages/student');
})

.use((req,res)=>{
    res.end("NOT YET IMPLEMENTED;");
})
module.exports = pageRouter;
