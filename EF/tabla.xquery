(:~1. Crear una consulta XQuery que, por cada usuario, informe de los días que tiene que venir, a hacer qué actividades, y a que horas. Deben estar ordenados por nombre y por día (si el jueves queda antes que el lunes, no pasa nada). ~ :)

for $x in doc("tabla.xml")//area
return concat(data($x/servicio)," · ",data($x/responsable)," · ",($x/plaza)," · ",($x/horario))

