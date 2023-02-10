<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html>
    <head>
        <link rel="stylesheet" href="academia.css"></link>
       
    </head>

        <body>

            

            <p>

            
            <table border="solid"  align="center">
        
                <tr  align="center">
        
                    <td colspan="8"><h1>ACADEMIA</h1></td>
                </tr>
                <tr align="center">
                    <th><b>ESTILO</b></th>
                    <th><b>PRECIO</b></th>
                    <th><b>PLAZAS</b></th>
                    <th><b>FECHA DE INICIO</b></th>
                    <th><b>FECHA DE FIN </b></th>
                    <th><b>DÍAS</b></th>
                    <th><b>PROFESOR</b></th>
                    <th><b>SALA</b></th>
                </tr>

            <xsl:for-each select="/academia/clase">
                <tr align="center">
                    <th><xsl:value-of select="estilo" /> </th>
                    <th><xsl:value-of select="precio" /> </th>
                    <th><xsl:value-of select="plazas" /> </th>
                    <th><xsl:value-of select="inicio" /> </th>
                    <th><xsl:value-of select="fin" /> </th>
                    <th><xsl:value-of select="dias" /> </th>
                    <th><xsl:value-of select="profe" /> </th>
                    <th><xsl:value-of select="sala" /> </th>
                </tr>
            
            </xsl:for-each>
                

            </table>


        </p>
    
        </body>
    
</html>


</xsl:template>
</xsl:stylesheet>