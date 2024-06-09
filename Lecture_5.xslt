<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <ResultXml>
            <xsl:apply-templates select="MainNode/Wrapper"/>
            <xsl:apply-templates select="MainNode/IterativeNode"/>
        </ResultXml>
    </xsl:template>
    <xsl:template match="Wrapper">
        <AllChildElementsOfWrapper>
            <xsl:for-each select="./*">
                <xsl:value-of select="."/>
            </xsl:for-each>
        </AllChildElementsOfWrapper>
        <AllChildElementsOfWrapper1>
            <xsl:for-each select="child::*">
                <xsl:value-of select="."/>
                <xsl:text>,</xsl:text>
            </xsl:for-each>
        </AllChildElementsOfWrapper1>
        <AllChildElementsOfWrapper2>
            <xsl:for-each select="child::FourthNode">
                <xsl:value-of select="."/>
            </xsl:for-each>
        </AllChildElementsOfWrapper2>
        <AllChildElementsOfWrapper3>
           <xsl:value-of select="concat(./FirstNode,./SecondNode)"/>
        </AllChildElementsOfWrapper3>
    </xsl:template>
    <xsl:template match="IterativeNode">
        <MagicInsideIterativeNode>
            <xsl:value-of select="./ChildIterator[last()]"/>
            <xsl:value-of select="./ChildIterator[last()-1]"/>
            <xsl:value-of select="./ChildIterator[position()=1]"/>
            <xsl:value-of select="./ChildIterator[@firstattribute='attr_1']"/>
            <xsl:value-of select="./ChildIterator[@firstattribute='attr_2']"/>
            <xsl:variable name="Text1" select="./Unique1"/>
            <xsl:variable name="Text2" select="./Unique"/>
            <xsl:value-of select="concat($Text1,' - ',$Text2)"/>
        </MagicInsideIterativeNode>
    </xsl:template>
</xsl:stylesheet>
