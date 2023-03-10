(:~1. 6. Mostrar los años de publicación, primero con “for” y 
después con “let” para comprobar la diferencia entre ellos. 
Etiquetar la salida con <publicación>.

for $x in doc("books.xml")/bib/libro
order by $x/@anyo
return <li>{data($x/titulo)}. AÑO: {data($x/@anyo)}</li>
for $x in doc ("b.xml")/bookstore/book
return <publicacion> {$x/year}  </publicacion>

for $x in doc ("b.xml")/bookstore/book
return <publicacion> {$x/year}  </publicacion>




~ :)


for $x in doc ("b.xml")/bookstore/book
return <publicacion> {$x/year}  </publicacion>

let $x := doc ("b.xml")//book
return <publicacion>{$x/year}</publicacion>






