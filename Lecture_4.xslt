<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <ResultXml>
            <xsl:apply-templates select="/MainNode/IterativeNode" />
        </ResultXml>
    </xsl:template>
    <xsl:template match="IterativeNode">
        <xsl:for-each select="./SubNodeInsideNode1">
            <xsl:choose>
                <xsl:when test="./value &gt; 8">
                    <FirstWhen>
                        <xsl:copy-of select="."/>
                    </FirstWhen>
                </xsl:when>
                <xsl:when test="./value &gt; 7">
                    <SecondWhen>
                        <xsl:copy-of select="."/>
                    </SecondWhen>
                </xsl:when>
                <xsl:otherwise>
                    <OtherWise>InsideOtherWise</OtherWise>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
