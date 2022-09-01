<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
      <html> <head> <title> Student Details </title></head>
       <body>

       <table width="100%" border="2">
             <tr bgcolor="silver">
                   <th> Student Name </th>
                    <th> Reg. No. </th>
                    <th> Age </th>
                     <th> Mark </th>
             </tr>

 <xsl:for-each select="MCA/student[name/@gender='M']">
 <xsl:sort select="mark" order="ascending" data-type="number"/>
    <tr>
      <td> <xsl:value-of select="name"/> </td>
      <td> <xsl:value-of select="no"/> </td>
      <td> <xsl:value-of select="age"/> </td>
       <td> <xsl:value-of select="mark"/> </td>
     </tr>
  </xsl:for-each>
      </table>
</body> </html>
</xsl:template>
</xsl:stylesheet>

