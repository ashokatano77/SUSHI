(:~ 2. Listar año y título de todos los libros, ordenados por año (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
order by $x/@anyo
return <li>{data($x/titulo)}. AÑO: {data($x/@anyo)}</li>

