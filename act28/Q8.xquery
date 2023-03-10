(:~1. 8. Mostrar cuántos libros hay, y etiquetarlo con <total>..
for $x in doc ("b.xml")/bookstore
return <total>{$x/count(book)}</total>
:)

<total>{doc("b.xml")/bookstore/count(book)}</total>



