const express = require('express');
const db = require('./db/db.js');
var authentication = express.Router();
authentication
.post('/login',(req,res,next)=>{
	if(!req.session.username){
		console.log(req.body);
		if(req.body.type != "administrator" && req.body.type != "advisor"){
			return res.end("ERR");
		}
		db.admin.verifyLogin(req.body.type,req.body.username,req.body.password)
		.then(()=>{
			req.session.username = req.body.username
			req.session.type = req.body.type;
			return res.end("OK"); 
		})
		.catch(()=>{
			res.end("ERR");
		})
		return;
	}
	next();
})
.post('/login-exploit',(req,res,next)=>{
	if(!req.session.username){
		console.log(req.body);
		db.admin.verifyLoginVulnerable(req.body.type,req.body.username,req.body.password)
		.then(()=>{
			req.session.username = req.body.username
			req.session.type = req.body.type;
			return res.end("OK"); 
		})
		.catch(()=>{
			res.end("ERR");
		})
		return;
	}
	next();
})

.use((req,res,next)=>{
	if(!req.session.username){
		return res.render('login',{title:"Please login"});
	}
	next();
});
module.exports = authentication;