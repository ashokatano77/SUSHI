<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>
    <xsl:template match="/">
        {
            "menu_desayuno": {
                "comida": [
                <xsl:for-each select="breakfast_menu/food">
                    {
                        "nombre": "<xsl:value-of select="name"/>"
                    },
                </xsl:for-each>
                ]
            }
        }
    </xsl:template>
</xsl:stylesheet>