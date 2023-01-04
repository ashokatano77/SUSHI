<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head></head>
    <body>

        

        <table border="1">
            <font type='Franklin Gothic Medium'>
                
        
            </style>
            <tr>
                <td colspan="13">
                    <b><center>CD's EN OFERTA</center></b>
                </td>
            </tr>
            <tr>
                <td colspan="4"><b>Titulo</b></td>
                <td colspan="2"><b>Artista</b></td>
                <td colspan="2"><b>Pais</b></td>
                <td colspan="3"><b>Compañia discográfica</b></td>
                <td><b>Precio</b></td>
                <td><b>Año de publicación</b></td>
            </tr>

            <xsl:for-each select="OFERTA/CD">
                <tr>
                    <td colspan="4"><xsl:value-of select="@titulo" /></td>

                    <td colspan="2"><xsl:value-of select="Artista" /></td>

                    <td colspan="2"><xsl:value-of select="Pais"/></td>

                    <td colspan="3"><xsl:value-of select="Compania"/></td>

                    <td><xsl:value-of select="Precio"/></td>

                    <td><xsl:value-of select="anio"/></td>
                    
                </tr>
            </xsl:for-each>
        </font>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>