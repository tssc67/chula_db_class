const loader = require('./loader.js');
module.exports = exports = function(getConnection){
	pooler = getConnection;
	return module.exports;
}

exports.getStudents = function(tid){
    return new Promise(function(resolve,reject){
        pooler().then(con=>{
            con.query(loader('studentOfAdvisor'),[tid],(err,res,fields)=>{
                con.release();
                if(err)return reject(err);
                var arr = [];  
                res.forEach(row=>{
                    var rowData = [];
                    Object.keys(row).forEach(key=>{
                        rowData.push(row[key]);
                    })
                    arr.push(rowData);
                })
                resolve(arr);
            })
        })
    })
}
exports.searchStudent = function(tid,sid){
    return new Promise(function(resolve,reject){
        pooler().then(con=>{
            con.query(loader('searchStudent'),[tid,sid],(err,res,fields)=>{
                con.release();
                if(err)return reject(err);
                var arr = [];  
                res.forEach(row=>{
                    var rowData = [];
                    Object.keys(row).forEach(key=>{
                        rowData.push(row[key]);
                    })
                    arr.push(rowData);
                })
                resolve(arr);
            })
        })
    })
}