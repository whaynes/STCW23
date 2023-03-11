<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet writes index files to the assessments folder for each table -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>  
   <xsl:variable name="folder">../../jekyll/_assessments</xsl:variable>

  <xsl:template match="/assessments">
    <xsl:apply-templates select="assessment"/>
  </xsl:template>

<!-- write out a page for each assessment -->
  <xsl:template match="assessment">
    <xsl:result-document method="text" href="{$folder}/{@category}/{@number}.md">
      <xsl:text>---</xsl:text>
      <xsl:text>&cr;number: "</xsl:text><xsl:value-of select="@number"/>"<xsl:text/>
      <xsl:text>&cr;subtitle: "Assessment </xsl:text><xsl:value-of select="@number"/>"<xsl:text/>
      <xsl:text>&cr;title: "</xsl:text><xsl:value-of select="@name"/>"<xsl:text/>
      <xsl:text>&cr;category: "</xsl:text><xsl:value-of select="@category"/>"<xsl:text/>
      <xsl:text>&cr;status: "</xsl:text><xsl:value-of select="@status"/>"<xsl:text/>
      <xsl:text>&cr;cnum: "</xsl:text><xsl:value-of select="@cnum"/>"<xsl:text/>
      <xsl:text>&cr;---&cr;</xsl:text>
      <xsl:value-of select="markdown"/>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>
