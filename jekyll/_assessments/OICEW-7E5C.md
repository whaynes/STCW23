---
number: "OICEW-7E5C"
title: "MMA Assessment OICEW-7E5C"
subtitle: "Test engine shutdown devices"
category: "Engine"
status: ""
cnum: "EN-4131"
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
{% do evaluateinspecttest, test %} low lube oil shutdown device
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* secure and drain oil supply line to lube oil pressure sensor
* observe the engine shut down
* restore pressure to the lube oil sensor
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, test %} high jacket water temperature shutdown.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* remove jacket water temperature probe from thermal well
* immerse in hot oil bath above shutdown temperature
* observe the engine shut down
* restore temperature probe to original location
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4131 %}  *Internal Combustion Engines II*.

This assessment supports KUP {% table 31.html#OICEW-B2.5, OICEW-B2.5 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.