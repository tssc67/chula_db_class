const cfg = require('config');
const loader = require("./loader.js");
var pooler;

module.exports = exports = function(getConnection){
	pooler = getConnection;
	return module.exports;
}

exports.verifyLogin = function(type,username,password){
	return new Promise(function(resolve,reject){
		pooler(con=>{
			con.query(loader('login'),[username],(err,res)=>{
				if(res.password!=password)return resolve();
				return reject()
			})
		})
	})	
} 

exports.verifyLoginVulnerable = function(type,username,password){
	return new Promise(function(resolve,reject){
		pooler(con=>{
			con.query(`SELECT count(*) FROM teacher_login WHERE id='${username}' and password=${password};`,(err,res,fields)=>{
			});
		})
	})
}