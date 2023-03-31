<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
{
            "OFERTA": {
                "cd": [
                    <xsl:for-each select="OFERTA/CD">
                    
                    {
                    
                    "titulo": " <xsl:value-of select="titulo"/> ",
                    "artista": "  <xsl:value-of select="Artista"/>  ",
                    "pais": " <xsl:value-of select="Pais"/> ",
                    "compañia": "<xsl:value-of select="Compania"/> ",
                    "precio": <xsl:value-of select="Precio"/>,
                    "publicacion": <xsl:value-of select="anio"/>
                }<xsl:if test="position () != last()"><xsl:text>,</xsl:text></xsl:if>
            </xsl:for-each>
            ]
            
        }
        
    }
</xsl:template>
</xsl:stylesheet>