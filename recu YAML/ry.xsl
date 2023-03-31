<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">

facturas:
  factura:
    <xsl:for-each select="FACTURA">
    proveedor:
      direccion: <xsl:value-of select="proveedor/empresa"></xsl:value-of>
      poblacion: <xsl:value-of select="proveedor/calle"></xsl:value-of>
      cp: <xsl:value-of select="proveedor/provincia"></xsl:value-of>
      cif: <xsl:value-of select="proveedor/cif"></xsl:value-of>
      telefono: <xsl:value-of select="proveedor/telefono"></xsl:value-of>
      fax: <xsl:value-of select="proveedor/fax"></xsl:value-of>
    pedido:
      fecha: <xsl:value-of select="registro/fecha"></xsl:value-of>
      pedidonum: <xsl:value-of select="registro/pedido"></xsl:value-of>
      formapago: <xsl:value-of select="registro/formadepago"></xsl:value-of>
    cliente:
      nombre: <xsl:value-of select="datoscliente/numero"></xsl:value-of>
      direccion: <xsl:value-of select="datoscliente/nombre"></xsl:value-of>
      poblacion: <xsl:value-of select="datoscliente/direccion"></xsl:value-of>
      cp: <xsl:value-of select="datoscliente/poblacion"></xsl:value-of>
      provincia: <xsl:value-of select="datoscliente/codigopostal"></xsl:value-of>
      provincia: <xsl:value-of select="datoscliente/provincia"></xsl:value-of>
    </xsl:for-each>
    datos:
      producto:
        producto:   <xsl:for-each select="FACTURA/datosfactura/dato">
            - ref: <xsl:value-of select="ref"></xsl:value-of>
              descrip: <xsl:value-of select="descripcion"></xsl:value-of>
              cant: <xsl:value-of select="cantidad"></xsl:value-of>
              precio: <xsl:value-of select="precio"></xsl:value-of>
              iva: <xsl:value-of select="iva"></xsl:value-of>
              importe: <xsl:value-of select="importe"></xsl:value-of></xsl:for-each>
            
              
    precios: <xsl:for-each select="FACTURA/datosfactura/totaldatos">
      base: <xsl:value-of select="baseimponible"></xsl:value-of>
      iva: <xsl:value-of select="iva"></xsl:value-of>
      cuotaiva: <xsl:value-of select="cuotaiva"></xsl:value-of></xsl:for-each>


      <xsl:for-each select="FACTURA/datosfactura/totalfactura">
      total: <xsl:value-of select="cantidad"></xsl:value-of></xsl:for-each>
   

</xsl:template>
</xsl:stylesheet>