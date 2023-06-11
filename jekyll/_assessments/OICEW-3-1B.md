---
number: "OICEW-3-1B"
title: "MMA Assessment OICEW-3-1B"
subtitle: "Troubleshoot electrical motor control system"
category: "Engine"
status: ""
cnum: "EN-3111L"

---
### Condition

Aboard ship, in a workshop, or using a appropriate simulator, given the schematic of and access to the electrical control system, proper tools and safety equipment.

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
{% do evaluateinspecttest, Inspect %} circuit
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Test system operation

Note symptoms of faulty operation
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do identify, Identify %} possible causes of observed symptoms
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} controller circuits to locate faults
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use meters to systematically discover cause of fault
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do repair, Repair %} system to clear fault and restore normal operation
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Identify and replace faulty component

Complete all operations safely and within time limit and efficiently to receive credit for fault
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3111L %}  *Electrical Machines Lab*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-B2, OICEW-B2 %}


#### NVIC Tasks


1. NVIC 17-14 Task {% task 7E2A, 7.2.A %} *Troubleshoot motor controller*
1. NVIC 17-14 Task {% task 7E2B, 7.2.B %} *Repair faulty motor controller*



***



See the {% guidelines %} for additional specifications of behavior and standards.