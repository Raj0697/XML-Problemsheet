<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html><head><title>output document</title></head>
<body>

<h1 style="font-family:arial;text-align:center;">II MCA STUDENTS INFORMATION </h1>
<table border="1" width="100%">
<tr>
<td>NAME</td>
<td>ROLLNO</td>
<td>AGE</td>
<td>PERCENTAGE</td>
</tr>

<xsl:for-each select="mcc/mca">
<tr>
	<td><xsl:value-of select="stud_name"/></td>
	<td><xsl:value-of select="stud_name/@roll_no"/></td>
	<td><xsl:value-of select="age"/></td>
	<td><xsl:value-of select="percentage"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
