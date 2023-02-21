<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!--  \n -->
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY t "&#09;"><!-- tab -->
<!ENTITY tt "&#09;&#09;">
]>
<!-- This stylesheet takes an xml file 'tables.xml', and converts it to multimarkdown for conversion by rubyfrontier to a website.
     The input file is an export from filemaker which has been transformed by Filemaker_export.xsl to something easier to work with. 
     The transformation produces one markdown document per table.     
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:fmp="http://www.filemaker.com/fmpxmlresult" xmlns:html="http://www.w3.org/1999/xhtml"
   exclude-result-prefixes="fmp html">
   <!-- path is overridden in tables-frontier -->
   <xsl:variable name="path" select="'.'"/>

   <xsl:template match="RECORD">
      <xsl:apply-templates select="Table"/>
      <xsl:for-each-group select="current-group()" group-by="function">
         <xsl:call-template name="function"/>
      </xsl:for-each-group>
   </xsl:template>

   <xsl:template match="Table">
      <xsl:text/>#title "STCW Table <xsl:value-of select="."/>"&rr;<xsl:text/>
      <xsl:text/>## <xsl:value-of select="../Tables--Table_Name"/>
   </xsl:template>

   <xsl:template name="function">
      <xsl:text/>&rr;### Function [<xsl:value-of
         select="concat(Tables--Table_Short_Name, '-', FunctionNo)"/>]<xsl:text/>
      <xsl:text/>&rr;**<xsl:value-of select="function"/>**<xsl:text/>
      <xsl:text>&rr;&lt;table class='competences' markdown=1></xsl:text>
      <xsl:text>&cr;&lt;tr></xsl:text>
      <xsl:text/>&cr;&lt;th class='twenty competence'>Competence&lt;/th><xsl:text/>
      <xsl:text/>&cr;&lt;th class='seventy kup'>Knowledge, Understanding &amp; Proficiency&lt;/th><xsl:text/>
      <xsl:text/>&cr;&lt;th class='ten location'>Location(s)&lt;/th><xsl:text/>
      <xsl:text/>&cr;&lt;/tr><xsl:text/>
      <xsl:text>&cr;</xsl:text>
      <xsl:for-each-group select="current-group()" group-by="CompetenceNo">
         <xsl:variable name="competenceID"
            select="concat(Tables--Table_Short_Name, '-', FunctionNo, CompetenceNo)"/>
         <xsl:text/>&cr;&lt;!--rowstart class='competence' id='<xsl:value-of select="$competenceID"
            />' rowspan='<xsl:value-of select="count(current-group())"/>'-->&rr;<xsl:text/>
         <xsl:value-of select="competence"/>
         <xsl:text/>&rr;&lt;!--cellbreak <xsl:text/>
         <xsl:call-template name="tdtd"/>&cr;<xsl:text/>
         <xsl:for-each select="current-group()[position() > 1]">
            <xsl:text/>&cr;&lt;!--rowstart <xsl:text/>
            <xsl:call-template name="tdtd"/>
         </xsl:for-each>
      </xsl:for-each-group>
      <xsl:text>&cr;&lt;/table>&cr;</xsl:text>
   </xsl:template>

   <xsl:template name="tdtd">
      <!-- builds two table cells containing the kup, already converted to html, and the locations where this kup is covered -->
      <xsl:text/> class='kup' id='<xsl:value-of select="kupNo"/>'-->&cr;<xsl:text/>
      <xsl:text/>&cr;&lt;p class='kupNo'><xsl:value-of select="substring-after(kupNo, '-')"/>&lt;/p>&rr;<xsl:text/>
      <xsl:value-of select="kup"/>
      <xsl:call-template name="ListCourses"/>
   </xsl:template>

   <xsl:template name="index">
      <!-- Creates index pages based on the parameters -->
      <xsl:param name="doc"/>
      <xsl:param name="range"/>
      <xsl:param name="title"/>
      <xsl:result-document href="{$path}/{$doc}">
         <xsl:text>#title "</xsl:text>
         <xsl:value-of select="$title"/>
         <xsl:text>"&cr;#label "Index"&cr;</xsl:text>
         <xsl:text>&rr;## Minimum standard of competence for:&cr;</xsl:text>
         <xsl:text>&cr;|  STCW Table  |    Name     |  NVIC Tasks   |</xsl:text>
         <xsl:text>&cr;|:-------------|:------------|:--------------|&cr;</xsl:text>
         <xsl:for-each-group select="$range" group-by="Table">
            <xsl:text/>| [<xsl:value-of select="Table"/>](<xsl:value-of select="Tables--TableNo"
               />) | <xsl:value-of select="Tables--Table_Name"/>| <xsl:call-template name="TaskLink"
            /> | &cr;<xsl:text/>
         </xsl:for-each-group>
      </xsl:result-document>
   </xsl:template>

   <xsl:template name="ListCourses">
      <xsl:text/>&rr;&lt;!--cellbreak class='location'-->&rr;<xsl:text/>
      <xsl:for-each select="distinct-values(Courses_K--CourseNo | Courses_P--CourseNo)">
         <xsl:text/>[<xsl:value-of select="."/>](<xsl:value-of
            select="lower-case(translate(., '-', ''))"/>)  &cr;<xsl:text/>
      </xsl:for-each>
      <xsl:text/>&cr;&lt;!--rowend-->&cr;<xsl:text/>
   </xsl:template>

   <xsl:template name="TaskLink">
      <xsl:if test="count(NVIC_Tasks_1--taskNo)">
         <xsl:text>[</xsl:text>
         <xsl:value-of select="Tables--Table_Short_Name"/>
         <xsl:text> Tasks](index_</xsl:text>
         <xsl:value-of select="translate(Tables--Table_Short_Name, '-', '')"/>
         <xsl:text>)</xsl:text>
      </xsl:if>
   </xsl:template>

</xsl:stylesheet>
