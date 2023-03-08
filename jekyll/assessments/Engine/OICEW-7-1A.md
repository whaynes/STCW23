---
subtitle: Asssessment OICEW-7-1A
title:  Start emergency generator
---



### Condition

Aboard ship or in an approved simulator, given access to generator and proper tools.

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
{% do Check, check %} that system is ready to start
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Meet requirements of [OICEW 7-1B](oicew71b)
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Start, start %} the generator
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Turn generator mode selector switch to _manual_

Turn generator starting switch to _start_
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do Check, check %} that generator starts properly
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
Check:

  * oil pressure rises
  * air dampers open
  * voltage and frequency rises
  * jacket water temperature stabilizes
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Lab Manual

<%= imagelink("EN4131_Lab_Manual", "EN-4131 Lab Manual") %>

See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.


*****

**Note:** This assessment supports KUP [OICEW-B1.1]({{site.baseurl}}/tables/31.html#OICEW-B1.1), and is assessed in  {% course  EN-4131 %}  *Internal Combustion Engines II*. 

