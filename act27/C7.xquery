(:7. Listar año y título de los libros que carecen de autor (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
where  count(*) $x/autor > 2
return $x/title

