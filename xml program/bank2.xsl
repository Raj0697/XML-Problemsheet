<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999.XSL/Transform">

<xsl:template match="/">

<table border="1">
<tr>
<th>name</th>
<th>balance</th>
<th>address</th>
</tr>

<xsl:for-each select="sbi/acc">



<xsl:choose>
<xsl:when type="saving"><tr>
<td><xsl:value-of select="@type"/></td>
<td><xsl:value-of select="balance"/></td>
</xsl:when>

<xsl:otherwise>
<td><xsl:value-of select="address"/></td></tr>

</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>