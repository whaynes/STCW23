---
number: "OICEW-5-1C"
title: "MMA Assessment OICEW-5-1C"
subtitle: "Shut down refrigeration system"
category: "Engine"
status: ""
cnum: "EN-3213"

---
### Condition

Using an approved simulator, in the laboratory, or aboard ship and given access to an operating refrigeration system.

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
{% do secure, Secure %} the refrigerant circuit
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Close the receiver outlet valve

Pump down the receiver

Observe suction pressure
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} the refrigeration compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Observe compressor stop on low pressure cut-out

De-energize the compressor

Close compressor suction and discharge valves
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} associated equipment
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Secure secondary refrigerant loop, if used

Secure box solenoid, if shutting down
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} the cooling water supply
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Close valves and secure pumps as required
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3213 %}  *Refrigeration*.

### References

#### STCW Knowledge, Understanding and Proficiency

1. {% table 31.html#OICEW-A4.3, OICEW-A4.3 %}


#### NVIC Tasks

1. NVIC 17-14 Task {% task 4E3V, 4.3.V %} *Secure refrigeration system*



***

**Note:** Not all steps are possible on all refrigeration systems.

See the {% guidelines %} for additional specifications of behavior and standards.