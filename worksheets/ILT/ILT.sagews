︠1132b59e-7f86-4d96-a0cf-ca7498f1eb71︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5939cee5-d645-4d1f-a31b-3e5a3f2201e8︡
︠2325ce4b-3227-47f9-a63b-26980d73084e︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡1723cf11-a43d-4cbd-a520-047ac784a8df︡
︠7e691382-4378-4134-ae86-f9a637ebc849︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8b7e481d-b612-4f26-a31f-91847cc589ec︡
︠2544f196-eb8d-491f-ac2a-4743a5646727︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡04d48c61-25da-427b-a23d-c851b0624ca7︡
︠4ac1e4e5-61a3-4bca-a7fe-5b6ac2b250f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡74a36984-ef59-4316-ae85-ce039d640c40︡
︠cb46fa07-ff75-48a6-ae8f-35d4971fb1bf︠
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
<div class="date">Spring 2020</div>
</div>
︡17b6eb1e-30ea-4564-ac4c-c82acb1dace6︡
︠c0e86c37-b689-40e0-a5a5-27d419f27af6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Injective Linear Transformations</span>
</h6></section></div>
︡1c6f4db8-57ed-41fb-a246-76d4beea1651︡
︠c6d35201-a699-43a8-aecd-44419f07a1e0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is injective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡2a6fec2f-ec57-4582-ae6f-bb30ccfc4ae2︡
︠a0d00bd2-abff-4247-a53e-4fa8f65e3a82︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡c32a4351-50c4-40f9-a85d-79c12b879b12︡
︠ee609a3f-b9f8-4ef8-a88d-5f6109c81642︠
T.is_injective()
︡921f3a97-a509-4df9-a572-3c1ae13ba41e︡
︠7b19a444-beac-487b-a2d3-4005ae7e912b︠
T.kernel()
︡09623167-6250-4fd8-abf6-e37f92d00722︡
︠33ca5fbc-62fc-43e9-ab99-18d976b57bda︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡d0eaa3a6-019f-4dce-a778-091e295ded8c︡
︠76d5189b-fac8-4aa4-a81c-126208b56a2f︠
S.is_injective()
︡7a6407ca-3b40-44fa-a98b-59dbce474b27︡
︠a911e29a-cc61-4ca0-a738-29205ee96358︠
K = S.kernel()
K
︡af2c10ea-ab71-4c3c-adb0-6d98ef6c8c0d︡
︠5ad76f74-92f0-43c4-af9f-0fda8b9e82b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <code class="code-inline tex2jax_ignore">S</code>, predictably.  If we try this with <code class="code-inline tex2jax_ignore">T</code> then the kernel vector is <em class="emphasis">always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡002d89df-e61d-475a-ac54-b549fc48bcb6︡
︠5b779006-fed1-4c46-a70b-bc0f60ca9774︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡edf64865-f54c-4610-ad91-84e945a10387︡
︠8748d904-ff94-4c06-adef-f64d092aa2d3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡a6afe89f-c8f6-4db6-a385-27b65b086ab4︡
︠d6a758ff-7c86-4252-a98a-eb292752fbca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡fa092622-5aee-4003-a39c-d77f1a76c629︡
︠267a5c37-aeec-41df-a810-7b1009cdf56d︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡19493a66-1150-4d7d-acff-d7bf7b84879f︡

