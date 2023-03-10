<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <link rel="stylesheet" href="tabla.css"></link>
          <title>EXAMEN 2ºEV FINAL</title>
    </head>

    <body>

        

        <table border="1" align="center">

            <font type="arial narrow">
                
        
                <tr>
                    <td colspan="14">
                        <h3><b><center>CENTRO DE SALUD INTEGRAL</center></b></h3>
                    </td>
                    
                </tr>
                
                <tr>
                    <td colspan="4"><b>SERVICIO</b></td>
                    <td colspan="2"><b>RESPONSABLE</b></td>
                    <td colspan="2"><b>PLAZA</b></td>
                    <td colspan="3"><b>HORARIO</b></td>
                    <td colspan="3"><b>PRECIO</b></td>
                    
                </tr>
        

            <xsl:for-each select="centro/area">
                <tr>
                    <td colspan="4"><xsl:value-of select="servicio" /></td>

                    <td colspan="2"><xsl:value-of select="responsable" /></td>

                    <td colspan="2"><xsl:value-of select="plaza"/></td>

                    <td colspan="3"><xsl:value-of select="horario"/></td>

                    <td colspan="3"><xsl:value-of select="precio"/></td>

                    
                </tr>
            </xsl:for-each>
        </font>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>