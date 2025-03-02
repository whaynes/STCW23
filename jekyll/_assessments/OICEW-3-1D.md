---
number: "OICEW-3-1D"
title: "MMA Assessment OICEW-3-1D"
subtitle: "Measure insulation resistance"
category: "Engine"
status: ""
cnum: "EN-4231"

---
### Condition

Aboard ship or in a workshop, given access to 3-phase electrical AC motor and controller, a Megger test meter, and other proper tools and safety equipment.

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
{% do evaluateinspecttest, Measure %} motor insulation resistance at motor controller
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use megger to perform insulation spot test:

  * de-energize motor, lockout/tagout if necessary
  * verify megger ground connection
  * connect lead to field winding
  * select appropriate test voltage
  * energize meter for 60 seconds, or until reading stabilizes at infinity
  * read meter
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Correct insulation resistance measurement to standard temperature.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Correct reading to 40 °C using nomograph or correction chart.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluate, Evaluate %} insulation resistance value
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Compare corrected resistance to IEEE standard.

State whether resistance value is within acceptable limits
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

### References

#### STCW Knowledge, Understanding and Proficiency

1. {% table 31.html#OICEW-B2, OICEW-B2 %}
1. {% table 31.html#OICEW-B2.3, OICEW-B2.3 %}


#### NVIC Tasks

1. NVIC 17-14 Task {% task 7E1A, 7.1.A %} *Conduct insulation resistance test*



***



See the {% guidelines %} for additional specifications of behavior and standards.