---
number: "OICEW-5-1B"
title: "MMA Assessment OICEW-5-1B"
subtitle: "Start refrigeration system"
category: "Engine"
status: ""
cnum: "EN-3213"

---
### Condition

Using an approved simulator, in the laboratory, or aboard ship and given access to a refrigeration system that has been secured.

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
{% do identify, Identify %} the valves and equipment associated with the refrigeration unit
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Identify:

  * compressor suction valve
  * compressor discharge valve
  * cooling water supply
  * thermal expansion valve
  * solenoid valve
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} compressor lubrication
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Verify visible oil level
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} refrigerant level
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Verify visible receiver level
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do lineup, Line-up %} refrigeration unit
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Line up cooling water supply

LIne up refrigerant circuit

Leave compressor suction valve closed
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} associated equipment
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Energize box solenoids

Start diffuser fans, brine pumps, etc. as required
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} the refrigeration compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Gradually open compressor suction valve

Verify:

  * circulation water is flowing
  * oil pressure rises upon starting
  * oil level remains visible
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do operate, Operate %} the refrigeration unit until conditions stabilize
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Monitor:

  * suction pressure
  * discharge pressure
  * box temperatures
  * operation of pressure switches
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3213 %}  *Refrigeration*.

This assessment supports KUP {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}

Reference: NVIC Task: {% task 4E1A  %}

***

**Note:** Not all steps are possible on all refrigeration systems.

See the {% guidelines %} for additional specifications of behavior and standards.