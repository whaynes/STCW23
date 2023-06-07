---
number: "OICEW-5-1K"
title: "MMA Assessment OICEW-5-1K"
subtitle: "Secure main propulsion diesel engine"
category: "Engine"
status: "moved"
cnum: "EN-4231"

---
### Condition

In an approved simulator, in the laboratory, or aboard a ship and given access a main propulsion diesel engine.

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
{% do secure, Secure %} fuel supply
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Receive permission from bridge

Insure shaft is stopped
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do start, Start %} turning gear
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Prior to starting, check:

  * lube oil system is running
  * blocking valve shut
  * indicator cocks open

Obtain wheel clearance

Start turning gear
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} cooling systems
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Secure:

  * LTFW pump
  * HTFW pump
  * piston cooling pump
  * injector cooling pump
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} turning gear
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Stop motor

Disengage turning gear
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do secure, Secure %} Lubricating Systems
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Secure

  * main lube oil pump
  * cylinder lube oil pump
  * stern tube lube oil pump
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

This assessment supports KUP {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}

Reference: NVIC Task: {% task 4E1A  %}

***

### Lab Manual

{% imagelink EN4131_Lab_Manual.pdf, EN-4131 Lab Manual %}

See the {% guidelines %} for additional specifications of behavior and standards.