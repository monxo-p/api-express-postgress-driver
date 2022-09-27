const express = require("express");
const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  console.log("Hola mundo");
});

app.listen(3000, (error) => {
  error ? console.log(error) : console.log("Server running");
});

//module.exports = express
