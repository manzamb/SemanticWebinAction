<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Acceso a Datos Semanticos</title>
      </head>
      <body>
        <h1 align="center"> Datos Semanticos del RDF Wikipedia Ejemplo</h1>
        <hr/>

        <xsl:apply-templates/>

      </body>
    </html>

  </xsl:template>


  <xsl:template match="rdfDescription">
    <table align="center" border="5" cellpadding="5" cellspacing="5">
      <xsl:apply-templates/>
    </table>
    <br/>
  </xsl:template>

  <xsl:template match="dctitle">
    <tr>
      <th> Titulo </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>


  <xsl:template match="dcpublisher">
    <tr>
      <th> Editor </th>
      <td align="center">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>


</xsl:stylesheet>
