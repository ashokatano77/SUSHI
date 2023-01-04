<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head></head>
        <body>
            <table border="1">
                
                    <tr>
                        <td colspan="12">
                            <center><b>FACTURA nº999</b></center>
                        </td>
                    </tr>

                <xsl:for-each select="FACTURA/proveedor">

                <tr>
                    <td colspan="12">
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
                </tr>

                <xsl:for-each select="/FACTURA/registro"> 


                <tr>
                    <td colspan="12">
                        <xsl:value-of select="fecha" />
                        <br />
                        <xsl:value-of select="pedido" />
                        <br />
                        <xsl:value-of select="formadepago" />
                        <br />
                    </td>
                </tr>

                <tr>
                    <td colspan="12">
                        <p><b>Datos CLIENTE</b></p>
                    </td>
                </tr>

                <xsl:for-each select="/FACTURA/datoscliente">
                            <tr>
                                <td colspan="12">
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
                    <td colspan="12">
                    <p><b>Datos FACTURA</b></p>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">REF.</td>
                    <td colspan="5">DESCRIPCIÓN </td>
                    <td>CANT.</td>
                    <td>PRECIO.</td>
                    <td>I.V.A</td>
                    <td colspan="2">IMPORTE</td>
                </tr>

                <xsl:for-each select="/FACTURA/datosfactura/dato">
                                <tr>
                                    <td colspan="2">
                                        <xsl:value-of select="ref" />
                                    </td>
                                    <td colspan="5">
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
                                    <td colspan="2">
                                        <xsl:value-of select="importe" />
                                    </td>
                                </tr>

                            </xsl:for-each>


                            <tr>
                                <td colspan="7"><b>Base imponible</b></td>
                                <td colspan="2"><b>%I.V.A</b></td>
                                <td colspan="3"><b>Cuota I.V.A</b></td>
                            </tr>

                            <xsl:for-each select="/FACTURA/datosfactura/totaldatos">
                                <tr>
                                    <td colspan="7">
                                        <xsl:value-of select="baseimponible" />
                                    </td>
                                    <td colspan="2">
                                        <xsl:value-of select="iva" />
                                    </td>
                                    <td colspan="3">
                                        <xsl:value-of select="cuotaiva" />
                                    </td>
                                </tr>

                            </xsl:for-each>

                         

                            <xsl:for-each select="/FACTURA/datosfactura/totalfactura/">

                            <tr>
                                <td colspan="12">
                                    <center>
                                        <xsl:value-of select="cantidad" />
                                    </center>
                                </td>
                            </tr>

                        </xsl:for-each>
                    

                            



                    



                            
            
            
            
            
            </xsl:for-each>
            
            </xsl:for-each>
               
                
            </xsl:for-each>



            </table>
        </body>
    </html>


    </xsl:template>
</xsl:stylesheet> 