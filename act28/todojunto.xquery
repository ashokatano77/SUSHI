(:~1. 1. Mostrar los títulos de los libros con la etiqueta <titulo>. ~ :)
doc("b.xml")//title

(:~1. 2. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where” ~ :)
for $x in doc("b.xml")/bookstore/book
where $x/price < 31
return $x/title

(:~1. 3. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la ruta de XPath. ~ :)
doc ("b.xml")//book[price < 31]

(:~1. 4. Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.
~ :)
for $x in doc("b.xml")//book
where $x/price < 31
return $x/title/node()

(:~1. 5. Mostrar el título y el autor de los libros del año 2005, 
y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.
 ~ :)
for $x in doc("b.xml")//book
where $x/year = 2005
return <lib2005><titulo>{$x/title/node()}</titulo>  <autor>{$x/author/node()}</autor></lib2005>


(:~1. 6. Mostrar los años de publicación, primero con “for” y 
después con “let” para comprobar la diferencia entre ellos. 
Etiquetar la salida con <publicación>.~ :)
for $x in doc ("b.xml")/bookstore/book
return <publicacion> {$x/year}  </publicacion>

let $x := doc ("b.xml")//book
return <publicacion>{$x/year}</publicacion>

(:~1. 7. Mostrar los libros ordenados primero por “category” y d
espués por “title” en una única consulta..~ :)
for $x in doc ("b.xml")/bookstore/book
order by $x/@category, $x/title
return concat(data($x/title), "<---title | category--->", ($x/@category))

(:~1. 8. Mostrar cuántos libros hay, y etiquetarlo con <total>..
:)
<total>{doc("b.xml")/bookstore/count(book)}</total>




(:~1.10. Mostrar el precio mínimo y máximo de los libros.
~ :)
let $x := doc("b.xml")//book
return  <min>{min($x/price)}</min> <max>{max($x/price)}</max>

(:~1.11. Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.~ :)
for $x in doc("b.xml")/bookstore/book
order by $x/price
return (concat (data($x/title), " <----titulo | precio--->" , (data($x/price)),"  precio+iva--->",(data($x/price + ($x/price * 0.21)))))
    