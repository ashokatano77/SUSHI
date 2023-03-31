<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
{
            "cdsoferta": {
                "cd": [
                    <xsl:for-each select="cdsoferta/cd">
                    
                    {
                    
                    "titulo": " <xsl:value-of select="titulo"/> ",
                    "artista": "  <xsl:value-of select="artista"/>  ",
                    "pais": " <xsl:value-of select="pais"/> ",
                    "compañia": "<xsl:value-of select="compañia"/> ",
                    "precio": <xsl:value-of select="precio"/>,
                    "publicacion": <xsl:value-of select="publicacion"/>
                }<xsl:if test="position () != last()"><xsl:text>,</xsl:text></xsl:if>
            </xsl:for-each>
            ]
            
        }
        
    }
</xsl:template>
</xsl:stylesheet>