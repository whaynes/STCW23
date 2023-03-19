---
number: "OICEW-1E2A"
title: "STCW Assessment OICEW-1E2A"
subtitle: "Change over control systems"
category: "Engine"
status: "New"
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
{% do Change over, shiftchangeover %} propulsion throttle control
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
{% do Change over, shiftchangeover %} an engine cooling system control


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
{% do Change over, shiftchangeover %} the bilge, ballast, or firemain system control
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

This assessment supports KUP {% table 31.html#OICEW-A1.2, OICEW-A1.2 %}

***



See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.