const mysql = require('mysql');
const util = require('util');
require('dotenv').config();
sqlFunc = require('./assets/sqlFunctions');

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
});

connection.connect(function (err) {
    if (err) throw err;
    sqlFunc.mainMenu();
});