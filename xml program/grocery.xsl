<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>output</title>
</head>
<body>
<center>
<h1>Food World Inc.       										Date:23.09.2019</h1>
<h2>No:25 Wall Street,</h2>
<h3>Broadway</h3>
</center>
<center>
<table border="3" width="80%">
<tr>
<td>S.NO</td>
<td>PRODUCT_NAME</td>
<td>DESCRIPTION</td>
<td>UNIT_PRICE</td>
<td>QUANTITY</td>
<td>AMOUNT</td>
</tr>

<xsl:for-each select="grocery/products">
<tr>
	<td><xsl:value-of select="s.no"/></td>
	<td><xsl:value-of select="s.no/@name"/></td>
	<td><xsl:value-of select="des"/></td>
	<td><xsl:value-of select="price"/></td>
	<td><xsl:value-of select="quantity"/></td>
	<td><xsl:value-of select="amount"/></td>
</tr>

</xsl:for-each>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>