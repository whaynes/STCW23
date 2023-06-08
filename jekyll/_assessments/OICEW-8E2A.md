---
number: "OICEW-8E2A"
title: "MMA Assessment OICEW-8E2A"
subtitle: "Make emergency repairs"
category: "Engine"
status: ""
cnum: "EN-1211"

---
### Condition

On a vessel of at least 1,000 HP, or in a laboratory or workshop.

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
{% do secure, Secure %} the leaking pipe 
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* wear suitable protective equipment
* lockout line
* drain line to confirm that it is not pressurized
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do fabricate, Make %} a temporary repair using a prefabricated repair clamp, or


{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* install clamp in accordance with manufacturer's instructions
* not exceed maximum torque
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do fabricate, Make %} a temporary repair using a soft patch


{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* fill hole with wooden wedges or plugs 
* trim wedges or plugs flush with pipe
* cover damaged area with rubber or gasket material
* secure rubber in place with two layers of marlin or wire.
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



<tr><td>

{% capture behavior %}
{% do evaluateinspecttest, Test %} repaired pipe for leakage
{% endcapture %}
{{ behavior | markdownify }}

</td><td>

{% capture standard %}
* apply pressure slowly
* note any leaks
* propose follow-up actions
{%endcapture %}
{{ standard | markdownify }}

</td></tr>



 </tbody>
 </table>

### Location

Assessed in  {% course  EN-1211 %}  *Auxiliary Machinery I*.

### References

1.  Table A-III/1 {% table 31.html#OICEW-C1.4, OICEW-C1.4 %}
1.  NVIC 17-14 {% task 8E2A, Task 8.2.A%}

***

{% imagelink redi-clamp.pdf %}

See the {% guidelines %} for additional specifications of behavior and standards.