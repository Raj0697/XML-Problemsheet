<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<table border="1" width="80%">
<tr>
<td>name</td>
<td>regno</td>
<td>sex</td>
<td>educ</td>
<td>marks</td>
<td>grade</td>
</tr>

<xsl:for-each select="tab/std">
<xsl:sort select="name/@regno" order="descending" data-type="number"/>
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="name/@regno"/></td>
<td><xsl:value-of select="sex"/></td>
<td><xsl:value-of select="edu"/></td>
<td><xsl:value-of select="marks"/></td>

<td>
<xsl:choose>
	<xsl:when test="marks > 90">medium</xsl:when>
	<xsl:when test="marks > 85">good</xsl:when>
	<xsl:otherwise>low</xsl:otherwise>
</xsl:choose>
</td>
</tr>

</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>