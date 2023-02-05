(:~10. Por cada libro, obtener su título y el número de autores, agrupados en un elemento <libro> (XML con sus respectivas etiquetas). ~ :)

for $libro in doc("books.xml")/bib/libro
return <libro>  {($libro/titulo , "  / AUTOR = " , $libro/count(autor))}  </libro>