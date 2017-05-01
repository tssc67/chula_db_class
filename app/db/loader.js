const fs = require('fs');
var sql = {};
exports.get = function(sqlName){
    if(!sql[sqlName])
    return sql[sqlName] = fs.readFileSync(`sql/${sqlName}.sql`);
}