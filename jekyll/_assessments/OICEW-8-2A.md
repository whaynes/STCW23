---
number: "OICEW-8-2A"
title: "MMA Assessment OICEW-8-2A"
subtitle: "Centrifugal pump maintenance (mechanical seal)"
category: "Engine"
status: ""
cnum: "EN-2111"

---
### Condition

Aboard ship or in workshop, given a centrifugal pump and other equipment, manuals and specifications needed to complete the task.

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
{% do secure, Secure %} and {% do lockouttagout, Lock-out %} the split case centrifugal pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}

{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do disassemble, Disassemble %} the pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
follow disassembly procedure in the laboratory manual
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Inspect %} all parts for wear and deterioration
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check the following:

  * packing, or seals
  * gasket
  * impeller wear
  * shaft bearings
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do repair, Repair %} centrifugal pump

* replace mechanical seal 
* lubricate grease lubricated
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* replace seal according to procedure in the laboratory manual
* use proper grade and amount of grease 
* replace or repair other parts as necessary to bring pump to manufacturer's specifications
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do reassemble, Reassemble %} centrifugal pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Follow procedure in laboratory manual

Adjust seals/gaskets as necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} centrifugal pump
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Operate under load and inspect for abnormalities
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-2111 %}  *Auxiliary Machinery II*.

### References

#### STCW Knowledge, Understanding and Proficiency


1. {% table 31.html#OICEW-C2, OICEW-C2 %}
1. {% table 31.html#OICEW-C2.3, OICEW-C2.3 %}
1. {% table 34.html#RFPEW-A1.3, RFPEW-A1.3 %}
1. {% table 35.html#ABE-A8.1, ABE-A8.1 %}


#### NVIC Tasks




1. NVIC 07-14 Task {% task 1H2B, 1.2.B %} *Lubricate a grease-lubricated bearing*
1. NVIC 17-14 Task {% task 9E1A, 9.1.A %} *Overhaul a centrifugal pump*
1. NVIC 17-14 Task {% task 9E1B, 9.1.B %} *Tighten pump packing*
1. NVIC 18-14 Task {% task 5G1B, 5.1.B %} *Operation of centrifugal and positive displacement pumps*



***

### Lab Manual

{% imagelink EN2111-labmanual-F15.pdf, Auxiliary Machinery II Laboratory Manual %}

See the {% guidelines %} for additional specifications of behavior and standards.