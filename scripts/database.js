const mysql = require('mysql');

const config = {
  user: 'root',
  password: 'zaq1@WSX',
  database: 'lor',
  host: 'localhost',
  port: 3306,
  multipleStatements: true,
};

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  });
});
