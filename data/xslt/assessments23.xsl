<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet writes index files to the assessments folder for each table -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xpath-default-namespace="http://www.filemaker.com/fmpdsoresult" version="2.0">
   <xsl:strip-space elements="*"/>

   <xsl:variable name="folder">../../jekyll/assessments</xsl:variable>

   <xsl:template match="/">
      <xsl:for-each-group select="//ROW" group-by="assessment_category">
         <xsl:result-document method="text" href="{$folder}/{current-grouping-key()}/index.md">
            <xsl:text/>---&cr;title: <xsl:value-of select="current-grouping-key()"/> Assessments &cr;---&rr;<xsl:text/>
            <xsl:call-template name="buildTable"/>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>
   
   
   

<xsl:template name="buildTable">
   <xsl:text>| No.   | Assessment | Description | Location | &cr;</xsl:text>
   <xsl:text>|:-----:|:-----------|:------------| -------- | &cr;</xsl:text>
   <xsl:apply-templates select="current-group()">
      <xsl:sort select="assessmentNo" order="ascending"/>
   </xsl:apply-templates>
</xsl:template>


   <!-- line text -->
   <xsl:template match="ROW">
      <xsl:text/>|<xsl:value-of select="position()"/>. | [<xsl:value-of select="assessmentNo"
      />](<xsl:value-of select="assessmentNo"/>) | <xsl:apply-templates
         select="assessment_name"/><xsl:apply-templates select="status"/><xsl:text> | {% course </xsl:text>
         <xsl:value-of select="k_courseNo"/><xsl:text> %} |&cr;</xsl:text>    
   </xsl:template>
   
   <xsl:template match="status">
      <xsl:if test=". = 'New'"> ![]({{site.baseurl}}/assets/images/new.jpg) </xsl:if>
      <xsl:if test=". = 'Mod'"> ![]({{site.baseurl}}/assets/images/mod.jpg) </xsl:if>     
   </xsl:template>
  
   <xsl:template match="*">
      <xsl:value-of select="normalize-space(.)"/>
   </xsl:template>
</xsl:stylesheet>
