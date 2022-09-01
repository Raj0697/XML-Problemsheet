<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sbi">

<table border="2">
<tr>
<th>name</th>
<th>balance</th>
</tr>

<xsl:for-each select="acc">
<xsl:sort select="bal" order="descending" data-type="number"/>
<xsl:if test="@type = 'saving'">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="bal"/></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>