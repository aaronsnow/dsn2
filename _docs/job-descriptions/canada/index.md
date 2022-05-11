---
title: "Job Descriptions - Canadian Digital Service"
tags: 
description: "Job Descriptions from the Canadian Digital Service's GitHub repo at https://github.com/cds-snc/digital-canada-ca"
folder: "job-descriptions/canada/"
---

# {{ page.title }}
{% for doc in site.documents %}
    {% if  doc.path contains page.folder %}
        {% unless doc.path contains "index.md" %}
            {% if doc.title != "" %}
            {% assign display_title = doc.title %}
            {% else %}
                {% assign slugpath = "_docs/" | append: page.folder %}
                {% assign slugname = doc.path | remove: slugpath %}
                {% assign display_title = slugname | remove: ".md" | replace: "-", " " %}
            {% endif %}
            {% assign url_size = doc.url | size %}
            {% if url_size > 0 %}
                {% assign link_url = doc.url %}
            {% else %}
                {% assign link_url = "./" | append: slugname %}
            {% endif %}
- [{{ display_title }}]({{ link_url }})
        {% endunless %}
    {% endif %}
{% endfor %}