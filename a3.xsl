<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>El meu armari</h2>
    <table border="1">
      <tr bgcolor="yellow">
        <th>Nom</th>
        <th>Talla</th>
        <th>Preu (€)</th>
        <th>Color</th>
        <th>Data Compra</th>
        <th>Propietari</th>
      </tr>
      <xsl:for-each select="armari/prenda">

        <xsl:sort select="preu"/>
        <xsl:if test="2024>datacompra">
          <tr>
            <td><xsl:value-of select="nom"/></td>
            <td><xsl:value-of select="talla"/></td>
            <td><xsl:value-of select="preu"/></td>
            <td><xsl:value-of select="color"/></td>
            <td><xsl:value-of select="datacompra"/></td>
            <td><xsl:value-of select="propietari"/></td>
          </tr>       
        </xsl:if>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>