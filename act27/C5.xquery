(:~5. Listar año y título de los libros publicados por Addison-Wesley después del año 1992 (solo texto, separados por " -> "). ~ :)

for $x in doc("books.xml")/bib/libro
where $x/editorial= "Addison-Wesley"
return <li>{data($x/titulo)}. AÑO: {data($x/@anyo)}</li>