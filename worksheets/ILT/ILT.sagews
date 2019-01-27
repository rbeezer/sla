︠f669d884-6292-4754-abab-2a00a4518489︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡680d2e5b-2bdc-4e52-a31c-e37f41392bda︡
︠54361546-072e-4414-a645-329b1dc47e04︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡958db920-0283-40d4-a539-a7b42d2f19e2︡
︠d8765307-41ad-44aa-a90e-2a6df8a18ca6︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f8e6f3af-af04-4c5f-a7ef-50abe949bc66︡
︠3f069dc2-a56e-4f14-a6b3-a6157549d317︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡0461bff7-29d8-47c9-ac25-fcb02357c3ae︡
︠ab31ce1c-5352-4cdf-a691-b9e790af8722︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡6de9eb70-7d4d-400a-af64-12df970478c9︡
︠b279b642-6cfa-49fb-a4f2-8046fed0248e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section ILT</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡e406dcc2-e3fe-4e8e-a9cd-b5d0bde9d1e6︡
︠fda038c0-bb3a-4923-a7b0-475271f6bd79︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Injective Linear Transformations</span>
</h2></section></div>
︡477e7a74-b20e-4d90-a11c-16378b981468︡
︠eaf59700-cb3c-4a16-ab27-73dbb664f786︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is injective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡0700d98d-a49e-413f-a8e1-f65d104744fd︡
︠af4a0148-ffd8-4dec-ac6b-e6144348b9da︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡67ab2ad6-3d50-462f-a2f6-edc02136af07︡
︠a7e420f0-73dd-433f-a26f-94d65f786186︠
T.is_injective()
︡82d67076-1e9e-4bd2-ab08-a9d8f276bd83︡
︠40527c3e-34dd-428b-a54b-de5b74deb8c3︠
T.kernel()
︡c1413be6-92a6-40df-ab33-702cb9198d25︡
︠0e65090f-0a2b-4129-a1ec-46c728142914︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡e22573e8-2e24-4a47-a356-facc1e4327d4︡
︠bb6e1d1f-54e8-498c-a0b1-7bb37d1c043d︠
S.is_injective()
︡9e9fdadf-a339-4bd2-a8ee-a595803ac4f0︡
︠28fc7c75-b18f-4a4d-acdb-b714d9404153︠
K = S.kernel()
K
︡17b033da-99c1-4966-a633-2eb338d8919e︡
︠5b50c949-3d3f-4fc6-a63a-a6959cd7469e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <code class="code-inline tex2jax_ignore">S</code>, predictably.  If we try this with <code class="code-inline tex2jax_ignore">T</code> then the kernel vector is <em class="emphasis">always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡4e9ae633-0603-4600-ac63-719063d4b1a4︡
︠ff29a10d-4045-43a5-a47c-8fd1f45c81e2︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡5e278c88-9c8e-42c9-a700-48f2af60ce1b︡
︠1693e207-aa33-4860-a1d1-2292441a5e97︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡9ae3ec5e-3087-431d-a32b-44ee7239d977︡
︠011e5fba-eeb7-46e8-a32b-f7fd670a0e38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡53962f6d-95c5-4c23-a466-f5ef3463f712︡
︠25e1ce47-df6e-4333-a3a1-302eb180a3c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡9f580265-944f-4282-a6bd-7fdad9b59696︡

