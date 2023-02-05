const express = require ("express");

const app =express();

app.get ("/", (req, res) =>{
    res.send ("Holamundo")
});



app.set ("view engine", "ejs");

app.get ("/libros", (req, res) =>{
   
    //const libros ="hola";
   // let libreria ="libreria";
    //libreria=5;
    //es mutable puede cambiar, cuidado

     //llamada a la bbdd

     const libros =[
     {
        nombre: "Libro1",
        isbn: "6363636363",
     },

     {
        nombre: "Libro2",
        isbn: "6363636364",
     },


    ];


app.get ("/", (req, res) =>{
    res.send ("Holamundo")
});

app.get ("/libreria", (req, res) =>{
    res.render ("home", {libros: libros});
});

app.listen (4001, () => {
    console.log("Escuchando en http://localhost:4001")
});


});

app.get ("/users", (req, res) => {
    constsql ="select" * from user;

})
