<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table BORDER="1px">
                    <tr>
                        <th colspan="6">Factura n.999</th>
                    </tr>
                    <xsl:for-each select="Factura/proveedor">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="empresa" />
                                <br />
                                <xsl:value-of select="calle" />
                                <br />
                                <xsl:value-of select="provincia" />
                                <br />
                                <xsl:value-of select="cif" />
                                <br />
                                <xsl:value-of select="telefono" />
                                <br />
                                <xsl:value-of select="fax" />
                                <br />

                    

                            </td>
                            <td colspan="3">
                                <xsl:value-of select="fecha" />
                                <br />
                                <xsl:value-of select="pedido" />
                                <br />
                                <xsl:value-of select="formadepago" />
                                <br />
                            </td>
                        </tr>

                        <tr>
                            <th colspan="6">Datos Cliente</th>
                        </tr>
                        <xsl:for-each select="/Factura/datos_cliente">
                            <tr>
                                <td colspan="6">
                                    <xsl:value-of select="numero" />
                                    <br />
                                    <xsl:value-of select="nombre" />
                                    <br />
                                    <xsl:value-of select="direccion" />
                                    <br />
                                    <xsl:value-of select="poblacion" />
                                    <br />
                                    <xsl:value-of select="codigopostal" />
                                    <br />
                                    <xsl:value-of select="provincia" />
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <th colspan="6">Datos Factura</th>
                            </tr>

                            <tr>
                                <th>REF</th>
                                <th>Descripción</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th>IVA</th>
                                <th>Importe</th>
                            </tr>
                            <xsl:for-each select="/Factura/datosfactura/dato">
                                <tr>
                                    <td>
                                        <xsl:value-of select="ref" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="descripcion" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="cantidad" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="precio" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="importe" />
                                    </td>
                                </tr>

                            </xsl:for-each>
                            <tr>
                                <th colspan="2">Base_imponible</th>
                                <th colspan="2">cant_IVA</th>
                                <th colspan="2">Cuota_IVA</th>
                            </tr>
                            <xsl:for-each select="/Factura/datos_factura/totaldatos">
                                <tr>
                                    <td colspan="2">
                                        <xsl:value-of select="baseimponible" />
                                    </td>
                                    <td colspan="2">
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td colspan="2">
                                        <xsl:value-of select="cuotaiva" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <center>
                                            <xsl:value-of select="cantidad" />
                                        </center>
                                    </td>
                                </tr>

                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 