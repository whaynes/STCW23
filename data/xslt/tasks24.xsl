<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" >
<!ENTITY rr  "&#10;&#10;" >
<!ENTITY nbsp "&#160;" > 
]>
<!-- This stylesheet writes index files to the tasks folder for MENG, MTRA, Common -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
  <xsl:variable name="folder">../../jekyll/_tasks</xsl:variable>
  <xsl:template match="DATA">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="index">
    <xsl:result-document method="text" href="{$folder}/{category}.md">
      <xsl:text>---&cr;</xsl:text>
      <xsl:text>title: </xsl:text>
      <xsl:value-of select="category"/>
      <xsl:text> Tasks&cr;</xsl:text>
      <xsl:text>tables: </xsl:text>
      <xsl:value-of select="tables"/>
      <xsl:text>&cr;</xsl:text>
      <xsl:text>layout: task_index&cr;</xsl:text>
      <xsl:text>task_number: nil &cr;</xsl:text>
      <xsl:text>---&rr;</xsl:text>
      <xsl:text>All </xsl:text>
      <xsl:value-of select="name"/>
      <xsl:text> students must satisfy the elements of these tables:</xsl:text>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>
