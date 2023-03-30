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
            <title>Diario de Mallorca cine </title>
        
        </head>

        <body>

            
                <h1><xsl:value-of select="rss/channel/title"/></h1>
                <!-- <b><h2><xsl:value-of select="rss/channel/description"/></h2></b>-->
            


              <xsl:for-each select="rss/channel/item">

             
                <main>

                
                    
                    <article>

                        <p><b><xsl:value-of select="title"/></b></p>

                        <xsl:for-each select="media:content">
                            <img src="{@url}" alt="{media:description}" style="max-height:100px; max-width:200px"></img>
                        </xsl:for-each>
                        <!--<p><xsl:value-of select="description"/></p> -->
                        <br></br>
                        <a href="{link}">leer </a>
                        <hr/>

                    </article>
                </main>

            

            </xsl:for-each>

        </body>

    </html>
</xsl:template>

</xsl:stylesheet>