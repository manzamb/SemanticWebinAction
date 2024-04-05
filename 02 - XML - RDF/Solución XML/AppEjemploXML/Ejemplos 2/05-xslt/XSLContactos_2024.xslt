<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Contactos Miguel </title>
      </head>
      <body>
        <h1 align="center"> Lista de Contactos </h1>
        <hr/>

        <xsl:apply-templates/>

      </body>
    </html>

  </xsl:template>


  <xsl:template match="listaContactos">
    <xsl:apply-templates/>
    <hr/>
    <h5 align="right">©2000-2004 Osmosis Latina </h5>
  </xsl:template>

  <xsl:template match="contacto">
    <table align="center" border="5" cellpadding="5" cellspacing="5">
      <xsl:apply-templates/>
    </table>
    <br/>
  </xsl:template>


  <xsl:template match="nombre">
    <tr>
      <th> Nombre </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>


  <xsl:template match="apellidos">
    <tr>
      <th> Apellido </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="fecha_nacimiento">
    <tr>
      <th> Fecha de Nacimiento </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="correos">
    <tr>
      <th> Correos </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>


  <xsl:template match="correo">
        <xsl:value-of select="."/>
  </xsl:template>
  
</xsl:stylesheet>

