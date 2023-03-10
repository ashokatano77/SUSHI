(:~1. 4. Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.

doc("b.xml")/bookstore//title/node()~ :)


for $x in doc("b.xml")//book
where $x/price < 31
return $x/title/node()