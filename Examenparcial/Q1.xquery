(:~1. Una que nos dé el nombre de los profesores que dan clases, qué clase dan y el precio de las mismas  ~ :)
for $x in doc("academia.xml")/academia/clase
return   concat(data($x/profe), "--> ", ($x/estilo), "--> ", ($x/precio))
