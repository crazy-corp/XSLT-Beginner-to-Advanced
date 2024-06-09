<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


      <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/> 
    <xsl:template match="/">
    <ResultXml>
        <xsl:apply-templates select="/MainNode/IterativeNode" />
    </ResultXml>
    </xsl:template>
    <xsl:template match="IterativeNode">
        <xsl:for-each select="//Node1">
            <TextInsideNode1>
                <xsl:value-of select="." />
            </TextInsideNode1>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
