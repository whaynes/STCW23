---
number: "OICEW-7-1B"
title: "MMA Assessment OICEW-7-1B"
subtitle: "Inspect and start a diesel engine"
category: "Engine"
status: ""
cnum: "EN-4131"

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
{% do check, Check %} mechanical condition of engine
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check:

  * machine is mechanically ready to run
  * no oil or water leaks observed
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} engine lubrication
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check dipstick for sufficient oil
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} engine cooling
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check expansion tank for sufficient water

Check no obstructions blocking cooling fan
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} engine fuel system
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check level in fuel tank

Verify alignment of fuel system
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} engine starting system
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
For hydraulic start:

  * check accumulator pressure
  * verify system alignment

For Electric start:

  * verify battery is properly connected
  * close battery switch
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} engine
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check engine coolant and lubrication gages
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
1. {% table 34.html#RFPEW-A1.1, RFPEW-A1.1 %}


#### NVIC Tasks


1. NVIC 07-14 Task {% task 2H1C, 2.1.C %} *Pre-start check of a diesel engine*
1. NVIC 17-14 Task {% task 6E1B, 6.1.B %} *Inspect and start a diesel generator*



***

### Lab Manual

{% imagelink EN4131_Lab_Manual.pdf, EN-4131 Lab Manual %}

See the {% guidelines %} for additional specifications of behavior and standards.