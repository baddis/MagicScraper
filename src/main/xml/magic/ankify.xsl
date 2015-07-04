<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- http://stackoverflow.com/questions/723226/producing-a-new-line-in-xslt -->
    <!-- http://www.w3schools.com/xsl/xsl_value_of.asp -->

    <!-- skip the xml header since this is a plaintext file -->
    <xsl:output method="text"/>

    <xsl:template match="name"><xsl:value-of select="."/>;"</xsl:template>

    <xsl:template match="cost">
Cost: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="ability">
        <xsl:text>&#xa;</xsl:text>
        <xsl:value-of select="replace(.,'&quot;', '`')"/>
    </xsl:template>

    <xsl:template match="//div[@class='t-spoiler-ability']/p"><ability><xsl:value-of select="replace(., '^\s+|\s+$', ' ')"/></ability></xsl:template>

    <xsl:template match="stats">
Stats: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="rarity">
Rarity: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="type">
Type: <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="cardend">"<xsl:text>&#xa;</xsl:text></xsl:template>

    <xsl:template match="text()"/>


</xsl:stylesheet>