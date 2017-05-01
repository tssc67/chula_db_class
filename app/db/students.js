
module.exports = exports = function(getConnection){
	pooler = getConnection;
	return module.exports;
}

exports.getStudents = function(){
    return new Promise(function(resolve,reject){
        resolve([
            ["571059221","ธีรภัทร","สุจิตโต","100","2557","2.xx","teerapart.s@gmail.com","00000","095954753x","click!","Computer Engineering"],
            ["571059222","ธีรภัทร","สุจิตโต","100","2557","2.xx","teerapart.s@gmail.com","00000","095954753x","click!","Computer Engineering"],
            ["571059223","ธีรภัทร","สุจิตโต","100","2557","2.xx","teerapart.s@gmail.com","00000","095954753x","click!","Computer Engineering"],
            ["571059224","ธีรภัทร","สุจิตโต","100","2557","2.xx","teerapart.s@gmail.com","00000","095954753x","click!","Computer Engineering"],
        ])
    })
}