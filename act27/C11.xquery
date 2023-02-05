(:~11. Generar un documento html con un h1 que diga “Listado de libros”, seguido de una tabla de 3 columnas, en la que se muestre el título, editorial y precio de cada libro. La tabla deberá tener bordes y la primera fila tendrá el texto en negrita (bold). Las columnas de título y editorial irán alineadas a la izquierda y el precio a la derecha. ~ :)
<html>
<body>
    <p><b>Listado de libros</b></p>
    <table border="3">
        <tr>
            <th align="left">Título</th>
            <th align="left">Editorial</th>
            <th align="right">precio</th>
        </tr>
        
        for $x in doc("books.xml")/bib/libro
        return 
        
        <tr>
            <td>{data($x/titulo)}</td>
            <td>{data($x/editorial)}</td>
            <td>{data($x/precio)}</td>
        </tr>
        
    </table>
</body>
</html>