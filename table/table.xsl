<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
      <html> <head> <title> Output document </title></head>
       <body>  

       <table width="100%" border="2">
             <tr bgcolor="silver">
                   <td> Make </td>
                    <td> Code </td>
                    <td> Model </td>
                     <td> Price </td>
             </tr>

  <xsl:for-each select="bata/footwear">
    <tr>
      <td> <xsl:value-of select="make"/> </td>
      <td> <xsl:value-of select="make/@code"/> </td>
      <td> <xsl:value-of select="model"/> </td>
       <td> <xsl:value-of select="price"/> </td>
     </tr>
  </xsl:for-each>
      </table>
</body> </html>
</xsl:template>
</xsl:stylesheet>
