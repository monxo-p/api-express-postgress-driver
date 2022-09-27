const express = require("express");
const app = express();

app.get("/", (req, res) => {
  console.log("Hola mundo");
});

app.listen(3000, (error) => {
  error ? console.log(error) : console.log("Server running");
});

//module.exports = express
//prueba
