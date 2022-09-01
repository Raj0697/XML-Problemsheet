<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html><body>
<table border="5" width="75%">
<tr bgcolor="gold">
<td>title</td>
<td>prod</td>
<td>cost</td></tr>

<xsl:for-each select="amazon/flipkart">
<xsl:sort select="cost" order="ascending" data-type="number"/>

<tr><td>
<xsl:value-of select="title"/></td><td>
<xsl:value-of select="title/@prod"/></td>
<td><xsl:value-of select="cost"/></td>
</tr>

</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>