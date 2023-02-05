(:7. Listar año y título de los libros que carecen de autor (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
where count($x/autor)=0
return concat(data($x/titulo), " /AÑO-> ", data($x/@anyo))
