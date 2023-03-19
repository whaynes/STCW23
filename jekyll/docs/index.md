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

:   Link to a standard description {% do monitor %}

:   Link to an STCW table  {% table 31, OICEW %}

:   Link to a task {% task B-01-07-A, task %} 

:   Link to an assessment {% assessment ABE-1-6A %}

:   insert an image {% image new.jpg %}