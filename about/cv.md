---
layout: page
title: CV
category: about
nav_order: 2
---

<div class="markdown" markdown="1">
# CV

Creative, passionate and friendly developer with a wide skill set, strong programming and design skills, backed by **9 years of experience** developing software professionally, **7 with Ruby**. Comfortable communicating with both technical and non-technical colleagues. I enjoy working in a multidisciplinary product team and especially working with a product owner to design a great user experience which is technically realistic.

I specialise in creating websites and web applications using:

  - Ruby on Rails, many associated libraries, and with tests
  - Relational databases (Postgres and MySQL)
  - Redis
  - Kafka
  - HTML, CSS, SASS, ERB, HAML and SLIM
  - Javascript (Turbolinks, Stimulus, Webpacker, React etc.)
  - Git, Github, Jira, Trello, Slack, Mac OS X
  - Product and design thinking, data analysis, experimentation
  - I’ve deployed (and maintained) applications and systems to AWS, Heroku, custom Linux servers running on Linode and used a variety of deployment tools including Capistrano.
</div>

<div class="mt-8">
  {% assign sorted_experiences = site.experiences | sort: "order" %}
  {% for experience in sorted_experiences %}
    <div class="md:flex mt-4">
      <div class="md:flex-shrink-0">
        <img class="rounded-lg w-16 md:w-24 md:mb-4 md:mr-4 md:ml-4" src="../images/{{ experience.company | downcase }}.png" alt="{{ experience.company }} logo">
      </div>
      <div class="mt-4 md:mt-0 md:ml-6">
        <h2 class="block mt-1 text-lg leading-tight font-semibold text-gray-900">
          {{ experience.position }}
        </h2>
        <a class="uppercase tracking-wide text-sm text-orange-600 font-bold hover:underline" href="{{ experience.company_url }}">
          {{ experience.company }}
        </a>
        <p class="text-gray-600">{{ experience.started }} - {{ experience.left }}</p>
        <p class="mt-2">
          {{ experience.content | markdownify }}
        </p>
      </div>
    </div>
  {% endfor %}
</div>
