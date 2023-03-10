<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head></head>
    <body>

        

        <table border="1">

            <font type="arial narrow">
                
        
                <tr>
                    <td colspan="11">
                        <b><center>CENTRO DE SALUD INTEGRAL</center></b>
                    </td>
                    
                </tr>
                
                <tr>
                    <td colspan="4"><b>SERVICIO</b></td>
                    <td colspan="2"><b>RESPONSABLE</b></td>
                    <td colspan="2"><b>PLAZA</b></td>
                    <td colspan="3"><b>HORARIO</b></td>
                    
                </tr>
        

            <xsl:for-each select="area">
                <tr>
                    <td colspan="4"><xsl:value-of select="servicio" /></td>

                    <td colspan="2"><xsl:value-of select="responsable" /></td>

                    <td colspan="2"><xsl:value-of select="plaza"/></td>

                    <td colspan="3"><xsl:value-of select="horario"/></td>

                    
                </tr>
            </xsl:for-each>
        </font>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>