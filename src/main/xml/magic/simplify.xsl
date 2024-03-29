<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- http://stackoverflow.com/questions/723226/producing-a-new-line-in-xslt -->
    <!-- http://stackoverflow.com/questions/1390568/how-to-match-attributes-that-contain-a-certain-string -->
    <!-- http://www.w3schools.com/xsl/xsl_value_of.asp -->
    <!-- http://stackoverflow.com/questions/16573215/xslt-remove-leading-and-trailing-whitespace-of-all-attributes -->


    <xsl:template match="//header[contains(@class,'t-spoiler-header')]">
        <xsl:text>&#xa;</xsl:text>
        <cardstart/>
        <xsl:text>&#xa;</xsl:text>
        <xsl:apply-templates/>
        <xsl:if test="contains(@class,'rare')"><rarity>rare</rarity></xsl:if>
        <xsl:if test="contains(@class,'uncommon')"><rarity>uncommon</rarity></xsl:if>
        <xsl:if test="contains(@class,' common')"><rarity>common</rarity></xsl:if>
        <xsl:if test="contains(@class,'basic land')"><rarity>basic land</rarity></xsl:if>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="//span[contains(@class,'t-spoiler-type')]">
        <type><xsl:value-of select="."/></type>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="//html">
        <xsl:text>&#xa;</xsl:text>
        <foo>
            <xsl:apply-templates/>
        </foo>
    </xsl:template>

    <xsl:template match="//section[@class='t-spoiler-content']">

        <xsl:apply-templates/>

    </xsl:template>


    <xsl:template match="h2">
        <name>
            <xsl:value-of select="a"/>
        </name>
        <xsl:apply-templates/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="ul[@class='t-spoiler-mana']">
        <cost>
            <xsl:apply-templates/>
        </cost>
        <xsl:text>&#xa;</xsl:text>
        <startability/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="ul/span">
        <xsl:value-of select="."/>
    </xsl:template>


    <xsl:template match="//span[@class='t-spoiler-stat']">
        <stats>
            <xsl:value-of select="."/>
        </stats>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="//footer[@class='t-spoiler-footer']">
        <xsl:text>&#xa;</xsl:text>
        <endability/>
        <xsl:text>&#xa;</xsl:text>
        <xsl:apply-templates/>
        <cardend/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="//a[@class='j-search-html']">
        <xsl:text>&#xa;</xsl:text>
        <link>
            <xsl:value-of select="@href"/>
        </link>
    </xsl:template>


    <xsl:template match="//div[@class='t-spoiler-ability']/p"><ability><xsl:value-of select="replace(., '^\s+|\s+$', ' ')"/></ability></xsl:template>

    <xsl:template match="text()"/>



</xsl:stylesheet>