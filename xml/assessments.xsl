<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet writes index files to the tasks folder for each table -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xpath-default-namespace="http://www.filemaker.com/fmpdsoresult" version="2.0">
   <xsl:strip-space elements="*"/>

   <xsl:variable name="folder">../html/assessments</xsl:variable>

   <xsl:template match="/">
      <xsl:for-each-group select="//ROW" group-by="assessment_category">
         <xsl:result-document method="text" href="{$folder}/{current-grouping-key()}/index_{current-grouping-key()}.txt">
            <xsl:text/>#title "Index - <xsl:value-of select="current-grouping-key()"/>" &cr;<xsl:text/>
            <xsl:text>#linkjavascripts "sorttable"&rr;</xsl:text>
            <xsl:call-template name="buildTable"></xsl:call-template>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>
   
   
   

<xsl:template name="buildTable">
   <xsl:text>| No.   | Assessment | Description | &cr;</xsl:text>
   <xsl:text>|:-----:|:----------:|:------------|&cr;</xsl:text>
   <xsl:apply-templates select="current-group()">
      <xsl:sort select="assessmentNo" order="ascending"/>
   </xsl:apply-templates>
</xsl:template>


   <!-- line text -->
   <xsl:template match="ROW">
      <xsl:text/>|<xsl:value-of select="position()"/>. | [<xsl:value-of select="assessmentNo"
      />](<xsl:value-of select="assessmentNo"/>) | <xsl:apply-templates
         select="assessment_name"/><xsl:apply-templates select="status"/><xsl:text> | &cr;</xsl:text>
   </xsl:template>
   
   <xsl:template match="status">
      <xsl:if test=". = 'New'"> &lt;%= imageref("new", {class:"rstar"}) %> </xsl:if>
      <xsl:if test=". = 'Mod'"> &lt;%= imageref("mod", {class:"rstar"}) %> </xsl:if>     
   </xsl:template>

   <xsl:template match="*">
      <xsl:value-of select="normalize-space(.)"/>
   </xsl:template>
</xsl:stylesheet>
