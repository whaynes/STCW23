<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:variable name="folder">../courses</xsl:variable>
  <xsl:template match="/courses">
    <xsl:for-each-group select="course" group-by="@major">
      <xsl:sort select="@cnum" order="ascending"/>
      <xsl:result-document method="text" href="{$folder}/index_{replace(current-grouping-key(),'MENG\sMTRA','Common')}_Courses.md">
        <xsl:text/>---&cr;title: "<xsl:value-of select="replace(current-grouping-key(), 'MENG\sMTRA', 'Common')"/> STCW Courses" &cr;<xsl:text/>
        
        <xsl:text>---&rr;</xsl:text>
        <xsl:text>&lt;div class='eighty' markdown='1' >&rr;</xsl:text>
        <xsl:text>| No.   | Course Number | Course Name |&cr;</xsl:text>
        <xsl:text>|:-----:|:--------------|:------------|&cr;</xsl:text>
        <xsl:apply-templates select="current-group()" mode="line"/>
        <xsl:text>{: .sortable }&cr;</xsl:text>
        <xsl:text>&cr;&lt;/div></xsl:text>
      </xsl:result-document>
    </xsl:for-each-group>
    <xsl:apply-templates select="course" mode="description"/>
  </xsl:template>

  <xsl:template match="course" mode="line">
    <xsl:text/>| <xsl:value-of select="position()"/>. | {% course <xsl:value-of select="@cnum"/> %} | <xsl:apply-templates select="@cname"/><xsl:text> |&cr;</xsl:text>
  </xsl:template>

<!-- write out a page for each course -->
  <xsl:template match="course" mode="description">
    <xsl:result-document method="text" href="{$folder}/{@cnum}.md">
      <xsl:value-of select="description"/>
    </xsl:result-document>
  </xsl:template>

</xsl:stylesheet>
