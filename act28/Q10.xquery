(:~1.10. Mostrar el precio mínimo y máximo de los libros.

let $year := (
  for $x in doc ("b.xml")/bookstore/book
  return $x/year)
return <publicacion>{$year}</publicacion>
let

$max := max(/bookstore/book/price),
$min := min(/bookstore/book/price),

return
<resultado>
  <max>{$max}</max>
  <min>{$min}</min>
</resultado>
aroa


~ :)

let $x := doc("b.xml")//book
return  
    <resul>
        <min>{min($x/price)}</min>
        <max>{max($x/price)}</max>
    </resul>



