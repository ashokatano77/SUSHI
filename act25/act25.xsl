<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="yes" />
    <xsl:template match="/">
    FACTURA
    "-numero": 999
    proveedor:
    <xsl:for-each select="FACTURA/proveedor">
    empresa:
    <xsl:value-of select="empresa" />
    calle:
    <xsl:value-of select="calle" />
    provincia:
    <xsl:value-of select="provincia" />
    cif:
    <xsl:value-of select="cif" />
    telefono:
    <xsl:value-of select="telefono" />
    fax:
    <xsl:value-of select="fax" />

    registro:
    <xsl:for-each select="/FACTURA/registro">
    fecha:
    <xsl:value-of select="fecha" />
    pedido:
    <xsl:value-of select="pedido" />
    formadepago:
    <xsl:value-of select="formdepago" />

    datoscliente:
    <xsl:for-each select="/FACTURA/datoscliente">
    numero:
    <xsl:value-of select="numero" />
    nombre:
    <xsl:value-of select="nombre" />
    direccion:
    <xsl:value-of select="direccion" />
    poblacion:
    <xsl:value-of select="poblacion" />
    codigopostal:
    <xsl:value-of select="codigopostal" />
    provincia:
    <xsl:value-of select="provincia" />


    datosfactura:

    dato:

    <xsl:for-each select="/FACTURA/datosfactura/dato">
    -
    ref:
    <xsl:value-of select="ref" />
    descricpion:
    <xsl:value-of select="descripcion" />
    cantidad:
    <xsl:value-of select="cantidad" />
    precio:
    <xsl:value-of select="precio" />
    iva:
    <xsl:value-of select="iva" />
    importe:
    <xsl:value-of select="importe" />

    </xsl:for-each>


    totaldatos:
    <xsl:for-each select="/FACTURA/datosfactura/totaldatos">
    baseimponible:
    <xsl:value-of select="baseimponible" />
    iva:
    <xsl:value-of select="iva" />
    cuotaiva:
    <xsl:value-of select="cuotaiva" />

    </xsl:for-each>

    totalfactura:
    <xsl:for-each select="/FACTURA/datosfactura/totalfactura">
    cantidad:
    <xsl:value-of select="cantidad" />
    </xsl:for-each>







    

    </xsl:for-each>

    </xsl:for-each>

    </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
