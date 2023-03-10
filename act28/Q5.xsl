<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <lib2005>
      <xsl:for-each select="/bookstore/book[year=2005]">
        <titulo><xsl:value-of select="title"/></titulo>
        <autor><xsl:value-of select="author"/></autor>
      </xsl:for-each>
    </lib2005>
  </xsl:template>
</xsl:stylesheet>