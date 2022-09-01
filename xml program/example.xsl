<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html><title>mcc</title>
<body bgcolor="indianred"><center><h1 style="font:normal 45px arial;color:white;background-color:blue;">LIBRARY MANAGEMENT SYSTEM</h1>
<table border="10" width="80%" style="background-color:white;">
<tr bgcolor="gold">
<td>title</td>
<td>author</td>
<td>cost</td>
<td>edition</td></tr>

<xsl:for-each select="library/books">

<xsl:sort select="cost" order="descending" data-type="number"/>
<xsl:sort select="edition" order="ascending" data-type="number"/>

<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="title/@author"/></td>
<td><xsl:value-of select="cost"/></td>
<td><xsl:value-of select="edition"/></td>
</tr>

</xsl:for-each>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>