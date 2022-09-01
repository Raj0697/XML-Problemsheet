<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html><body>
<table border="1" width="50%">
<tr bgcolor="silver">
<td>father</td>
<td>mother</td>
<td>sister</td>
<td>city</td>
</tr>

<xsl:for-each select="family/life">
<tr>
<td><xsl:value-of select="father"/></td>
<td><xsl:value-of select="father/@mother"/></td> 
<td><xsl:value-of select="sister"/></td>
<td><xsl:value-of select="city"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>