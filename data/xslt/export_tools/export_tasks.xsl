<?xml version="1.0" encoding="UTF-8"?>
<!-- Outputs assesmment data --> 

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fm="http://www.filemaker.com/fmpxmlresult" exclude-result-prefixes="fm">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" cdata-section-elements="methods markdown"/>
  <xsl:template match="/">
    <xsl:element name="tasks">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="//fm:ROW">
    <xsl:element name="task">
      <xsl:attribute name="taskNo">
        <xsl:value-of select="fm:COL[1]/fm:DATA"/>
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="fm:COL[2]/fm:DATA"/>
      </xsl:attribute>
      <xsl:attribute name="table">
        <xsl:value-of select="fm:COL[3]/fm:DATA"/>
      </xsl:attribute>
      <xsl:element name="methods">
        <xsl:value-of select="fm:COL[4]/fm:DATA"/>
      </xsl:element>
      <xsl:element name="markdown">
        <xsl:value-of select="fm:COL[5]/fm:DATA"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="fm:ERRORCODE"/>

</xsl:stylesheet>
