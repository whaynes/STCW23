---
number: "OICEW-7-1E"
title: "MMA Assessment OICEW-7-1E"
subtitle: "Parallel generators"
category: "Engine"
status: ""
cnum: "EN-3111L"
---
### Condition

Aboard ship, in the laboratory, or in an approved simulator given access to proper equipment and manufacturer technical manual.

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
{% do start, Start %} incoming generator and raise voltage
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Start prime mover and bring up to operating speed

Place voltage regulator in manual

Excite field

Adjust frequency to 60 hz

Adjust voltage to system line voltage
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do adjust, Synchronize %} incoming generator with bus
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Turn on synchroscope

Match voltage and frequency with bus

Close main breaker when generators are in phase

Turn off synchroscope
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do adjust, Adjust %} load on incoming generator
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Transfer voltage regulator to automatic

Balance active (kw) load

Balance reactive (kvar) Load
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3111L %}  *Electrical Machines Lab*.

This assessment supports KUP {% table 31.html#OICEW-B1.1, OICEW-B1.1 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.