(:~6. Listar año y título de los libros que tienen más de un autor (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
return if ($libro/autor= < 1)

