<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!--  \n -->
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY t "&#09;"><!-- tab -->
<!ENTITY tt "&#09;&#09;">
]>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
   xmlns:fmp="http://www.filemaker.com/fmpxmlresult"
   xmlns:html="http://www.w3.org/1999/xhtml" 
   exclude-result-prefixes="fmp html">
   <xsl:import href="tables23.xsl"/>
   
   <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no" />
   <xsl:strip-space elements="*" />
   <xsl:preserve-space elements="text" />
   <xsl:variable name="path">../../jekyll/_tables</xsl:variable>
   
   <xsl:template match="/RECORDS">
      <!-- main entrance point -->
      <xsl:call-template name="buildPages" />
      <xsl:call-template name="buildIndexes" />
   </xsl:template>
   
   <xsl:template name="buildPages">
      <xsl:for-each-group select="RECORD" group-by="Table">
         <xsl:result-document href="{$path}/{TableNo}.html">
            <xsl:apply-templates select="."/>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>
  
   <xsl:template name="buildIndexes">
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_tables.md'" />
         <xsl:with-param name="title" select="'All'" />
         <xsl:with-param name="range" select="RECORD" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_common_tables.md'" />
         <xsl:with-param name="title" select="'Common'" />
         <!-- Courses for both majors are "common" -->
         <xsl:with-param name="range" select="RECORD[contains(Major,'MENG') and contains(Major,'MTRA')]" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_deck_tables.md'" />
         <xsl:with-param name="title" select="'Deck'" />
         <xsl:with-param name="range" select="RECORD[Major='MTRA']" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_eng_tables.md'" />
         <xsl:with-param name="title" select="'Engineering'" />
         <xsl:with-param name="range" select="RECORD[Major='MENG']" />
      </xsl:call-template>
   </xsl:template>
   

   
</xsl:stylesheet>
