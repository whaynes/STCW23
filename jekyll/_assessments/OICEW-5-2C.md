---
number: "OICEW-5-2C"
title: "MMA Assessment OICEW-5-2C"
subtitle: "Operate Main Boiler"
category: "Engine"
status: "changed"
cnum: "EN-3131"

---
### Condition

In an approved simulator or aboard a ship, given access to a  boiler.

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
{% do monitor %} the operation of the boiler
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
{% do monitor %} the following

1. boiler pressure
1. boiler water level
1. superheater  pressures and temperature
1. de-superheater pressures and temperature
1. fuel oil settling and storage tank temperatures and pressures
1. fuel oil service system temperature and pressures
1. forced draft fans and combustion air supply
1. flame condition
1. stack temperature and stack gasses


Take necessary actions to maintain the above within acceptable limits and prevent safety and pollution violations.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do describeequipment, Describe %} purpose of boiler blowdown and soot blowing operations.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
As required, blow down the boiler.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Raise water level to top of gage glass

Open bottom blow valve

When water level falls to bottom of glass, secure bottom blow valve
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
As required, blow tubes.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
1.  obtain permission from the bridge to blow tubes.
1.  {% do prepare %} the boiler to blow tubes.
1.  increase the speed of the forced-draft fan.
1.  {% do operate %} the soot blower.  
1.  {% do maintain %} the boiler water level, steam pressure, and DFT water level during operations.
1.  {% do secure %} system when finished.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3131 %}  *Steam Generators*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}
1. {% table 31.html#OICEW-A4.3, OICEW-A4.3 %}
1. {% table 34.html#RFPEW-A2.1, RFPEW-A2.1 %}


#### NVIC Tasks





1. NVIC 07-14 Task {% task 3H1A, 3.1.A %} *Maintain main boiler water level and steam pressures*
1. NVIC 07-14 Task {% task 3H1C, 3.1.C %} *Monitor main propulsion boiler*
1. NVIC 07-14 Task {% task 3H1H, 3.1.H %} *Assist in maintaining the fires on a main-propulsion boiler during maneuvering*
1. NVIC 07-14 Task {% task 3H1I, 3.1.I %} *Assist in the operation of the soot blower*
1. NVIC 17-14 Task {% task 4E3L, 4.3.L %} *Bottom blow boiler*



***



See the {% guidelines %} for additional specifications of behavior and standards.