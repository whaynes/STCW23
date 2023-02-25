<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet writes index files to the tasks folder for each table -->
<xsl:stylesheet 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:h="http://www.w3.org/1999/xhtml"   
   xpath-default-namespace="http://www.filemaker.com/fmpdsoresult" version="2.0">
   <xsl:strip-space elements="*"/>
   
   <xsl:variable name="folder">../html/courses</xsl:variable>
   
   <xsl:template match="/">
      <xsl:for-each-group select="//ROW" group-by="Major">
         <xsl:result-document method="text"
            href="{$folder}/index_{replace(current-grouping-key(),'MENG\sMTRA','Common')}_Courses.txt">
            <xsl:text/>#title "<xsl:value-of
               select="replace(current-grouping-key(),'MENG\sMTRA','Common')"/> STCW Courses" &cr;<xsl:text/>
            <xsl:text>#linkjavascripts "sorttable"&rr;</xsl:text>
            <xsl:text>&lt;div class='eighty'>&rr;</xsl:text>
            <xsl:text>| No.   | Course Number | Course Name |&cr;</xsl:text>
            <xsl:text>|:-----:|:--------------|:------------|&cr;</xsl:text>
            <xsl:apply-templates select="current-group()">
               <xsl:sort select="CourseNo" order="ascending"/>
            </xsl:apply-templates>
            <xsl:text>&cr;&lt;/div></xsl:text>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>
   
   <!-- line text -->
   <xsl:template match="ROW">
      <xsl:text/>| <xsl:value-of select="position()"/>. | [<xsl:value-of select="CourseNo"
      />](<xsl:value-of select="CourseNo"/>) | <xsl:apply-templates
         select="Course_Name"/><xsl:text> |&cr;</xsl:text>
   </xsl:template>
   
   <xsl:template match="text">
      <xsl:value-of select="normalize-space(.)"/>
   </xsl:template>
   
</xsl:stylesheet>
