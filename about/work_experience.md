---
layout: page
title: Work Experience
category: about
nav_order: 2
---

<div class="">
  <h2 class="text-3xl font-medium">Work Experience</h2>

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
