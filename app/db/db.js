const cfg = require('config');
const mysql = require('mysql');
var pool  = mysql.createPool(cfg.get('db'));
function getConnection(){
	return new Promise(function(resolve,reject){
		pool.getConnection(function(err,conn){
			if(err)return reject(err);
			return resolve(conn);
		});
	});
}
exports.admin = require('./admin.js')(getConnection);
exports.students = require('./students.js')(getConnection);	

// exports.owner = require('./owner')(getConnection);
// exports.cat = require('./cat')(getConnection);
// exports.booking = require('./booking')(getConnection);