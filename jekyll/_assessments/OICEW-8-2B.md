---
number: "OICEW-8-2B"
title: "MMA Assessment OICEW-8-2B"
subtitle: "Reciprocating pump maintenance"
category: "Engine"
status: ""
cnum: "EN-2111"

---
### Condition

Aboard ship or in workshop, given a reciprocating pump and other equipment, manuals and specifications needed to complete the task.

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
{% do disassemble, Disassemble %} reciprocating pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Inspect %} all parts for wear and deterioration
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check the following:

  * packing
  * gaskets
  * piston and cylinders
  * valves and valve seats
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do repair, Repair %} reciprocating pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Replace parts as necessary to bring pump to manufacturers specifications
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do reassemble, Reassemble %} reciprocating pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Replace and adjust seals/gaskets as necessary

Adjust valve tappets for proper operation
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} reciprocating pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Operate under load and inspect for abnormalities
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-2111 %}  *Auxiliary Machinery II*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-C2, OICEW-C2 %}
1. {% table 31.html#OICEW-C2.3, OICEW-C2.3 %}
1. {% table 35.html#ABE-A8.1, ABE-A8.1 %}


#### NVIC Tasks


1. NVIC 17-14 Task {% task 9E1C, 9.1.C %} *Overhaul a reciprocating pump*
1. NVIC 18-14 Task {% task 5G1B, 5.1.B %} *Operation of centrifugal and positive displacement pumps*



***

### Lab Manual

{% imagelink EN2111-labmanual-F15.pdf, Auxiliary Machinery II Laboratory Manual %}

See the {% guidelines %} for additional specifications of behavior and standards.