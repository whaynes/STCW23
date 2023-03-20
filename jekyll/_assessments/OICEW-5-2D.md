---
number: "OICEW-5-2D"
title: "STCW Assessment OICEW-5-2D"
subtitle: "Test and treat boiler water"
category: "Engine"
status: "Old"
cnum: "EN-3131"
---
### Condition

In an approved simulator, laboratory, or aboard a ship, given access to a boiler water sample and test equipment.

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
{% do describeaction, Describe %} the purpose of boiler water testing
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Describes the consequences of failure to maintain boiler water quality
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} the boiler water
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Conduct the following boiler water tests:

  * amerzine test
  * phosphate test
  * phenolphthalein alkalinity test
  * total alkalinity test
  * chloride test
  * conductivity test

Conduct tests in accordance with vendor's recommendations
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Evaluate %} the test results
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Compare results to operational limits
  
Recommend corrective actions required, including:

* bottom blow
* continuous blow
* chemical dosing as per vendor's recommendations
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
Simulate treating the boiler as required
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Describe safety and environmental hazards and safe handling precautions

Describe expected results
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-3131 %}  *Steam Generators*.

This assessment supports KUP {% table 31.html#OICEW-A4.3, OICEW-A4.3 %}

***



See the {% guidelines %} for additional specifications of behavior and standards.