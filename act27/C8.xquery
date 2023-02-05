(:~8. Mostrar los apellidos de los autores que aparecen en el documento, sin repeticiones, ordenados alfabéticamente (solo texto). ~ :)


for $apellido in distinct-values(doc("books.xml")/bib/libro/autor/apellido)
order by $apellido
return  $apellido