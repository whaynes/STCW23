<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet does makes assessment index files for deck, engine, common-->
<!-- See also jekyll/_layouts/assessment_index,html -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>  
   <xsl:variable name="folder">../../jekyll/_assessments</xsl:variable>

<xsl:variable name="majors">
  <major id='MENG' category='Engine'><subtitle>marine engineering</subtitle></major>
  <major id='MTRA' category='Deck'><subtitle>marine transportation</subtitle></major>
  <major id='common' category='Common'><subtitle>licensed major</subtitle></major>

</xsl:variable>

  <xsl:template match="/">
    <xsl:apply-templates select="$majors/major"/>
  </xsl:template>

  <xsl:template match="major">
    <xsl:result-document  
      method="text"
      href="{$folder}/{@id}.html">
    <xsl:text>---&cr;</xsl:text>
    <xsl:text/>title: "STCW Assessments (<xsl:value-of select="@id"/>)"&cr;<xsl:text/>
    <xsl:text/>subtitle: for all <xsl:value-of select="subtitle"/> students&cr;<xsl:text/>
    <xsl:text/>category: "<xsl:value-of select="@category"/>"&cr;<xsl:text/>
   <xsl:text>layout: assessment_index
number: nil
---&cr;</xsl:text>
    </xsl:result-document>
  </xsl:template>
  <xsl:template match="*"/>
</xsl:stylesheet>
