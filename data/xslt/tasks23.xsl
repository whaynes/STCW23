<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" >
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY nbsp "&#160;" > 
]>
<!-- This stylesheet writes index files to the tasks folder for each table -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
  <xsl:output method="text"/>
  <xsl:strip-space elements="*"/>
  <xsl:variable name="folder">../../jekyll/_tasks</xsl:variable>
  <xsl:template match="RECORDS">
    <xsl:for-each-group select="RECORD" group-by="Table_Short_Name">
      <xsl:sort select="sortable_taskNo" order="ascending"/>
      <xsl:call-template name="EachNVIC"/>
    </xsl:for-each-group>
    <xsl:call-template name="Index"/>
    <xsl:call-template name="GroupOfTasks">
      <xsl:with-param name="Label">MENG</xsl:with-param>
      <xsl:with-param name="Tasks" select="RECORD[Major='MENG']"/>
    </xsl:call-template>
    <xsl:call-template name="GroupOfTasks">
      <xsl:with-param name="Label">MTRA</xsl:with-param>
      <xsl:with-param name="Tasks" select="RECORD[Major='MTRA']"/>
    </xsl:call-template>
    <xsl:call-template name="GroupOfTasks">
      <xsl:with-param name="Label">Common</xsl:with-param>
      <xsl:with-param name="Tasks" select="RECORD[normalize-space(Major)='MENG MTRA'] | RECORD[normalize-space(Major)='MTRA MENG']"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="GroupOfTasks">
    <xsl:param name="Label"/>
    <xsl:param name="Tasks"/>
    <xsl:result-document method="text" href="{$folder}/{$Label}.md">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: STCW Tasks (</xsl:text>
      <xsl:value-of select="$Label"/>)&cr;<xsl:text/>
      <xsl:text>subtitle: </xsl:text>
      <xsl:text>for all </xsl:text>
      <xsl:choose >
        <xsl:when test="$Label='MENG'">marine engineering</xsl:when>
        <xsl:when test="$Label='MTRA'">marine transportation</xsl:when>
        <xsl:when test="$Label='Common'">licenced major</xsl:when>
      </xsl:choose>
      <xsl:text> students&cr;</xsl:text>
      <xsl:text>---&rr;</xsl:text>
      <xsl:for-each-group select="$Tasks" group-by="Table_Short_Name">
        <xsl:call-template name="build_table">
          <xsl:with-param name="rows" select="current-group()"/>
        </xsl:call-template>
      </xsl:for-each-group>
    </xsl:result-document>
  </xsl:template>
  <xsl:template name="Index">
    <!-- makes the main index page -->
    <xsl:result-document method="text" href="{$folder}/index.md">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: "Assessment Tasks"&cr;</xsl:text>
      <xsl:text>subtitle: USCG NVICs mapped to MMA Tasks &cr;</xsl:text>
      <xsl:text>task_number: nil&cr;</xsl:text>
      <xsl:text>---&rr;</xsl:text>
      <xsl:text>|NVIC  | Name | MMA Tasks | D/E |&cr;</xsl:text>
      <xsl:text>|:-----:|:-----|:--------|:---:|&cr;</xsl:text>
      <xsl:for-each-group select="RECORD" group-by="Table_Short_Name">
        <xsl:sort select="Table" order="ascending"/>
        <xsl:text/>| [<xsl:value-of select="nvic_number"/>]({{ site.baseurl}}/assets/images/nvic-<xsl:value-of select="nvic_number"/>.pdf)<xsl:text/>
        <xsl:text/>| <xsl:value-of select="Table_Name"/>
        <xsl:text/>| [<xsl:value-of select="current-grouping-key()"/> Tasks]({{ site.baseurl}}/tasks/<xsl:value-of select="Table_Short_Name"/>) <xsl:text/>
        <xsl:text/>| <xsl:apply-templates select="Major"/>|&cr;<xsl:text/>
      </xsl:for-each-group>
    </xsl:result-document>
  </xsl:template>
  <xsl:template name="EachNVIC">
    <!-- makes index page for individual NVICs -->
    <xsl:result-document method="text" href="{$folder}/{current-grouping-key()}.md">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: STCW Tasks (</xsl:text><xsl:value-of select="current-grouping-key()"/>)&cr;<xml:text/>
      <xsl:text>name: </xsl:text><xsl:value-of select="current-grouping-key()"/>
      <xsl:text>&cr;task_number: nil&cr;</xsl:text>
      <xsl:text>subtitle: </xsl:text><xsl:value-of select="Table_Name"/>
      <xsl:text>&cr;---&cr;</xsl:text>
      <xsl:call-template name="build_table"><xsl:with-param name="rows" select="current-group()"/>
      </xsl:call-template>
    </xsl:result-document>
  </xsl:template>
  <xsl:template name="build_table">
    <xsl:param name="rows"/>
    <xsl:text/>&rr;#### NVIC <xsl:value-of select="nvic_number"/> -- <xsl:value-of select="Table_Name"/>
    <xsl:text>&rr;| No.   | NVIC Task | Description | Location |&cr;</xsl:text>
    <xsl:text>|:-----:|:----:|:------------|:-------:|&cr;</xsl:text>
    <xsl:apply-templates select="$rows">
      <xsl:sort select="sortable_taskNo" order="ascending"/>
    </xsl:apply-templates>
    <xsl:text>{: .sortable .tasks}&cr;</xsl:text>
    <!-- call line text -->
  </xsl:template>
  <!-- line text -->
  <xsl:template match="RECORD">
    <xsl:text/>| <xsl:value-of select="position()"/>. | <xsl:value-of select="mmd_link_task"/><xsl:text> | </xsl:text>
    <xsl:apply-templates select="task_name"/>
    <xsl:apply-templates select="status"/>
    <xsl:text> | </xsl:text>
    <xsl:apply-templates select="mmd_link_to_this_assessment | mmd_link_table | mmd_link_to_this_course"/>|&cr;<xsl:text/>
  </xsl:template>
  <xsl:template match="text | task_name">
    <!-- strip leading/trailing space-->
    <xsl:value-of select="normalize-space(.)"/>
  </xsl:template>
  <xsl:template match="mmd_link_to_this_assessment | mmd_link_table | mmd_link_to_this_course">
    <xsl:value-of select="."/>
    <xsl:if test="position() != last()">&lt;br/> </xsl:if>
  </xsl:template>
  <xsl:template match="status">
    <xsl:if test=". = 'New'"> ![]({{site.baseurl}}/assets/images/new.jpg) </xsl:if>
    <xsl:if test=". = 'Mod'"> ![]({{site.baseurl}}/assets/images/mod.jpg) </xsl:if>
  </xsl:template>
  <xsl:template match="Major">
    <xsl:choose>
      <xsl:when test=". = 'MTRA'">
        <xsl:text>D</xsl:text>
      </xsl:when>
      <xsl:when test=". = 'MENG'">
        <xsl:text>E</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>D/E</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
