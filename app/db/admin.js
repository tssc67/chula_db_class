const cfg = require('config');
const loader = require("./loader.js");
var pooler;

module.exports = exports = function(getConnection){
	pooler = getConnection;
	return module.exports;
}

exports.verifyLogin = function(type,username,password){
	return new Promise(function(resolve,reject){
		return pooler().then(con=>{
			con.query(loader('login'),[username],(err,res,fields)=>{
				con.release();
				if(err)reject(err);
				if(res.length == 0 )return reject();
				if(res[0].password!=password)return reject();
				return resolve();
			})
		})
	})	
} 

exports.verifyLoginVulnerable = function(type,username,password){
	return new Promise(function(resolve,reject){
		return pooler().then(con=>{
			con.query(`SELECT count(*) FROM teacher_login WHERE id='${username}' and password='${password}';`,(err,res,fields)=>{
				con.release();
				if(err)return reject();
				if(res[0]['count(*)'])return resolve();
				reject();
			});
		})
	})
}