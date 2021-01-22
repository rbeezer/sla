︠f5924ade-2c76-47a9-aefe-d58fbcf8119b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e817b529-446b-4ae6-a3c5-2aaaa669f8b8︡
︠39150db2-6f6d-4b1b-a158-67212d896712︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡05b2acf6-e655-4307-af2c-784a96720e91︡
︠0a7cc28c-872d-4c6e-a350-0c9472ae5adf︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ce93a662-2ea5-4c7b-aab1-bbe4057a4c52︡
︠dd9079f6-b2d8-4fa0-a343-e3f4f02b36cb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡7991a1aa-76c5-4ebf-aef3-2d62252516be︡
︠238b43cf-d35a-4846-a835-b522758aa906︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡8290de3a-d1d2-4b67-a1ea-6a09c8e428e2︡
︠f758727b-d4ca-4781-af9f-9f998617b309︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section ILT</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡6f0b78ef-4b41-46b9-a7a2-7411da7e1221︡
︠c80d4852-7aeb-4b47-a4b2-7379443b35e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Injective Linear Transformations</span>
</h6></section></div>
︡6af773fd-5773-4338-ab74-de748b9b6d05︡
︠37f2e75e-4b6b-4f9e-a746-b2527de094ea︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is injective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡a1193009-f445-404e-afc3-685bbd99e2ec︡
︠c8de11f2-ae7f-4373-a27f-5d7b9292c75a︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡32211420-6ced-4b15-af4d-e9b6549e765d︡
︠09f2a07d-0d9f-4b50-a144-e3e9a4e426a8︠
T.is_injective()
︡3b13ec35-a424-44e9-a4fe-9e287dc62fcd︡
︠70893667-b0be-440d-ae5c-dea072e49135︠
T.kernel()
︡eb5759db-09cc-481c-a501-2e0ce7fdc8ef︡
︠ecb430d1-cdb8-494a-a59a-6b8687e84a03︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡aef63370-53d0-4c64-a6ce-12a99318b63b︡
︠9ea94ecb-e2fb-43b2-a82e-6311db4e3f57︠
S.is_injective()
︡be567a44-6265-4da1-a023-e96fa3be2ee7︡
︠696bfd64-2c69-4243-a345-63ed391e74d5︠
K = S.kernel()
K
︡c3f2ff05-322a-4b4f-af84-4f73cbce9426︡
︠aeaa0990-fd31-47e5-a6de-b2d269e3778a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <code class="code-inline tex2jax_ignore">S</code>, predictably.  If we try this with <code class="code-inline tex2jax_ignore">T</code> then the kernel vector is <em class="emphasis">always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡e288d826-913c-42bb-a819-6db402de555e︡
︠f417de0f-4a08-4633-a1b5-b22762940fa6︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡d9ae17c2-61c7-492a-ac46-10937f6046fe︡
︠cd87b9e8-b598-4d2b-a7f0-e007477b7c17︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡ae426fc4-78a1-4073-abf3-be3b682e3aa5︡
︠14457a53-fdba-4ec1-a271-53f9e61145be︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡ac3f1b97-e94a-4327-a45e-6a1630c510ac︡
︠b2056abc-dea7-446f-a01a-1c5006570a36︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡cf9c4f70-c4e6-4c3d-ab3e-55bb5b1b2256︡

