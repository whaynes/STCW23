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

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fmp="http://www.filemaker.com/fmpxmlresult" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="fmp ">
  <xsl:preserve-space elements="kup competence"/>
  <xsl:output method="xml" indent="yes" encoding="UTF-8" omit-xml-declaration="yes"/>
  <!-- path is overridden in tables-frontier -->
  <xsl:variable name="path" select="'.'"/>



  <xsl:template match="RECORD">
    <xsl:text>---&cr;</xsl:text>
    <xsl:text> layout: page&cr;</xsl:text>
    <xsl:text>---&rr;</xsl:text>

    <xsl:variable name="table" select="current-group()"/>
    <div>
      <h1>STCW Table <xsl:value-of select="Table"/></h1>
      <h2><xsl:value-of select="Tables--Table_Name"/></h2>
      <xsl:for-each-group select="$table" group-by="function">
        <h3>Function</h3>
        <p>
          <b><xsl:value-of select="current-group()[1]/function"/></b>
        </p>
        <table>
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
                <td rowspan="{count(current-group())}">
                  <p>{{ "&cr;<xsl:value-of select="current-group()[1]/competence"/>" | markdownify }}</p>
                </td>
              </xsl:variable>
              <xsl:for-each-group select="current-group()" group-by="kup">
                <tr>
                  <xsl:if test="position() = 1">
                    <xsl:copy-of select="$competence"/>
                  </xsl:if>

                  <td>
                    <xsl:text/>{{"&cr;<xsl:value-of select="current-group()[1]/kup"/>" | markdownify }} <xsl:text/>
                  </td>
                  <td>
                    <xsl:text>{{" </xsl:text>
                    <xsl:for-each select="distinct-values(Courses_K--CourseNo | Courses_P--CourseNo)">
                      <xsl:text>&cr;[</xsl:text>
                      <xsl:value-of select="replace(., '-', '&#x2011;')"/>](/courses/<xsl:value-of select="lower-case(translate(., '-', ''))"/>.html)<xsl:text/>
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

  <!--  <xsl:template name="function">

    <div id="{concat(Tables-\-Table_Short_Name, '-', FunctionNo)}" markdown="1">
      <xsl:for-each-group select="." group-by="CompetenceNo">

        <h3>Function: <xsl:value-of select="function"/></h3>
        <p>
          <xsl:value-of select="count(current-group())"/>
        </p>
        <table class="competences">
          <tr>
            <th class="twenty competence">Competence</th>
            <th class="seventy kup">Knowledge, Understanding &amp; Proficiency</th>
            <th class="ten location">Location(s)</th>
          </tr>
          <xsl:call-template name="competences"/>
        </table>
      </xsl:for-each-group>
    </div>
  </xsl:template> -->

  <!-- <xsl:template name="competences">
    <tr>
      <td rowspan="{count(current-group())}">
        <xsl:value-of select="competence"/>
      </td>
    </tr>
  </xsl:template>-->

  <!--  <xsl:template match="function">
    <div id="{concat(Tables-\-Table_Short_Name, '-', FunctionNo)}" markdown="1">
      <h3>Function <xsl:value-of select="function"/></h3>
      <table class="competences">
        <tr>
          <th class="twenty competence">Competence</th>
          <th class="seventy kup">Knowledge, Understanding &amp; Proficiency</th>
          <th class="ten location">Location(s)</th>
        </tr>
      </table>
    </div>




    <xsl:for-each-group select="current-group()" group-by="CompetenceNo">
      <xsl:variable name="competenceID"
        select="concat(Tables-\-Table_Short_Name, '-', FunctionNo, CompetenceNo)"/><xsl:text/>
      <xsl:text/>&lt;td rowspan='<xsl:value-of select="count(current-group())"/>'>&rr;<xsl:text/>
      
      <xsl:text/>&rr;&lt;/td><xsl:text/>
      <xsl:for-each select="current-group()">
        <xsl:call-template name="tdtd"/>
      </xsl:for-each>
      <xsl:text>&lt;/tr></xsl:text>
    </xsl:for-each-group>
    <xsl:text>&lt;/table>&lt;/div></xsl:text>
  </xsl:template>



  <xsl:template name="tdtd">
    <!-\- builds two table cells containing the kup, already converted to html, and the locations where this kup is covered -\->
    <xsl:if test="position() &gt; 1"><xsl:text>&lt;tr></xsl:text></xsl:if>
    <xsl:text/>&cr;&lt;td class='kup' markdown='1' id='<xsl:value-of select="kupNo"/>'&gt;&cr;<xsl:text/>
    <xsl:text/>&cr;&lt;p class='kupNo'><xsl:value-of select="substring-after(kupNo, '-')"/>&lt;/p>&rr;<xsl:text/>
    <xsl:value-of select="normalize-space(kup)"/>&rr;&lt;/td><xsl:text/>
    <xsl:text/>&rr;&lt;td class='location' markdown='1'>&rr;<xsl:text/>
    <xsl:call-template name="ListCourses"/>
    <xsl:text>&cr;&lt;/td></xsl:text>
  </xsl:template>-->

  <xsl:template name="index">
    <!-- Creates index pages based on the parameters -->
    <xsl:param name="doc"/>
    <xsl:param name="range"/>
    <xsl:param name="title"/>
    <xsl:result-document href="{$path}/{$doc}">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: NVIC Tasks (</xsl:text><xsl:value-of select="$title"/><xsl:text>)&cr;</xsl:text>
      <xsl:text>label: "Index"&cr;</xsl:text>
      <xsl:text>---&rr;</xsl:text>
      <xsl:text/># NVIC Tasks (<xsl:value-of select="$title"/>)
      <xsl:text>&cr;*and associated STCW Tables*</xsl:text>
      <xsl:text>&rr;|  STCW Table  |    Name     |  NVIC Tasks   |</xsl:text>
      <xsl:text>&cr;|:-------------|:------------|:--------------|&cr;</xsl:text>
      <xsl:for-each-group select="$range" group-by="Table">
        <xsl:text/>| [<xsl:value-of select="Table"/>](<xsl:value-of select="Tables--TableNo"/>.html) | <xsl:value-of select="Tables--Table_Name"/>| <xsl:call-template name="TaskLink"/> | &cr;<xsl:text/>
      </xsl:for-each-group>
    </xsl:result-document>
  </xsl:template>

  <!-- <xsl:template name="ListCourses">
    <xsl:for-each select="distinct-values(Courses_K-\-CourseNo | Courses_P-\-CourseNo)">
      <xsl:text/>[<xsl:value-of select="."/>](<xsl:value-of select="lower-case(translate(., '-', ''))"/>) &cr;<xsl:text/>
    </xsl:for-each>
  </xsl:template>-->

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
