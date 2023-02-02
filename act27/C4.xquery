(:~4. Listar los libros publicados antes del año 2000 (XML completo). ~ :)
for $x in doc("books.xml")/bib/libro
where $x/@anyo < 2000
order by $x/titulo
return $x/titulo
