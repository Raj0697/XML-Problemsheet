<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<center><table border="1">
<tr><th>name</th>
<th>id</th>
<th>price</th>
<th>address</th></tr>

<xsl:for-each select="prod/cart">
<xsl:sort select="price" order="descending" data-type="number"/>
<xsl:if test="price &lt; 200">


<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="name/@id"/></td>
<td><xsl:value-of select="price"/></td>
<td><xsl:value-of select="address"/></td></tr>

</xsl:if>
</xsl:for-each>
</table>
<h3 align="center">The total no.of products are:<xsl:value-of select="count(prod/cart/name)"/></h3>
<h3 align="center">The total Price:<xsl:value-of select="sum(prod/cart/price)"/></h3>

</center>
</xsl:template>
</xsl:stylesheet>