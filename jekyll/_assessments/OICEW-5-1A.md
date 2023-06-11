---
number: "OICEW-5-1A"
title: "MMA Assessment OICEW-5-1A"
subtitle: "Test steering gear and internal communications"
category: "Engine"
status: ""
cnum: "EN-4231"

---
### Condition

Aboard ship at steering room station or in an approved simulator.

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
{% do check, Check %} steering gear is ready for operation
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check:

  * machinery oil levels
  * general condition of equipment and space
  * system line-up is as per posted chart
  * trick wheels are disengaged
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Establish and {% do evaluateinspecttest, test %} communications with bridge
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use sound powered phone or vhf radio.

Use correct procedures and terminology
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} and {% do evaluateinspecttest, Test %} each motor and pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Insure that the steering engine and the rudder are synchronized in the midship position before starting or stopping pumps

Have bridge operate each main steering engine assembly through full range of travel in normal mode and nfu mode

Transfer control to _local_ and test trick wheel mode

Verify operation of rudder angle indicator system with bridge

Note rudder travel time from stop to stop

Note any unusual operation, noises or leakage
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} alternate power sources
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Verify that normal and emergency power feeders are functional
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-A3.1, OICEW-A3.1 %}
1. {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}
1. {% table 31.html#OICEW-B2.5, OICEW-B2.5 %}


#### NVIC Tasks


1. NVIC 17-14 Task {% task 3E1A, 3.1.A %} *Test internal communications*
1. NVIC 17-14 Task {% task 7E5B, 7.5.B %} *Test steering gear*



***



See the {% guidelines %} for additional specifications of behavior and standards.