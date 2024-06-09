<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8" omit-xml-declaration="yes"/>
    <xsl:template match="/">
            <xsl:apply-templates select="MainNode/Wrapper"/>
            <xsl:apply-templates select="MainNode/IterativeNode"/>
    </xsl:template>
    <xsl:template match="Wrapper">
    <xsl:value-of select="FirstNode"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="SecondNode"/>
    <xsl:text>,</xsl:text>
    <xsl:value-of select="ThirdNode"/>
    </xsl:template>
    <xsl:template match="IterativeNode">
    <xsl:text>&#xa;</xsl:text>
       <xsl:for-each select="./ChildIterator">
        <xsl:value-of select="."/>
        <xsl:if test="position()!=last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
       </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
