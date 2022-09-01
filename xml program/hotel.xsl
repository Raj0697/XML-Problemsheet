<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>mca</title>
</head>
<body bgcolor="lightblue">
<center>
<h1 style="font:normal 35px arial;">WELCOME TO HOTEL MANAGEMENT WEBSITE</h1>
<table border="10">
<tr>
<th>address</th>
<th>id</th>
<th>room</th>
<th>cost</th>
</tr>
<h2>TABLE AFTER SORTING AND FILTERING</h2>
<xsl:for-each select="hotel/chola">
<xsl:sort select="cost" order="descending" data-type="number"/>
<tr>
<td><xsl:value-of select="address"/></td>
<td><xsl:value-of select="address/@id"/></td>
<td><xsl:value-of select="room"/></td>
<td><xsl:value-of select="cost"/></td>
</tr>
</xsl:for-each>

<h2>TABLE </h2>
<xsl:for-each select="hotel/chola">
<xsl:if test="cost &gt; 5000">
<tr>
<td><xsl:value-of select="address"/></td>
<td><xsl:value-of select="address/@id"/></td>
<td><xsl:value-of select="room"/></td>
<td><xsl:value-of select="cost"/></td>
</tr>
</xsl:if>
</xsl:for-each>


</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>