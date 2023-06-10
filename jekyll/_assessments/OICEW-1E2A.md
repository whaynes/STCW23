---
number: "OICEW-1E2A"
title: "MMA Assessment OICEW-1E2A"
subtitle: "Change over control systems"
category: "Engine"
status: ""
cnum: "EN-3233"

---
### Condition

On a vessel of at least 1,000 HP, on a simulator, or in a laboratory or workshop.

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
{% do shiftchangeover, Change over %} propulsion throttle control
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* change from bridge control to engine room control
* change from engine room control to bridge control
* verify proper operation of the throttle when in engine room control
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do shiftchangeover, Change over %} an engine cooling system control


{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* change from automatic control to local control and vice versa
* verify system operation in each mode and adjust as necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do shiftchangeover, Change over %} the bilge, ballast, or firemain system control
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* change from remote/automatic control to local control and vice versa
* verify system operation in each mode and adjust as necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3233 %}  *Steam and Gas Turbines*.

### References

#### STCW Knowledge, Understanding and Proficiency

1. {% table 31.html#OICEW-A1.2, OICEW-A1.2 %}


#### NVIC Tasks

1. NVIC 17-14 Task {% task 1E2A, 1.2.A %} *Change-over to local control systems*



***



See the {% guidelines %} for additional specifications of behavior and standards.