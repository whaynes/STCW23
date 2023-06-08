---
number: "OICEW-5-2B"
title: "MMA Assessment OICEW-5-2B"
subtitle: "Secure main boiler"
category: "Engine"
status: ""
cnum: "EN-3131"

---
### Condition

In an approved simulator or aboard a ship in port or at anchor, given access to a main boiler.

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
{% do secure, Secure %} boiler
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Reduce load on boiler

Place combustion control on manual

Secure fires

Open superheater vents and drains
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} forced draft fan
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do monitor, Monitor %} boiler until stable
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Maintain water level in drum

Open drum vent before pressure falls to 0 psi
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3131 %}  *Steam Generators*.

### References

1.  Table A-III/1 {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}
1.  NVIC 17-14 {% task 4E1A, Task 4.1.A%}

***



See the {% guidelines %} for additional specifications of behavior and standards.