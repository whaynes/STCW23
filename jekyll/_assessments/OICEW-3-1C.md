---
number: "OICEW-3-1C"
title: "MMA Assessment OICEW-3-1C"
subtitle: "Detect location of grounds"
category: "Engine"
status: ""
cnum: "EN-4231"

---
### Condition

Aboard ship, in a workshop, or using an approved simulator, given access to an electrical distribution system, and proper tools and safety equipment.

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
{% do describeequipment, Describe %} operation of ground fault detection systems
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Define a ground fault

State common causes of ground faults

State behavior of ground lamps
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do operate, Operate %} ground fault simulator
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Introduce ground fault and observe behavior of ground lamps

Introduce a second ground fault, and observe behavior of circuit breaker
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

This assessment supports KUP {% table 31.html#OICEW-B2.3, OICEW-B2.3 %}

Reference: NVIC Task: {% task 7E3A  %}

***



See the {% guidelines %} for additional specifications of behavior and standards.