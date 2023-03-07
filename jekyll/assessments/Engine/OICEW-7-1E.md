---
subtitle: Asssessment OICEW-7-1E
title:  Parallel generators
---



### Condition

{{ "Aboard ship, in the laboratory, or in an approved simulator given access to proper equipment and manufacturer technical manual." | markdownify }}

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


<!--rowstart-->

{% do Start, start %} incoming generator and raise voltage

<!--cellbreak-->

Start prime mover and bring up to operating speed

Place voltage regulator in manual

Excite field

Adjust frequency to 60 hz

Adjust voltage to system line voltage

<!--rowend-->


<!--rowstart-->

{% do Synchronize, adjust %} incoming generator with bus

<!--cellbreak-->

Turn on synchroscope

Match voltage and frequency with bus

Close main breaker when generators are in phase

Turn off synchroscope

<!--rowend-->


<!--rowstart-->

{% do Adjust, adjust %} load on incoming generator

<!--cellbreak-->

Transfer voltage regulator to automatic

Balance active (kw) load

Balance reactive (kvar) Load

<!--rowend-->


 </tbody>
 </table>



See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.


*****

**Note:** This assessment supports KUP [OICEW-B1.1]({{site.baseurl}}/tables/31.html#OICEW-B1.1), and is assessed in  {% course  EN-3111L %}  *Electrical Machines Lab*. 

