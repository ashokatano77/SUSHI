(:~9. Por cada libro, listar agrupado en un elemento <result> su título y autores (XML con sus respectivas etiquetas). ~ :)

for $libro in doc("books.xml")/bib/libro
return <result>{$libro/autor}{$libro/titulo}</result>


