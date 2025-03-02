---
number: "OICEW-7-1D"
title: "MMA Assessment OICEW-7-1D"
subtitle: "Connect ship service diesel generator to main switchboard"
category: "Engine"
status: ""
cnum: "EN-3233"

---
### Condition

Aboard a dead ship or in simulator, given access to generator and proper tools, approved instruction, and safe working environment.

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
{% do check, Check %} that system is ready to start
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Meet requirements of {% assessment OICEW-7-1B %}
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} the generator
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Turn generator mode selector switch to _manual_

Turn generator starting switch to _start_
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do check, Check %} that generator starts properly
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check:

  * oil pressure rises
  * air dampers open
  * voltage and frequency rises
  * jacket water temperature stabilizes
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do operate, Operate %} generator to achieve conditions suitable for synchronization
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Adjust generator to normal operating speed

Place voltage regulator in manual

Excite field

Adjust frequency to 60 hz

Adjust voltage to 120V
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
synchronize incoming generator with bus
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

Balance reactive (kvar) load
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3233 %}  *Steam and Gas Turbines*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-B1.1, OICEW-B1.1 %}


#### NVIC Tasks


1. NVIC 17-14 Task {% task 6E1B, 6.1.B %} *Inspect and start a diesel generator*
1. NVIC 17-14 Task {% task 6E1D, 6.1.D %} *Change over generators*



***



See the {% guidelines %} for additional specifications of behavior and standards.