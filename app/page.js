const express = require('express');
const pageRouter = express.Router();
function tableResponse(page,res,fetcher,type){
    fetcher().then(data=>{
        res.render(`pages/${page}`,{
            rowData:data,
            type
        });
    })
}
pageRouter
.get('/students',(req,res)=>{
    if(req.session.type != "advisor")  return res.end("BYE");
    tableResponse('students',res,db.students.getStudents,req.session.type);
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

// .get('/daily',(req,res)=>
//     tableResponse('daily',res,db.daily.getDailyReport)
// )
// .get('/ownerinfo',(req,res)=>
//     tableResponse('ownerinfo',res,db.owner.listOwners)
// )
// .get('/catinfo',(req,res)=>
//     tableResponse('catinfo',res,db.cat.listCats)
// )
// .get('/booking',(req,res)=>
//     tableResponse('booking',res,db.booking.listBookings)
// )
// .get('/registerowner',(req,res)=>{
//     res.render('pages/registerowner');
// })
// .get('/registercat',(req,res)=>{
//     res.render('pages/registercat');
// })
.use((req,res)=>{
    res.end("NOT YET IMPLEMENTED;");
})
module.exports = pageRouter;
