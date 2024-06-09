<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/> 
    <xsl:template match="/">
    <ResultXml>
        <xsl:apply-templates select="/MainNode/IterativeNode" />
    </ResultXml>
    </xsl:template>
    <xsl:template match="IterativeNode">
        <xsl:for-each select="./SubNodeInsideNode1">
        <xsl:if test="./Exist">
            <IfSucceded>
                <xsl:value-of select="Node2" />
            </IfSucceded>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>