---
subtitle: Asssessment OICEW-7-1D
title:  Connect ship service diesel generator to main switchboard
---



### Condition

{{ "Aboard a dead ship or in simulator, given access to generator and proper tools, approved instruction, and safe working environment." | markdownify }}

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

{% do Check, check %} that system is ready to start

<!--cellbreak-->

Meet requirements of [OICEW 7-1B](oicew71b)

<!--rowend-->


<!--rowstart-->

{% do Start, start %} the generator

<!--cellbreak-->

Turn generator mode selector switch to _manual_

Turn generator starting switch to _start_

<!--rowend-->


<!--rowstart-->

{% do Check, check %} that generator starts properly

<!--cellbreak-->

Check:

  * oil pressure rises
  * air dampers open
  * voltage and frequency rises
  * jacket water temperature stabilizes

<!--rowend-->


<!--rowstart-->

{% do Operate, operate %} generator to achieve conditions suitable for synchronization

<!--cellbreak-->

Adjust generator to normal operating speed

Place voltage regulator in manual

Excite field

Adjust frequency to 60 hz

Adjust voltage to 120V

<!--rowend-->


<!--rowstart-->

synchronize incoming generator with bus

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

Balance reactive (kvar) load

<!--rowend-->


 </tbody>
 </table>



See the [Engineering Assessment Guidelines](guidelines) for additional specifications of behavior and standards.


*****

**Note:** This assessment supports KUP [OICEW-B1.1]({{site.baseurl}}/tables/31.html#OICEW-B1.1), and is assessed in  {% course  EN-3233 %}  *Steam and Gas Turbines*. 

