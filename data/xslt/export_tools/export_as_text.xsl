<?xml version="1.0" encoding="UTF-8"?>
<!--  This exports filemaker field contents as utf-8 text, without change -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:fm="http://www.filemaker.com/fmpxmlresult" exclude-result-prefixes="fm">
   <xsl:strip-space elements="*"/>
   <xsl:output method="text" version="1.0" encoding="UTF-8" indent="no"/>

   <xsl:template match="//fm:DATA">
      <xsl:copy-of select="."/>
   </xsl:template>

   <xsl:template match="fm:ERRORCODE"/>

</xsl:stylesheet>
