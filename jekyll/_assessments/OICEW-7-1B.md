---
number: "OICEW-7-1B"
title: "STCW Assessment OICEW-7-1B"
subtitle: "Inspect and start a diesel engine"
category: "Engine"
status: "Old"
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
{% do Check, check %} mechanical condition of engine
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
{% do Check, check %} engine lubrication
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
{% do Check, check %} engine cooling
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
{% do Check, check %} engine fuel system
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
{% do Check, check %} engine starting system
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
{% do Start, start %} engine
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

This assessment supports KUP {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}

***

### Lab Manual

<%= imagelink("EN4131_Lab_Manual", "EN-4131 Lab Manual") %>

See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.