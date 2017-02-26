---
layout: post
title: "Bridge Out"
date: "2017-02-19 10:03:24 +0100"
images:
  - image_path: /images/cakes/apple-pie.jpg
    title: Apple Pie
  - image_path: /images/cakes/birthday-cake.jpg
    title: Birthday Cake
  - image_path: /images/cakes/black-forest.jpg
    title: Black Forest
  - image_path: /images/cakes/brownie.jpg
    title: Brownie
  - image_path: /images/cakes/cheese-cake.jpg
    title: Cheese Cake
  - image_path: /images/cakes/chocolate-cake.jpg
    title: Chocolate Cake
  - image_path: /images/cakes/fruit-cake.jpg
    title: Fruit Cake
  - image_path: /images/cakes/lamington.jpg
    title: Lamington
  - image_path: /images/cakes/lemon-cake.jpg
    title: Lemon Cake
---
{% assign sorted_gallery = site.photo_gallery | sort: 'weight' %}
<ul class="photo-gallery">
  {% for image in page.images%}
    <li>
      <a href="{{ image.image_path }}">
        <img src="{{ image.image_path }}" alt="{{ image.title }}">
      </a>
    </li>
  {% endfor %}
</ul>
