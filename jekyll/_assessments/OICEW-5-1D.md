---
number: "OICEW-5-1D"
title: "STCW Assessment OICEW-5-1D"
subtitle: "Start and secure air compressor"
category: "Engine"
status: "Old"
cnum: "EN-2111"
---
### Condition

Using an approved simulator, in the laboratory, or aboard ship and given access to an air compressor.

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
{% do Check, check %} unit for readiness to start
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Inspect mechanical condition of equipment

Observe sufficient lubricating oil

Blow down receiver and moisture traps

On water cooled units, verify coolant flow
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Line-up, lineup %} compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Verify compressor discharge valve is open
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Start, start %} compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
press start button

verify control set to automatic
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Monitor, monitor %} operation of air compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Verify operation of unloader

Verify operation of cut-in and cut-out switches
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Secure, secure %} the air compressor
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Press the stop button

Leave compressor lined up to start
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-2111 %}  *Auxiliary Machinery II*.

This assessment supports KUP {% table 31.html#OICEW-A4.1, OICEW-A4.1 %}

***

### Lab Manual

<%= imagelink("EN2111-labmanual-F15.pdf", "Auxiliary Machinery II Laboratory Manual") %>

See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.