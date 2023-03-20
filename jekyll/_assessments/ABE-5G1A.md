---
number: "ABE-5G1A"
title: "STCW Assessment ABE-5G1A"
subtitle: "Trace out a piping system"
category: "Engine"
status: "New"
cnum: "EN-2231"
---
### Condition

On a vessel of at least 1,000 HP, on a simulator, or in a laboratory.

### Performance requirement 

<table width='100%' class='Guidelines'>
 <thead>
 <tr>
     <th class='thirty'>Behavior</th>
     <th class='seventy'>Standard</th>
 </tr>
 <tr>
     <td><em>The student will:</em></td>
     <td><em>During assessment, the student shall, at a minimum:</em></td>
 </tr>
 </thead>
 <tbody>
 

<tr><td>

{% capture behavior %}
{% do trace, Trace %} one or more of the following systems,

* lube oil service system
* fuel oil service system
* main circulating system
* main steam cycle

{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* trace system(s) selected by the assessor

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
* {% do describeequipment, describe %} the purpose of the system
* {% do identify, Identify %} and {% do describeequipment, describe %} any system components selected by the instructor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* descriptions are accurate
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Draw a schematic diagram of the selected system
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* produce a neat and accurate drawing
* label all major components 
* indicate system temperatures and pressures
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-2231 %}  *Sea Term II: Marine Engineering*.

This assessment supports KUP {% table 35.html#ABE-A8.1, ABE-A8.1 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.