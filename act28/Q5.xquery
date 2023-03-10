(:~1. 5. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.
 ~ :)
for $x in doc("b.xml")//book
where $x/year = 2005
return <lib2005><titulo>{$x/title/node()}</titulo>  <autor>{$x/author/node()}</autor></lib2005>


