<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- http://stackoverflow.com/questions/723226/producing-a-new-line-in-xslt -->
    <!-- http://stackoverflow.com/questions/1390568/how-to-match-attributes-that-contain-a-certain-string -->
    <!-- http://www.w3schools.com/xsl/xsl_value_of.asp -->
    <!-- http://stackoverflow.com/questions/16573215/xslt-remove-leading-and-trailing-whitespace-of-all-attributes -->

    <xsl:template match="name"><xsl:value-of select="."/>;"</xsl:template>

    <xsl:template match="cost">Cost: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="ability">
        <xsl:text>&#xa;</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="stats">Stats: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="cardend">"<xsl:text>&#xa;</xsl:text></xsl:template>

    <xsl:template match="text()"/>


</xsl:stylesheet>