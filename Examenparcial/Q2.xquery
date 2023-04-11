(:~1. Una consulta que nos dé toda la información de los bailes que se dan en la sala 2 y que tengan precio inferior a 35€  ~ :)
for $x in doc (academia.xml)/academia/clase
where $x/precio < 35 and $x/sala = [2]
return concat (data(precio), "-->" data(sala))