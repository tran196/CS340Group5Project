var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'classmysql.engr.oregonstate.edu',
  user            : 'cs340_arizalan',
  password        : 'Joanna1313!',
  database        : 'cs340_arizalan'
});
module.exports.pool = pool;
