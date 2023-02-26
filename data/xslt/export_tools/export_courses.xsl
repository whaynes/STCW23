<?xml version="1.0" encoding="UTF-8"?>
<!--  This exports filemaker's
  CourseNo, Course Name, Major, course_content_mmd as xml-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fm="http://www.filemaker.com/fmpxmlresult" exclude-result-prefixes="fm">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no" cdata-section-elements="description"/>
  <xsl:template match="/">
    <xsl:element name="courses">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="//fm:ROW">
    <xsl:element name="course">
      <xsl:attribute name="cnum">
        <xsl:value-of select="fm:COL[1]/fm:DATA"/>
      </xsl:attribute>
      <xsl:attribute name="cname">
        <xsl:value-of select="fm:COL[2]/fm:DATA"/>
      </xsl:attribute>
      <xsl:attribute name="major">
        <xsl:value-of select="fm:COL[3]/fm:DATA"/>
      </xsl:attribute>
      <xsl:element name="description">
        <xsl:value-of select="fm:COL[4]/fm:DATA"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="fm:ERRORCODE"/>

</xsl:stylesheet>
