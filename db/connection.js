const mysql = require("mysql2/promise");
const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "Lamborghini1986$",
  database: "EmployeeTrack",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

console.log("Connected to the database");
console.log("--------WELCOME TO EMPLOYEE TRACKER--------");

module.exports = pool;
