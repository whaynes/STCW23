---
number: "OICEW-4-3E"
title: "MMA Assessment OICEW-4-3E"
subtitle: "Monitor main gas turbine operation"
category: "Engine"
status: ""
cnum: "EN-3233"

---
### Condition

On a gas-turbine vessel of at least 1,000 HP at sea, on a simulator, or in a laboratory.

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
{% do shiftchangeover, Shift %} controls 
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
shift/change over controls from local or main control room to bridge control
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do adjust, Adjust %} engine speed as required
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
adjust throttles to match engine order telegraph (EOT)
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do monitor, Monitor %} main gas turbine engine
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* monitor gas generator speed
* monitor power turbine inlet temperature
* monitor lube oil pressure
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do monitor, Monitor %} gas turbine alarms
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
respond to alarms and take corrective actions as necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3233 %}  *Steam and Gas Turbines*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-A4.3, OICEW-A4.3 %}
1. {% table 34.html#RFPEW-A1.2, RFPEW-A1.2 %}


#### NVIC Tasks


1. NVIC 07-14 Task {% task 1H1IG, 1.1.I(G) %} *Monitor main gas turbine propulsion unit*
1. NVIC 17-14 Task {% task 4E3E, 4.3.E %} *Monitor gas turbine operation*



***



See the {% guidelines %} for additional specifications of behavior and standards.