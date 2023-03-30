<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:dc="http://purl.org/dc/elements/1.1/" 
xmlns:content="http://purl.org/rss/1.0/modules/content/" 
xmlns:dcterms="http://purl.org/dc/terms/" 
xmlns:atom="http://www.w3.org/2005/Atom" 
xmlns:media="http://search.yahoo.com/mrss/">

<xsl:template match="/">
    
    <html>
        <head>
            <link rel="stylesheet" href="act29.css"></link>
            <title>Periódico</title>
        
        </head>

        <body>

            <div1>
                <h1><xsl:value-of select="rss/channel/title"/></h1>
                <b><xsl:value-of select="rss/channel/description"/></b>
              </div1>


              <xsl:for-each select="rss/channel/item">

              <div2>
                <main>

                <title><h3>Película<h3></title>
                    <xsl:for-each select="rss/channel/item"/>
                    <article>

                        <p><xsl:value-of select="title"/></p>
                        <xsl:for-each select="media:content">

                <img src="{@url}" alt="{media:description}" style="max-height:300px; max-width:600px"></img>

                </xsl:for-each>
                        
                        <p><xsl:value-of select="description"/></p>
                        <a href="{link}">leer </a>

                    </article>
                </main>

            </div2>


            </xsl:for-each>

        </body>

    </html>
</xsl:template>

</xsl:stylesheet>