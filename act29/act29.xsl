<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:dc="http://purl.org/dc/elements/1.1/" 
xmlns:content="http://purl.org/rss/1.0/modules/content/" 
xmlns:dcterms="http://purl.org/dc/terms/" 
xmlns:atom="http://www.w3.org/2005/Atom" 
xmlns:media="http://search.yahoo.com/mrss/">

<xsl:template>
    
    <html>
        <head>
            <link rel="stylesheet" href="act28.css"></link>
            <title>Periódico</title>
        
        </head>

        <body>

            <xsl:for-each select="rss/channel/item">
             
            
            
            <article>
                <p><xsl:value-of select="title"/></p>
                
                
                <xsl:for-each select="media:content">

                <img src="{@url}" alt="{media:description}" style="max-height:300px; max-width:600px"></img>

                </xsl:for-each>
                
                
                <p><xsl:value-of select="pubDate"/></p>
                <p><xsl:value-of select="description"/></p>
                <a href="{link}">leer </a>
            </article>


            </xsl:for-each>

        </body>

    </html>
</xsl:template>

</xsl:stylesheet>