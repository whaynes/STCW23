---
number: "OICEW-3-1D"
subtitle: "Assessment OICEW-3-1D"
title: "Measure insulation resistance"
category: "Engine"
status: "Old"
cnum: "EN-4231"
---
### Condition

Aboard ship or in a workshop, given access to 3-phase electrical AC motor and controller, a Megger test meter, and other proper tools and safety equipment.

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
{% do Measure, evaluateinspecttest %} motor insulation resistance at motor controller
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Use megger to perform insulation spot test:

  * de-energize motor, lockout/tagout if necessary
  * verify megger ground connection
  * connect lead to field winding
  * select appropriate test voltage
  * energize meter for 60 seconds, or until reading stabilizes at infinity
  * read meter
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Correct insulation resistance measurement to standard temperature.
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Correct reading to 40 °C using nomograph or correction chart.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Evaluate, evaluate %} insulation resistance value
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Compare corrected resistance to IEEE standard.

State whether resistance value is within acceptable limits
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-4231 %}  *Sea Term IV: Marine Engineering*.

This assessment supports KUP [OICEW-B2.3]({{site.baseurl}}/tables/31.html#OICEW-B2.3)

***



See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.