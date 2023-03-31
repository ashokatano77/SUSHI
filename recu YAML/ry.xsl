<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">

facturas:
  factura:
    <xsl:for-each select="facturas/factura">
    empresa:
      direccion: <xsl:value-of select="empresa/direccion"></xsl:value-of>
      poblacion: <xsl:value-of select="empresa/poblacion"></xsl:value-of>
      cp: <xsl:value-of select="empresa/cp"></xsl:value-of>
      cif: <xsl:value-of select="empresa/cif"></xsl:value-of>
      telefono: <xsl:value-of select="empresa/telefono"></xsl:value-of>
      fax: <xsl:value-of select="empresa/fax"></xsl:value-of>
    pedido:
      fecha: <xsl:value-of select="pedido/fecha"></xsl:value-of>
      pedidonum: <xsl:value-of select="pedido/pedidonum"></xsl:value-of>
      formapago: <xsl:value-of select="pedido/formapago"></xsl:value-of>
    cliente:
      nombre: <xsl:value-of select="cliente/fecha"></xsl:value-of>
      direccion: <xsl:value-of select="cliente/direccion"></xsl:value-of>
      poblacion: <xsl:value-of select="cliente/poblacion"></xsl:value-of>
      cp: <xsl:value-of select="cliente/cp"></xsl:value-of>
      provincia: <xsl:value-of select="cliente/provincia"></xsl:value-of>
    </xsl:for-each>
    datos:
      producto:
        producto:   <xsl:for-each select="facturas/factura/datos/productos/producto">
            - ref: <xsl:value-of select="ref"></xsl:value-of>
              descrip: <xsl:value-of select="descrip"></xsl:value-of>
              cant: <xsl:value-of select="cant"></xsl:value-of>
              precio: <xsl:value-of select="precio"></xsl:value-of>
              importe: <xsl:value-of select="importe"></xsl:value-of></xsl:for-each>
            
              
    precios: <xsl:for-each select="facturas/factura/datos/precios">
      base: <xsl:value-of select="base"></xsl:value-of>
      iva: <xsl:value-of select="iva"></xsl:value-of>
      cuotaiva: <xsl:value-of select="cuotaiva"></xsl:value-of>
      total: <xsl:value-of select="total"></xsl:value-of></xsl:for-each>


</xsl:template>
</xsl:stylesheet>