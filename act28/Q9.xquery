(:~1.9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.

~ 
:)


for $x in doc("b.xml")/bookstore
return <titulo>{($x/book/title)} </titulo> <total>{$x/count(book)}</total>