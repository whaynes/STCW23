<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!--  \n -->
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY t "&#09;"><!-- tab -->
<!ENTITY tt "&#09;&#09;">
]>

<!-- This stylesheet 
     builds and writes a page for each stcw table
     build an main index and an index for each table.
     The 'tables.xml' has been transformed by Filemaker_export.xsl to make it easier to work with. 
-->
<xsl:stylesheet
  version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fmp="http://www.filemaker.com/fmpxmlresult"
  xmlns:html="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="fmp html">
  <xsl:strip-space
    elements="*"/>
  <xsl:preserve-space
    elements="text kup competence"/>
  <xsl:variable
    name="path">../../jekyll/</xsl:variable>
  <xsl:template
    match="/RECORDS">
    <!-- main entrance point -->
    <xsl:call-template
      name="buildPages"/>
    <xsl:call-template
      name="buildIndex"/>
  </xsl:template>
  <xsl:template
    name="buildPages">
    <xsl:for-each-group
      select="RECORD"
      group-by="Table">
      <xsl:result-document
        href="{$path}/_tables/{TableNo}.html"
        omit-xml-declaration="yes">
        <xsl:apply-templates
          select="."/>
      </xsl:result-document>
    </xsl:for-each-group>
  </xsl:template>
  <xsl:template
    name="buildIndex">
    <!-- this builds the main index file and an index for the /tables-->
    <xsl:variable
      name="index"><![CDATA[---
title: MMA STCW Program 2024
subtitle: STCW Tables
layout: "table_index"
table_number: nil
---
]]>
    </xsl:variable>
    <xsl:result-document
      method="text"
      href="{$path}/index.html">
      <xsl:value-of select="$index"/>
    </xsl:result-document>
    <xsl:result-document
      method="text"
      href="{$path}/_tables/index.html">
      <xsl:value-of
        select="$index"/>
    </xsl:result-document>
  </xsl:template>
  <xsl:template
    match="RECORD">
    <!-- This template builds the page for each table -->
    <xsl:text>---</xsl:text>
    <xsl:text>&cr;title: STCW Table </xsl:text>
    <xsl:value-of
      select="Table"/>
    <xsl:text>&cr;subtitle: </xsl:text>
    <xsl:value-of
      select="Table_Name"/>
    <xsl:text>&cr;table_number: </xsl:text>
    <xsl:value-of
      select="TableNo"/>
    <xsl:text>&cr;Major: </xsl:text>
    <xsl:choose>
      <xsl:when
        test="Major = 'MENG'">E</xsl:when>
      <xsl:when
        test="Major = 'MTRA'">D</xsl:when>
      <xsl:otherwise>D/E</xsl:otherwise>
    </xsl:choose>
    <xsl:text>&cr;---&rr;</xsl:text>
    <xsl:variable
      name="table"
      select="current-group()"/>
    <div>
      <xsl:for-each-group
        select="$table"
        group-by="function">
        <xsl:text>&rr;</xsl:text>
        <h3>
          <b>Function: </b>
          <xsl:value-of
            select="current-group()[1]/function"/>
        </h3>
        <table
          class="competences">
          <colgroup>
            <col
              span="1"
              style="width: 25%;"/>
            <col
              span="1"
              style="width: 65%;"/>
            <col
              span="1"
              style="width: 10%;"/>
          </colgroup>
          <tbody>
            <tr>
              <th
                class="twenty competence">Competence</th>
              <th
                class="seventy kup">Knowledge, Understanding &amp; Proficiency</th>
              <th
                class="ten location">Location(s)</th>
            </tr>
            <xsl:for-each-group
              select="current-group()"
              group-by="competence">
              <xsl:variable
                name="competence">
                <xsl:text>&rr;</xsl:text>
                <td
                  rowspan="{count(current-group())}"
                  class="competence">
                  <xsl:attribute
                    name="id"
                    select="concat(Table_Short_Name, '-', FunctionNo, CompetenceNo)"/>
                  <p>{{ "&cr;<xsl:value-of
                      select="current-group()[1]/competence"/>" | markdownify }}</p>
                </td>
              </xsl:variable>
              <xsl:for-each-group
                select="current-group()"
                group-by="kup">
                <tr>
                  <xsl:if
                    test="position() = 1">
                    <xsl:copy-of
                      select="$competence"/>
                  </xsl:if>
                  <xsl:text>&rr;</xsl:text>
                  <td
                    class="kup"
                    id="{kupNo}">
                    <xsl:text>&cr;</xsl:text>
                    <p
                      class="kupNo"><xsl:value-of
                        select="substring-after(kupNo, '-')"/></p>
                    <xsl:text/>&cr;{{"&cr;<xsl:value-of
                      select="current-group()[1]/kup"/>" | markdownify }} <xsl:text/>
                  </td>
                  <xsl:text>&rr;</xsl:text>
                  <td
                    class="location">
                    <xsl:text>{{"&cr;</xsl:text>
                    <xsl:for-each
                      select="distinct-values(CourseNo)">
                      <xsl:text>&cr;[</xsl:text>
                      <xsl:value-of
                        select="replace(., '-', '&#x2011;')"/>](/stcw/2023/courses/<xsl:value-of
                        select="."/>.html)<xsl:text/>
                      <xsl:if
                        test="not(position() = last())"><xsl:text>\\</xsl:text></xsl:if>
                    </xsl:for-each>
                    <xsl:text>" | markdownify }} </xsl:text>
                  </td>
                </tr>
              </xsl:for-each-group>
            </xsl:for-each-group>
          </tbody>
        </table>
      </xsl:for-each-group>
    </div>
  </xsl:template>
</xsl:stylesheet>
