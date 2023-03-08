<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" >
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY nbsp "&#160;" > 
]>
<!-- This stylesheet writes index files to the tasks folder for each table -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:h="http://www.w3.org/1999/xhtml"
   xpath-default-namespace="http://www.filemaker.com/fmpdsoresult" version="2.0">
   <xsl:strip-space elements="*"/>
   <xsl:output method="text"/>
   <xsl:variable name="folder">../../jekyll/tasks</xsl:variable>

   <xsl:template match="/">
      <xsl:call-template name="Index"/>
      <xsl:call-template name="EachNVIC"/>
      <xsl:call-template name="GroupOfTasks">
         <xsl:with-param name="Label">Engineering</xsl:with-param>
         <xsl:with-param name="Tasks" select="//ROW[Major/DATA = 'MENG']"/>
      </xsl:call-template>
      <xsl:call-template name="GroupOfTasks">
         <xsl:with-param name="Label">Deck</xsl:with-param>
         <xsl:with-param name="Tasks" select="//ROW[Major/DATA= 'MTRA']"/>
      </xsl:call-template>
      <xsl:call-template name="GroupOfTasks">
         <xsl:with-param name="Label">Common</xsl:with-param>
         <xsl:with-param name="Tasks" select="//ROW[Major[normalize-space() = 'MTRA MENG'] ] |//ROW[Major[normalize-space() = 'MENG MTRA'] ]"/>
      </xsl:call-template>

   </xsl:template>

   <xsl:template name="Index">
      <!-- makes the main index page -->
      <xsl:result-document method="text" href="{$folder}/index_nvics.md">
         <xsl:text>---&cr;</xsl:text>
         <xsl:text>title: "NVIC Tasks"&cr;</xsl:text>
         <xsl:text>subtitle: MMA methods mapped to NVIC Tasks &cr;</xsl:text>
          <xsl:text>---&rr;</xsl:text>
         <xsl:text>|NVIC  | Methods | Name | D/E |&cr;</xsl:text>
         <xsl:text>|:-----:|:-----|:--------|:---:|&cr;</xsl:text>
         <xsl:for-each-group select="//ROW" group-by="Table_Short_Name/DATA">
            <xsl:sort select="Table" order="ascending"/>
            <xsl:text/>| [<xsl:value-of select="nvic_number"/>]({{ site.baseurl}}/assets/images/<xsl:value-of select="nvic_number"/>.pdf)<xsl:text/>
            <xsl:text/>| [<xsl:value-of select="current-grouping-key()"/> Tasks]({{ site.baseurl}}/tasks/<xsl:value-of select="Table_Short_Name"/>) <xsl:text/>
            <xsl:text/>| <xsl:value-of select="Table_Name"/>
            <xsl:text/>| <xsl:apply-templates select="Major"/>|&cr;<xsl:text/>
            
         </xsl:for-each-group>
      </xsl:result-document>
   </xsl:template>



   <xsl:template name="EachNVIC">
      <!-- makes index page for individual NVICs -->
      <xsl:for-each-group select="//ROW" group-by="Table_Short_Name/DATA">
         <xsl:sort select="sortable_taskNo" order="ascending"/>
         <xsl:result-document method="text"
            href="{$folder}/{Table_Short_Name}/index.md">
             <xsl:text>---&cr;</xsl:text>
             <xsl:text>title: </xsl:text><xsl:value-of select="current-grouping-key()"/> Tasks&cr;<xml:text/>
            <xsl:call-template name="build_table"><xsl:with-param name="rows"
                  select="current-group()"/>
            </xsl:call-template>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>

   <xsl:template name="GroupOfTasks">
      <xsl:param name="Label"/>
      <xsl:param name="Tasks"/>
      <xsl:result-document method="text" href="{$folder}/index_{$Label}_tasks.md">
         <xsl:text>---&cr;</xsl:text>
          <xsl:text/>title: <xsl:value-of select="$Label"/> Tasks&cr;<xsl:text/>
        <xsl:text>---</xsl:text>
         <xsl:for-each-group select="$Tasks" group-by="Table_Short_Name/DATA">
            <xsl:call-template name="build_table">
               <xsl:with-param name="rows" select="current-group()"/>
            </xsl:call-template>
           <xsl:text>&rr;</xsl:text>
         </xsl:for-each-group>
      </xsl:result-document>
   </xsl:template>



   <xsl:template name="build_table">
      <xsl:param name="rows"/>
      <xsl:text/>&rr;### <xsl:value-of select="Table_Name"/>
      <xsl:text/>&rr;#### NVIC <xsl:value-of select="nvic_number"/>
      <xsl:text>&rr;| No.   | Task | Description | Location |&cr;</xsl:text>
      <xsl:text>|:-----:|:----:|:------------|:-------|&cr;</xsl:text>
      <xsl:apply-templates select="$rows">
         <xsl:sort select="sortable_taskNo" order="ascending"/>
      </xsl:apply-templates>
      <!-- call line text -->
   </xsl:template>

   <!-- line text -->
   <xsl:template match="ROW">
      <xsl:text/>| <xsl:value-of select="position()"/>. | <xsl:value-of select="mmd_link_task"/><xsl:text> | </xsl:text>
      <xsl:apply-templates select="task_name"/>
      <xsl:apply-templates select="status"/>
      <xsl:text> | </xsl:text>
      <xsl:apply-templates
         select="mmd_link_to_this_assessment/DATA | mmd_link_table/DATA | mmd_link_to_this_course/DATA"
      />|&cr;<xsl:text/>
   </xsl:template>


   <xsl:template match="text | task_name">
      <!-- strip leading/trailing space-->
      <xsl:value-of select="normalize-space(.)"/>
   </xsl:template>

   <xsl:template match="mmd_link_to_this_assessment/DATA | mmd_link_table/DATA | mmd_link_to_this_course/DATA">
      <xsl:value-of select="."/>
      <xsl:if test="position() != last()">&lt;br/></xsl:if>
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
