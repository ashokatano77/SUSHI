(:~1. 7. Mostrar los libros ordenados primero por “category” y d
espués por “title” en una única consulta..~ :)

for $x in doc ("b.xml")/bookstore/book
order by $x/@category, $x/title
return concat(data($x/title), "<---title | category--->", ($x/@category))



