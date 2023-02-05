(:~6. Listar año y título de los libros que tienen más de un autor (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
where $x/autor[2]
return concat(data($x/titulo), "  AÑO --> ", data($x/@anyo))

