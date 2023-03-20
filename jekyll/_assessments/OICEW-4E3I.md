---
number: "OICEW-4E3I"
title: "STCW Assessment OICEW-4E3I"
subtitle: "Monitor and operate auxiliary boiler"
category: "Engine"
status: "New"
cnum: "EN-3131"
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
{% do monitor, Monitor %} an oil-fired auxiliary boiler
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
{% do Check, check %} as applicable:

* steam drum pressure
* steam water level
* feed water pressure
* fuel oil service pump suction and discharge pressures
* fuel-oil supply header pressure and temperature 
* fuel oil strainer pressure drops
* fuel oil settling/service tank levels and temperatures
* stack temperature
* atomizing steam pressure
* flame condition through peephole
* boiler casing, hand holes, manholes, and piping for leakage

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do operate, Operate %} an auxiliary boiler using automatic and, when available, manual controls
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* Maintain water level within acceptable limits
* Maintain steam pressure within acceptable limits
* Maintain exhaust within acceptable limits
* Ensure continuous availability of fuel
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do respondtoalarm, Respond %} to high and low boiler level alarms as required
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Correct situation by, 

* adjusting feed pump supply pressure
* adjusting feedwater regulator set point
* manually regulating level with auxiliary feed valve
* blowing down boiler to lower level, etc., as appropriate.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3131 %}  *Steam Generators*.

This assessment supports KUP {% table 31.html#OICEW-A4.3, OICEW-A4.3 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.