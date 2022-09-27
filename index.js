const express = require("express"); //Importamos la libreri aexpress
const app = express(); // Inicializamos la libreria en una constante
const router = require("./routes");

// Middlewares --> Obtienen los datos de la peticion antes de que lleguen a nuestra funcion
app.use(express.json()); // Permitimos comunicacion a traves de un formato JSON
app.use(express.urlencoded({ extended: false })); //Para recibir datos de formularios
app.use(router);

app.listen(3000, (error) => {
  error ? console.log(error) : console.log("Server running");
});
