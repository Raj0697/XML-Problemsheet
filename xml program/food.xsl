<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<xsl:apply-templates/>
</xsl:template>

<xsl:template match="food">
<center>
<table border="5">
<tr>
<th>name</th>
<th>energy</th>
</tr>

<xsl:for-each select="fooditem">
<xsl:if test="@type = 'veg'">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="energy"/></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>
</center>
</xsl:template>
</xsl:stylesheet>