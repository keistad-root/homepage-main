---
layout: page
title: Thesis & Publication
#subtitle: From the pexels folder
permalink: /publications/
feature-img: "assets/img/test.png"
gallery_path: "assets/img/pexels"
tags: [Page]
---

<!-- {{site.publications}} -->

**Bold**: First Author, *Italic*: Corresponding Author

<table>
<tr>
    <th>Type</th>
    <th>Authors</th>
    <th>Title</th>
    <th>Year</th>
    <th>Note</th>
</tr>
{% assign publications = site.publications | sort: "published_date" | reverse %}
{% for page in publications %}
{% if page.hide %} {% continue %} {% endif %}
{% if thesis %} {% assign thesis=true %} {% else %} {% assign thesis=false %} {% endif %}
<tr>
<td>{{ page.type }}</td>
<td><b>{{ page.first_author | join: "," | replace: " ", "&nbsp;" | replace: ",", ", " }}</b>
        {%- if page.co_author %}{%- if page.first_author %}, {% endif %}{{ page.co_author | join: "," | replace: " ", "&nbsp;" | replace: ",", ", " }}{% endif %}
        {%- if page.corr_author %}, <i> {{ page.corr_author | join: "," | replace: " ", "&nbsp;" | replace: ",", ", " }}</i>{% endif %}
        {% if page.collaboration %}[{{ page.collaboration | replace: " ", "&nbsp;" }}]{% endif %}
</td>
<td>{{ page.title }}</td>
<td>{{ page.year }}</td>
<td>{% if page.online_link %}<a href="{{page.online_link}}" target="_blank">Online Link</a>{% if page.file %},<br>{% endif %}{% endif %}
    {% if page.file %}<a href="{{page.file}}" download>File download</a>{% endif %}
    {% if page.note %}{{ page.note }}{% endif %}
</td>
</tr>
{% endfor %}
</table>
