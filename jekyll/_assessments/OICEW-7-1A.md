---
number: "OICEW-7-1A"
title: "MMA Assessment OICEW-7-1A"
subtitle: "Start emergency generator"
category: "Engine"
status: ""
cnum: "EN-4131"

---
### Condition

Aboard ship or in an approved simulator, given access to generator and proper tools.

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
{% do check, Check %} that system is ready to start
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Meet requirements of  {% assessment OICEW-7-1B  %}
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} the generator
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Turn generator mode selector switch to _manual_

Turn generator starting switch to _start_
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} that generator starts properly
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check:

  * oil pressure rises
  * air dampers open
  * voltage and frequency rises
  * jacket water temperature stabilizes
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4131 %}  *Internal Combustion Engines II*.

### References

#### STCW Knowledge, Understanding and Proficiency

1. {% table 31.html#OICEW-B1.1, OICEW-B1.1 %}


#### NVIC Tasks

1. NVIC 17-14 Task {% task 6E1B, 6.1.B %} *Inspect and start a diesel generator*



***

### Lab Manual

{% imagelink EN4131_Lab_Manual.pdf, EN-4131 Lab Manual %}

See the {% guidelines %} for additional specifications of behavior and standards.