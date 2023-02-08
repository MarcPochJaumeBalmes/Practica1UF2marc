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
      </tr>
      <xsl:for-each select="armari/prenda">
        <tr>
          <td><xsl:value-of select="nom"/></td>
          <td><xsl:value-of select="talla"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>