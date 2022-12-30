<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head></head>
    <body>
        <table border="1">
            <tr>
                <th colspan="6">CDs EN OFERTA</th>
            </tr>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>País</th>
                <th>Compañía discográfica</th>
                <th>Precio</th>
                <th>Año de publicación</th>
            </tr>
            <xsl:for-each select="OFERTA/CD">
                <tr>
                    <td>
                        <xsl:value-of select="@titulo" />
                    </td>

                    <td>
                        <xsl:value-of select="Artista" />
                    </td>

                    <td>
                        <xsl:value-of select="Pais" />
                    </td>

                    <td>
                        <xsl:value-of select="Compania" />
                    </td>

                    <td>
                        <xsl:value-of select="Precio" />
                    </td>

                    <td>
                        <xsl:value-of select="anio" />
                    </td>
                    
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>