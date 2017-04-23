<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/Catherine19/Name -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="e-shop/Section/Catalogue/perfume/goods[rating >= 4.5]"> 
			<xsl:sort select="Name" order="descending"/>
			{
			"Name": "<xsl:value-of select="Name"/>",
			"Brand": "<xsl:value-of select="Brand"/>",
			"rating": "<xsl:value-of select="rating"/>",
			"capacity": "<xsl:value-of select="capacity"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>