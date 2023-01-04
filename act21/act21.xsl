<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table border="1px">
                    <tr>
                        <th rowspan="2" colour="blue">Descripcion de cada hecho </th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr>
                        <th>Año</th>
                        <th>Mes</th>
                        <th>Dia</th>
                    </tr>
                    <xsl:for-each select="acontecimiento/hecho">

                        <tr>
                            <td>
                                <xsl:value-of select="@suceso"/>
                            </td>
                            <xsl:for-each select="fecha">

                                <td>
                                    <xsl:value-of select="dia" />
                                </td>
                                <td>
                                    <xsl:value-of select="mes" />
                                </td>
                                <td>
                                    <xsl:value-of select="anio" />
                                </td>

                            </xsl:for-each>

                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
