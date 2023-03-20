---
title: Example Liquid Plugins
---

Basic syntax:


{% raw %}
~~~~~~~~~~
{% tagName file, optional link text %}
~~~~~~~~~~
{% endraw %}


You can:

:   Link to an image:   {% imagelink nvic-04-14.pdf, {{page.title}} %} or {% imagelink nvic-04-14.pdf %}

:   Link to a course {% course ST-0999D %} or {% course ST-0999, Sea Term 1 %}


:   Link to an STCW table  {% table 31, OICEW %}

:   Link to a  {% task 1D1B, task %} 

:   Link to an assessment {% assessment ABE-1-6A %}

:   insert an image {% image new.jpg %}

:   Link to the  {% guidelines %}

:   Link directly to a term in the Guidelines like {% do monitor %}

:   Link to a kup   {% table 21#OICNW-C4.1, OICNW-C4.1 %} 51d1 *Life-saving*

:   Link to page in the site {% pagelink /tables/31, OICEW Table %}
