---
number: "OICEW-8-2D"
title: "MMA Assessment OICEW-8-2D"
subtitle: "Inspect valve manifold"
category: "Engine"
status: ""
cnum: "EN-2231"

---
### Condition

Aboard ship or in workshop, given a piping diagram and other equipment needed to complete the task.

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
{% do lockouttagout, Lockout/tagout %} valve manifold
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Identify contents of pipe

Isolate pipe section

Relieve pressure and drain section
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do usetools, Use tools %} to open up piping for inspection
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use:

  * combination wrenches
  * socket sets
  * other tools as necessary
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Inspect %} and {% do clean, Clean %} pipe and manifold
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Dismantle flanges

Inspect interior of pipe

Clean and prepare joints for reassembly
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do usetools, Use tools %} and proper joint materials to close up piping system
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use:

  * combination wrench
  * socket set
  * torque wrench
  * gasket cutter
  * hole punch
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} system to identify leaks
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Perform hydrostatic test for leakage

Prove joint leak free
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-2231 %}  *Sea Term II: Marine Engineering*.

### References

1.  Table A-III/1 {% table 31.html#OICEW-C2.3, OICEW-C2.3 %}
1.  NVIC  {% task , Task %}

***



See the {% guidelines %} for additional specifications of behavior and standards.