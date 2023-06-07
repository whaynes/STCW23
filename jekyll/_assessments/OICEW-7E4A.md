---
number: "OICEW-7E4A"
title: "MMA Assessment OICEW-7E4A"
subtitle: "Disassemble and reassemble an electric motor"
category: "Engine"
status: ""
cnum: "EN-4231"

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
{% do disassemble, Disassemble %} a squirrel cage induction motor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* make or note match marks
* remove end bells
* remove rotor
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} insulation resistance and stator winding continuity
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* use 60 second insulation resistance test
* discuss meaning of results
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do reassemble, Reassemble %} the motor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* ensure match marks align during reassembly
* ensure rotor turns freely after reassembly
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

This assessment supports KUP {% table 31.html#OICEW-B2.1, OICEW-B2.1 %}

Reference: NVIC Task: {% task   %}

***



See the {% guidelines %} for additional specifications of behavior and standards.