<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
      <html> <head> <title> sample </title></head>
       <body bgcolor="plum">  

       <table width="50%" border="5" bgcolor="ghostwhite">
             <tr>
                   <td> town </td>
                    <td> city </td>
                    <td> stadium </td>
                     
             </tr>

  <xsl:for-each select="europe/london">
    <tr>
      <td> <xsl:value-of select="town"/> </td>
      <td> <xsl:value-of select="town/@city"/> </td>
      <td> <xsl:value-of select="stadium"/> </td>
       
     </tr>
  </xsl:for-each>
      </table>
</body> </html>
</xsl:template>
</xsl:stylesheet>
