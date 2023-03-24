//importamos express
const express = require ("express");
//creamos la aplicacion
const app = express ();
//set a default view engine, motor de vistas por defecto 
app.set ("view.engine", "ejs");


//creamos un metodo get en /
app.get ("/tienda", (req,res,next)=>{
    //simulamos una llamada a la bbdd creando una variable 
    res.send ("holamunsd");
})
//creamos el metodo libros que nos devolvera un json con los libros de la tienda
app.get ("/libros", (req,res,next) => {
    const libros= [
        {
            nombre:"libro 1",
            precio: "15",
            descripcion:"lorem impsum",
            generos:"ficcion","romance" //para ahacer filtor, mira en la html
        },
        {
            nombre:"libro 2",
            precio: "9",

        },
    ];
    //llenamos la "res"puesta con el render de la vista "tienda"
    res.render ("tienda", {libros:libros});
    //res.json(libros); esto antes, ahora haremos un render porque queremosintegrar los libros con la lista

});

verificarUsuarioConectado =(req,res,next) => {
    //HAGO ALGO SI ESTA CONECTADO
    next();
    //SI NO...
    res.status(404);
    return;

    //FIJATE QUE ESTO ES UN IF 
};
//creamos un metodo que devuelva un html
app.get ("/libreria", (req,res,next) => {
    
    //...
    //llenamos la p respuesta  con el render lde la vista de libreria
    res.render ("libreria") //westo cada vez que entre en libreria verificara el usuario conectado y si no pasara al siguiente 

    //el req es request, peticion, y el res respuesta. esatas dos cosas van a enviar informacion segun diferenters direcciones 

}
//CREAMOS UN METODO TIENDA 
app.get ("/tienda", (req,res)=>
{
    //...
    //ponemos en el html tienda 
})


)
//publicamos el servidor en el puerto 4000
app.listen (4000, () => {
    //cuando se inicie que imprima por la pantalla un aviso 
    console.log("En marcha en http://localhost:4000") })


