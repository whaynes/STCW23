<?xml version="1.0" encoding="utf-8"?>
<!-- this stylesheet exports FMPXMLRESULT files in a more friendly format, by renaming each field
   from DATA to its actual field name, rendered as valid xml -->
<xsl:stylesheet version="1.0" xmlns:fmp="http://www.filemaker.com/fmpxmlresult" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xsl fmp xsi">
  <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:preserve-space elements="fmp:DATA"/>
  <xsl:template match="/fmp:FMPXMLRESULT">
    <RECORDS>
      <xsl:for-each select="fmp:RESULTSET/fmp:ROW">
        <xsl:call-template name="getRecord">
          <xsl:with-param name="subset" select="."/>
        </xsl:call-template>
      </xsl:for-each>
    </RECORDS>
  </xsl:template>
  <xsl:template name="getRecord">
    <xsl:param name="subset"/>
    <RECORD>
      <xsl:for-each select="/fmp:FMPXMLRESULT/fmp:METADATA/fmp:FIELD">
        <xsl:variable name="pt" select="position()"/>
        <xsl:variable name="field" select="translate(@NAME, ' :', '_-')"/>
        <xsl:variable name="short_name">
          <xsl:choose>
            <xsl:when test="contains($field, '--')">
              <xsl:value-of select="substring-after($field, '--')"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$field"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:for-each select="$subset/fmp:COL[$pt]/fmp:DATA">
          <xsl:element name="{$short_name}">
            <xsl:attribute name="pos">
              <xsl:value-of select="position()"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
          </xsl:element>
        </xsl:for-each>
      </xsl:for-each>
    </RECORD>
  </xsl:template>
</xsl:stylesheet>
