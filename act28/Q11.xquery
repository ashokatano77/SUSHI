(:~1.11. Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.~ :)
for $x in doc("b.xml")/bookstore/book
order by $x/price
return (concat (data($x/title), " <----titulo | precio--->" , (data($x/price)),"  precio+iva--->",(data($x/price + ($x/price * 0.21)))))


