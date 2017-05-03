const fs = require('fs');
var sql = {};
module.exports = function(sqlName){
    if(!sql[sqlName])
    return sql[sqlName] = fs.readFileSync(`${process.cwd()}/sql/${sqlName}.sql`,'utf8');
    return sql[sqlName];
}