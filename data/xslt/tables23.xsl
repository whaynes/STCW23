<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!--  \n -->
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY t "&#09;"><!-- tab -->
<!ENTITY tt "&#09;&#09;">
]>
<!-- This stylesheet takes an xml file 'tables.xml', and converts it to multimarkdown for conversion by jeykll to a website.
     The input file is an export from filemaker which has been transformed by Filemaker_export.xsl to something easier to work with. 
     The transformation produces one markdown document per table.     
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fmp="http://www.filemaker.com/fmpxmlresult" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="fmp ">
  <xsl:preserve-space elements="kup competence"/>
  <xsl:output method="xml" indent="yes" encoding="UTF-8" omit-xml-declaration="yes"/>
  <!-- path is overridden in generate-tables.xsl -->
  <xsl:variable name="path" select="'.'"/>



  <xsl:template match="RECORD">
    <xsl:text>---</xsl:text>
    <xsl:text>&cr;title: STCW Table </xsl:text>
    <xsl:value-of select="Table"/>
    <xsl:text>&cr;subtitle: </xsl:text>
    <xsl:value-of select="Tables--Table_Name"/>
    <xsl:text>&cr;---&rr;</xsl:text>

    <xsl:variable name="table" select="current-group()"/>
    <div>
      <xsl:for-each-group select="$table" group-by="function">
        <xsl:text>&rr;</xsl:text>
        <h3><b>Function: </b><xsl:value-of select="current-group()[1]/function"/></h3>
        <table class='competences'>
          <colgroup>
            <col span="1" style="width: 25%;"/>
            <col span="1" style="width: 65%;"/>
            <col span="1" style="width: 10%;"/>
          </colgroup>
          <tbody>
            <tr>
              <th class="twenty competence">Competence</th>
              <th class="seventy kup">Knowledge, Understanding &amp; Proficiency</th>
              <th class="ten location">Location(s)</th>
            </tr>
            <xsl:for-each-group select="current-group()" group-by="competence">
              <xsl:variable name="competence">
                <xsl:text>&rr;</xsl:text>
                <td rowspan="{count(current-group())}" class='competence'>
                  <xsl:attribute name="id" 
            select="concat(Tables--Table_Short_Name, '-', FunctionNo, CompetenceNo)"/>

                  <p>{{ "&cr;<xsl:value-of select="current-group()[1]/competence"/>" | markdownify }}</p>
                </td>
              </xsl:variable>
              <xsl:for-each-group select="current-group()" group-by="kup">
                <tr>
                  <xsl:if test="position() = 1">
                    <xsl:copy-of select="$competence"/>
                  </xsl:if>
                    <xsl:text>&rr;</xsl:text>
                  <td class='kup' id='{kupNo}'>
                    <xsl:text>&cr;</xsl:text>
                    <p class='kupNo'><xsl:value-of select="substring-after(kupNo, '-')"/></p>
                    <xsl:text/>&cr;{{"&cr;<xsl:value-of select="current-group()[1]/kup"/>" | markdownify }} <xsl:text/>
                  </td>
                  <xsl:text>&rr;</xsl:text>
                  <td class='location'>
                    <xsl:text>{{"&cr;</xsl:text>
                    <xsl:for-each select="distinct-values(Courses_K--CourseNo | Courses_P--CourseNo)">
                      <xsl:text>&cr;[</xsl:text>
                      <xsl:value-of select="replace(., '-', '&#x2011;')"/>](/stcw23/courses/<xsl:value-of select="."/>.html)<xsl:text/>
                      <xsl:if test="not(position() = last())"><xsl:text>\\</xsl:text></xsl:if>
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



  <xsl:template name="index">
    <!-- Creates index pages based on the parameters -->
    <xsl:param name="doc"/>
    <xsl:param name="range"/>
    <xsl:param name="title"/>
    <xsl:result-document href="{$path}/{$doc}">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: NVIC Tasks (</xsl:text>
      <xsl:value-of select="$title"/>
      <xsl:text>)&cr;</xsl:text>
      <xsl:text>subtitle: and associated STCW Tables&cr;</xsl:text>
      <xsl:text>---&rr;</xsl:text>
      <xsl:text>&rr;|  NVIC Tasks  |    STCW Table     |  Name   |</xsl:text>
      <xsl:text>&cr;|:-------------|:------------|:--------------|&cr;</xsl:text>
      <xsl:for-each-group select="$range" group-by="Table">
        <xsl:text/>| <xsl:call-template name="TaskLink"/> | [<xsl:value-of select="Table"/>](<xsl:value-of select="Tables--TableNo"/>.html) | <xsl:value-of select="Tables--Table_Name"/> | &cr;<xsl:text/>
      </xsl:for-each-group>
      <xsl:text>{: .sortable }</xsl:text>
    </xsl:result-document>
  </xsl:template>


  <xsl:template name="TaskLink">
    <xsl:if test="count(NVIC_Tasks_1--taskNo)">
      <xsl:text>[</xsl:text>
      <xsl:value-of select="Tables--Table_Short_Name"/>
      <xsl:text> Tasks](index_</xsl:text>
      <xsl:value-of select="translate(Tables--Table_Short_Name, '-', '')"/>
      <xsl:text>.html)</xsl:text>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
