<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <ResultXml>        
            <xsl:apply-templates/>
        </ResultXml>
    </xsl:template>
    <xsl:template match="Wrapper">
        <FirstTempExecution1>
            <xsl:call-template name="FirstTemplate">                  
                <xsl:with-param name="hahaha" select="' - Mango - '"/>                  
            </xsl:call-template>
        </FirstTempExecution1>
        <FirstTempExecution2>
            <xsl:call-template name="FirstTemplate">                  
                <xsl:with-param name="hahaha" select="./SecondNode"/>                  
            </xsl:call-template>
        </FirstTempExecution2>
        <SecondTempExecution1>
            <xsl:call-template name="SecondTemplate">                  
                <xsl:with-param name="hehehe" select="'_Potato_'"/>                  
            </xsl:call-template>
        </SecondTempExecution1>
    </xsl:template>
    <xsl:template name="FirstTemplate">
        <xsl:param name="hahaha"/>
        <xsl:value-of select="./FirstNode"/>
        <xsl:value-of select="$hahaha"/>
    </xsl:template>
    <xsl:template name="SecondTemplate">
        <xsl:param name="hehehe"/>
        <xsl:value-of select="./SecondNode"/>
        <xsl:value-of select="concat($hehehe,./ThirdNode)"/>
    </xsl:template>
</xsl:stylesheet>

