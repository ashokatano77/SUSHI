(:~3 Listar los libros cuyo precio sea 65.95 (XML completo). ~ :)
for $x in doc("books.xml")/bib/libro
where $x/precio=65.95
order by $x/titulo
return $x/titulo