<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

---
<xsl:for-each select="rss @xmlns:dc @xmlns:content @xmlns:dcterms @xmlns:media" >
    <xsl:for-each select="/rss/channel">
    <xsl:value-of select="title" />
    <xsl:value-of select="descrption" />
    <xsl:value-of select="languaje" />
    <xsl:value-of select="link" />
    <xsl:value-of select="link" />
    <xsl:value-of select="lastBuildDate" />

    
    
    <xsl:for-each select="/rss/channel/item">
      <xsl:value-of select="guid @isPermaLink" />
      <xsl:value-of select="title" />
      <xsl:value-of select="pubDate" />
      <xsl:value-of select="link" />
      <xsl:value-of select="dc:creator" />
      <xsl:value-of select="dcterms:alternative" />
      <xsl:value-of select="description" />
      <xsl:value-of select="category" />

      <xsl:for-each select="/rss/channel/item/media:content @url @type @medium">
        <xsl:value-of select="media:credit" />
        <xsl:value-of select="media:title" />
        <xsl:value-of select="media:text" />
        <xsl:value-of select="media:description" />
      </xsl:for-each>
      
      <xsl:value-of select="content:encoded" />

      <xsl:for-each select="/RSS/channel/media content">
      </xsl:for-each>

      <xsl:for-each select="/RSS/channel/media group">
      </xsl:for-each>

    </xsl:for-each>




<xsl:value-of select="content:encoded" />



</xsl:for-each>
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>