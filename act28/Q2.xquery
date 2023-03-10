(:~1. 2. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where” ~ :)
for $x in doc("b.xml")/bookstore/book
where $x/price < 31
return $x/title

