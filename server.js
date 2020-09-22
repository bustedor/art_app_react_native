
const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const connection = mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  database : 'art_project'
});

const app = express();

// Creating a GET route that returns data from the mysql db
app.get('/paintings', function (req, res) {
    // Connecting to the database.
    connection.getConnection(function (err, connection) {

    // Executing the MySQL query (select all data from the 'works_of_art' table).
    connection.query('SELECT * FROM works_of_art', function (error, response, fields) {
      // If some error occurs, we throw an error.
      if (error) throw error;

      let first = [];
      let second = [];
      // Getting the 'response' from the database and splitting them into 2 arrays to display them in separate scrollable views
      for (let i=0; i<response.length; i++) {
        if (i < response.length/2) {
          first.push(response[i]);
        } else {
          second.push(response[i]);
        }
      }

      // create a json object with 2 keys where each of them store one of the arrays
      let result = [{first_array: first, second_array: second}];
      res.send(result);
    });
  });
});

// Starting the server.
app.listen(3000, () => {
 console.log('Server is listening...');
});