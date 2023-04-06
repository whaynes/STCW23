<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
<!ENTITY cr  "&#10;" ><!-- \n -->
<!ENTITY rr  "&#10;&#10;" ><!-- \n\n -->
]>


<!--This stylesheet copies out three course index files, in case they
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="text"/>
  <xsl:variable name="folder">../../jekyll/_courses</xsl:variable>
  
  <xsl:template match="/">
    <xsl:result-document href="{$folder}/index.html" method="text"><![CDATA[---
title: "All STCW Courses" 
---

{% assign courses = site.courses | where_exp: "course", "course.cnum != nil"| sort: "cnum"  %}


<table class='sortable courses'>


<tr>
<th  style='text-align:center'>No.</th> 
<th>Course Number</th>
<th>Course Name</th>
<th style='text-align:center'>Major</th>
</tr>

{% for course in courses %}
<tr>
<td  style='text-align:center'>{{forloop.index}}.</td> 
<td><a href='{{ course.url | relative_url}}'>{{course.cnum}}</a></td> 
<td>{{course.title}}</td>
<td  style='text-align:center'>{{course.major}}</td>
{% endfor %}

</table>
]]> 
    </xsl:result-document>
    <xsl:result-document href="{$folder}/MENG.html" method="text"><![CDATA[---
title: "STCW Courses (MENG)" 
subtitle:  for all marine engineering students
major: "E"
layout: course_index
---]]></xsl:result-document>
    <xsl:result-document href="{$folder}/MTRA.html"><![CDATA[---
title: STCW Courses (MTRA)
subtitle: for all marine transportation students
major: "D"
layout: course_index
---]]></xsl:result-document>
    
<xsl:result-document href="{$folder}/common.html"><![CDATA[---
title: "STCW Courses (Common)"
subtitle: for all licensed major students 
major: "D/E"
layout: course_index
---]]></xsl:result-document>
  </xsl:template>
  
    <xsl:template match="*"/>
</xsl:stylesheet>

