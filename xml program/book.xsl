<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="library">

<xsl:apply-templates select="book"/>

</xsl:template>

<xsl:template match="book">

total no:
<xsl:value-of select="count(//book)"/>


</xsl:template>
</xsl:stylesheet>