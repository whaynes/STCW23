<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>


<!--This stylesheet currently does nothing. -->
<!--course pages are exported by filemaker -->
<!--Index files handwritten and locked. 3/18/23
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:variable name="folder">../../jekyll/_courses</xsl:variable>
  <xsl:template match="/courses">
    <xsl:apply-templates select="course"/>
  </xsl:template>
</xsl:stylesheet>
