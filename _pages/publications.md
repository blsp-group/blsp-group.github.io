---
layout: default
title: Publications
permalink: /publications/
description: Publications from BLSP Group
nav: true
nav_order: 4
---

# Publications

<div class="publications">
{% bibliography %}
</div>

<style>
.publications ol {
  list-style: none;
  counter-reset: none;
}

.publications ol li {
  counter-increment: none;
}

.publications ol li::before {
  content: none;
}

.publications .bibliography li {
  list-style-type: none;
}

.publications .bibliography ol {
  list-style-type: none;
  padding-left: 0;
}

.publications .bibliography ol li::marker {
  content: none;
}

/* Image sizing for publications */
.publications img {
  max-width: 300px;
  width: auto;
  height: auto;
  border-radius: 8px;
  margin-right: 1rem;
  margin-bottom: 1rem;
}

/* Desktop mode - larger images */
@media (min-width: 769px) {
  .publications .bio .bio-image {
    max-width: 350px;
    min-width: 250px;
  }
  
  .publications img {
    max-width: 350px;
    max-height: 250px;
  }
}

@media (max-width: 768px) {
  .publications ol {
    list-style: none;
    counter-reset: none;
  }
  
  .publications ol li {
    counter-increment: none;
    list-style-type: none;
  }
  
  .publications ol li::before {
    content: none;
  }
  
  .publications .bibliography li {
    list-style-type: none;
  }
  
  .publications .bibliography ol {
    list-style-type: none;
    padding-left: 0;
  }
  
  .publications .bibliography ol li::marker {
    content: none;
  }
  
  /* Mobile mode - smaller images */
  .publications img {
    max-width: 300px;
    max-height: 200px;
    display: block;
    margin: 0 auto 1rem auto;
  }
}
</style> 