︠4f35c035-9a65-4c80-a539-1185946b1975︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5c591195-63fd-49c5-a919-22bb740ef277︡
︠7d3d65e0-a53a-42d7-a869-29bd43241269︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡9e7dbd2a-edf2-482f-afa5-9ce4938b8aee︡
︠47db4997-3743-49d5-a8d0-e6cdb60428e0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7384ede7-42f9-4586-ab14-bfa8d6eda168︡
︠54c73485-034f-4825-a759-62cb33c69170︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡8d4558ae-da22-49a4-ae29-89b54f80621e︡
︠2ac701fa-fd42-4fdc-a4cf-d4899c92df4f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡d799eabe-4ab8-4db6-a9f2-8d7171d03af8︡
︠9df36ed1-c2c8-4a93-a132-3cfad6bb7f66︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section ILT</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡7f373a51-b138-49e2-adf5-f21fdf69ad80︡
︠4007742c-5ee8-4686-a955-e58046fbfa88︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Injective Linear Transformations</span>
</h6></section></div>
︡bc8b4ff7-c55a-4dc3-a458-a4d34294d8f6︡
︠0a396896-f5b4-4081-a3d6-b7a9afc349c3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is injective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡0dd363bf-9a55-4f5d-a09b-7521ed1a154d︡
︠84b681a3-14e7-49dc-a7e6-25b5792844e9︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡17ecd6e7-a0b8-4756-a4c4-afa541f7a4b8︡
︠ddfbad29-5c91-4506-ab42-0f2a46c3e68a︠
T.is_injective()
︡f57f12c4-b214-4365-a92a-c39eed5a1319︡
︠d1f5017d-52f6-472d-acc0-683072dccf0d︠
T.kernel()
︡8ef84f9b-deed-4550-a22c-29569d87956a︡
︠3f927d20-90e7-4d3d-ad6f-a99002d897ef︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡11eb4686-6174-4948-a62e-6c7fd71a0b1f︡
︠b21ae506-c683-4b18-a38a-2e7ad42fe3bf︠
S.is_injective()
︡26231091-7580-4932-a17a-b99347767692︡
︠6b98fa98-c1e4-4177-a48f-f4988df0376d︠
K = S.kernel()
K
︡9c8358ee-0a0f-4e26-a66f-654fdccdcf53︡
︠dff625e0-4fb4-4e96-a50d-56295062e323︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <code class="code-inline tex2jax_ignore">S</code>, predictably.  If we try this with <code class="code-inline tex2jax_ignore">T</code> then the kernel vector is <em class="emphasis">always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡6f2655b3-6f31-441b-aa6b-7b2a58aca9fc︡
︠d6bfd059-4c97-4dd8-a88f-40b7b1f6d9fc︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡5c30c112-a5e4-4cb2-a54b-59b0071fdf8d︡
︠ce9ff600-8b66-4f22-a287-dd08e0000df8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡ab74b6ac-638c-4a7f-ada8-4754045055d5︡
︠e805dcb8-82b0-4e68-ae32-679cca12a688︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡b71cde89-61b2-42a8-aa9c-df47b01d3c3c︡
︠1db92a60-2b21-458a-ab4b-0fba88076b8c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3a9f4bab-cc6e-4eb7-a87b-47b02383aee3︡

