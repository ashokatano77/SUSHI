<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
{
            "OFERTA": {
                "CD": [
                    <xsl:for-each select="OFERTA/CD">
                    
                    {
                    
                    "TITULO": " <xsl:value-of select="titulo"/> ",
                    "ARTISTA": "  <xsl:value-of select="Artista"/>  ",
                    "PAIS": " <xsl:value-of select="Pais"/> ",
                    "COMPAÑIA": "<xsl:value-of select="Compania"/> ",
                    "PRECIO": <xsl:value-of select="Precio"/>,
                    "PUBLICACION": <xsl:value-of select="anio"/>
                }<xsl:if test="position () != last()"><xsl:text>,</xsl:text></xsl:if>
            </xsl:for-each>
            ]
            
        }
        
    }
</xsl:template>
</xsl:stylesheet>