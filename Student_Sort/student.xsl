<?xml version="1.0"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h3>Student details</h3>
<xsl:for-each select="MCA/student">
<xsl:sort select="age" order="ascending" data-type="number"/>
Student name   :<xsl:value-of select="name"/><br></br>
Student no     :<xsl:value-of select="no"/><br></br>
Student Age    :<xsl:value-of select="age"/><br></br>
Student mark   :<xsl:value-of select="mark"/><br></br>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>