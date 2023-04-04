---
number: "RFPEW-1H2C"
title: "STCW Assessment RFPEW-1H2C"
subtitle: "Shift and clean a basket-type duplex strainer"
category: "Engine"
status: ""
cnum: "EN-1211"
---
### Condition

Aboard ship, in the laboratory, or in an approved simulator given access to proper equipment and manufacturer’s technical manual.

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
{% do shiftchangeover, Change over %} a basket-type strainer to a clean basket
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* ensure that a clean strainer is available
* ensure that the clean strainer is filled
* loosen the locking handle
* move the changeover handle to put the clean strainer in service
* tighten the locking handle

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Remove, {% do evaluateinspecttest, inspect %} and {% do clean, clean %} the out-of-service basket
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* ensure that pressure is relieved on the out-of-service strainer
* carefully remove the strainer cover
* remove the basket
* inspect the basket and clean if necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do reassemble, Reassemble %} the strainer basket and lid
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* replace basket and cover
* tighten the cover bolts or hold-down dogs
* fill and pressurize the idle strainer by briefly cracking the changeover handle
* lock changeover handle
* check the strainer housing for leaks
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-1211 %}  *Auxiliary Machinery I*.

This assessment supports KUP {% table 34.html#RFPEW-A1.3, RFPEW-A1.3 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.