<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="facturas">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="factura">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="empresa">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="direccion" type="xs:string" />
                                        <xs:element name="poblacion" type="xs:string" />
                                        <xs:element name="cp" type="xs:string" />
                                        <xs:element name="cif" type="xs:string" />
                                        <xs:element name="telefono" type="xs:string" />
                                        <xs:element name="fax" type="xs:string" />
                                    </xs:sequence>
                                    <xs:attribute name="nombre" use="required" />
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="pedido">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="fecha" type="xs:string" />
                                        <xs:element name="pedidonum" type="xs:string" />
                                        <xs:element name="formapago" type="xs:string" />
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="cliente">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="nombre" type="xs:string" />
                                        <xs:element name="direccion" type="xs:string" />
                                        <xs:element name="poblacion" type="xs:string" />
                                        <xs:element name="cp" type="xs:string" />
                                        <xs:element name="provincia" type="xs:string" />
                                    </xs:sequence>
                                    <xs:attribute name="numcliente" type="xs:integer" use="required" />
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="datos">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="productos">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="producto" maxOccurs="unbounded">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element name="ref" type="xs:string" />
                                                                <xs:element name="descrip" type="xs:string" />
                                                                <xs:element name="cant" type="xs:string" />
                                                                <xs:element name="precio" type="xs:string" />
                                                                <xs:element name="iva" type="xs:string" />
                                                                <xs:element name="importe" type="xs:string" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                        <xs:element name="precios">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="base" type="xs:string" />
                                                    <xs:element name="iva" type="xs:string" />
                                                    <xs:element name="cuotaiva" type="xs:string" />
                                                    <xs:element name="total" type="xs:string" />
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                        <xs:attribute name="numero" type="xs:integer" use="required" />
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>