<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>
<!-- This stylesheet does nothing 
     assessment pages are exported from filemaker  
     index files for folder, meng, mtra, and common are handwritten and, locked -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>  
   <xsl:variable name="folder">../../jekyll/_assessments</xsl:variable>

  <xsl:template match="/assessments">
    <xsl:apply-templates select="assessment"/>
  </xsl:template>

</xsl:stylesheet>
