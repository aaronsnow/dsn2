---
layout: page
title: DSN
permalink: /
---

# The Government Digital Service Network
(_Short blurb about the DSN, a joint Beeck Center/USDR project_)
(point to the [About](/about) page for more)

## Membership
... _Insert blurb about who can join, why you'd want to, and how to [sign up to join our listserv / network](https://airtable.com/shrltywvcMrfvKbpN)_

## Library
Check out the [DSN Library](/docs/library). We have job descriptions!

{% assign latest = site.posts.first %}
   <!-- <div class="post-preview"> -->
   <h2>The latest: <a href="{{ site.baseurl }}{{ latest.url }}">{{ latest.title }}</a></h2>
<p>
    <i>{% if site.posts.size > 1 %}There's more!{% endif %} Click <a href="updates">here</a> to see all our updates.</i>
</p>
   <span class="post-date">{{ latest.date | date: "%B %d, %Y" }}</span><br>
   {% if latest.badges %}{% for badge in latest.badges %}<span class="badge badge-{{ badge.type }}">{{ badge.tag }}</span>{% endfor %}{% endif %}
   {{ latest.content | split:'<!--more-->' | first }}
   {% if latest.content contains '<!--more-->' %}
      <a href="{{ site.baseurl }}{{ latest.url }}">read more</a>
   {% endif %}
   <!-- </div> -->

## Anything else we want on the homepage
lorem ipsum etc etc
