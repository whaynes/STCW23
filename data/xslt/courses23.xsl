<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:variable name="folder">../_courses</xsl:variable>
  <xsl:template match="/courses">
    <xsl:apply-templates select="course"/>
  </xsl:template>

<!-- write out a page for each course -->
  <xsl:template match="course">
    <xsl:result-document method="text" href="{$folder}/{@cnum}.md">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>cnum: </xsl:text><xsl:value-of select="@cnum"/>
      <xsl:text>&cr;title: "</xsl:text><xsl:value-of select="@cname"/>"<xsl:text/>
      <xsl:text>&cr;subtitle: "Course </xsl:text><xsl:value-of select="@cnum"/>"<xsl:text/>
      <xsl:text>&cr;major: "</xsl:text>
      <xsl:choose>
        <xsl:when test="@major='MENG'">E</xsl:when>
         <xsl:when test="@major='MTRA'">D</xsl:when>
        <xsl:otherwise>D/E</xsl:otherwise>
      </xsl:choose>
      <xsl:text>"&cr;---&cr;</xsl:text>
      <xsl:value-of select="description"/>
    </xsl:result-document>
  </xsl:template>

</xsl:stylesheet>
