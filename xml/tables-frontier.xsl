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
   <xsl:import href="tables.xsl"/>
   
   <xsl:output method="text" version="1.0" encoding="UTF-8" indent="no" />
   <xsl:strip-space elements="*" />
   <xsl:preserve-space elements="text" />
   <xsl:variable name="path">../html/tables</xsl:variable>
   
   <xsl:template match="/ROOT">
      <!-- main entrance point -->
      <xsl:call-template name="buildPages" />
      <xsl:call-template name="buildIndexes" />
   </xsl:template>
   
   <xsl:template name="buildPages">
      <xsl:for-each-group select="RECORD" group-by="Table">
         <xsl:result-document href="{$path}/{Tables--TableNo}.txt">
            <xsl:apply-templates select="."/>
         </xsl:result-document>
      </xsl:for-each-group>
   </xsl:template>
   <xsl:template name="buildIndexes">
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_tables.txt'" />
         <xsl:with-param name="title" select="'STCW Tables'" />
         <xsl:with-param name="range" select="RECORD" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_common_tables.txt'" />
         <xsl:with-param name="title" select="'Common STCW Tables'" />
         <!-- Courses for both majors are "common" -->
         <xsl:with-param name="range" select="RECORD[contains(Tables--Major,'MENG') and contains(Tables--Major,'MTRA')]" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_deck_tables.txt'" />
         <xsl:with-param name="title" select="'Deck STCW Tables'" />
         <xsl:with-param name="range" select="RECORD[Tables--Major='MTRA']" />
      </xsl:call-template>
      <xsl:call-template name="index">
         <xsl:with-param name="doc" select="'index_eng_tables.txt'" />
         <xsl:with-param name="title" select="'Engineering STCW tables'" />
         <xsl:with-param name="range" select="RECORD[Tables--Major='MENG']" />
      </xsl:call-template>
   </xsl:template>
   

   
</xsl:stylesheet>
