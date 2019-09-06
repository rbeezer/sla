︠ed966f16-d853-4ca6-a706-73eeff022819︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡306c6dc7-3909-4dc4-a444-bb899789ab2c︡
︠56cb229e-ad8b-4667-abac-f678f1f8ba4d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6933566e-51cd-4c34-a4ef-0e586596e412︡
︠18c5b2c1-113d-4ff0-a34e-24d8c3e5acab︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡fb4b1fed-1fe4-4ce4-ad18-b4d9d9dbf779︡
︠7c8bae14-24f4-4da1-aa8f-df3dde900e46︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡ac327d08-23d1-47bc-a855-724a019a1986︡
︠03336a17-33a0-451c-a192-615bc6c50ef8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡40c83225-9684-47d5-a3ff-661b1d1d31c2︡
︠a126969b-b224-4792-acd1-c37de8bf6e12︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section NM</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡0b332cab-86ea-4a53-ad21-ef45c2e82463︡
︠77faa175-cfba-4960-ad32-f2137e6668bc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡c24bcec3-4930-43d7-a4ba-6ad8d573bdc6︡
︠a88e35d0-929c-42d9-a914-48e11c68f26b︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡8141f86d-80f2-4c20-a6b2-a0b91c5845ab︡
︠13c55cdc-96c9-498b-a9e7-c9873a3828ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-2">Augment with the zero vector, using the matrix method <code class="code-inline tex2jax_ignore">.augment()</code> and the vector constructor <code class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</code>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡3f1046c2-269e-4f27-abc6-380bf353c8ba︡
︠6fa7ffeb-101b-4f1d-a7da-d13ec3126eb2︠
︡91139127-d48f-4f80-adfe-8dfbbbede4c9︡
︠75b894ac-b704-460c-a7db-5594140f2e4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-3">Build some random vectors with <code class="code-inline tex2jax_ignore">random_vector(QQ, 5)</code>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡8b434d7f-936a-47da-a348-f9e8dfddffc4︡
︠d40274ff-392a-4497-afdb-8d566363063d︠
︡a12a39f3-83cb-4d15-a503-0906f696aacd︡
︠77e92131-4c51-4723-ad74-08d0ed783120︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡f98d3af7-c431-46b4-a98c-d84a9371bb3e︡
︠c2840bef-2b46-4ca1-a039-c121cc53d0f1︠
A.is_singular()
︡fb37f42e-4598-4b63-ad66-7389446984a7︡
︠5a3912d4-119a-4a50-ad27-4abc4f1a99e4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡13e4c06a-47ce-4273-a346-b9066467ff1d︡
︠42136e3d-8755-458c-a9b1-07a1d1638539︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡28c4b22e-fb65-41bd-ad58-f5fa6dbc0414︡
︠e4ca97cb-6c7c-4188-ae6d-7636094b6408︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>.</h6>
<p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡9ec586c4-1319-4f22-a718-58f8ff23b88b︡
︠019d7133-6578-4e6b-a0ec-9448c48f7370︠
︡f72859a8-d1d4-49cb-a4da-17e6fba8a2b1︡
︠2a943edd-7af4-4f91-aaee-4f5255efd818︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>.</h6>
<p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <code class="code-inline tex2jax_ignore">B</code>.  Try it.  But this is not a theorem, see the vector <code class="code-inline tex2jax_ignore">c</code> below.</p></article></div>
︡a4349626-4a14-4e0d-a0bb-efb420900692︡
︠f4638fab-6f58-4349-a144-c34876807870︠
︡b641ad14-883d-4162-aa76-f493c19510e9︡
︠19f6ba3c-ec51-4a68-ac10-305d31ed70e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡9fe9693a-617c-4312-ace4-c242f83e5ae3︡
︠073e1984-4f6b-4bad-ad7b-13d66de9b34a︠
B.is_singular()
︡751a334c-89be-4469-a240-d64bda9b44f9︡
︠e7e01236-ebfa-4a41-a466-44d90a3968e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <code class="code-inline tex2jax_ignore">B</code> as coefficient matrix.</p></div>
︡1cd0df20-51c5-4c7a-adb1-406196bd026e︡
︠87a5784a-8ab5-4f7d-aa58-b991a3860896︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡71e276ac-127c-4864-a51a-ec37deb65cef︡
︠35117881-594c-46d3-ab34-51199f845e04︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-5"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">5</span>.</h6>
<p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡d49e517e-3c78-49d5-ac88-1ea2741096ea︡
︠abe49360-1ad9-4266-a83f-14dc750859f3︠
︡3af1f856-9707-403e-a7c1-7d649daa6f36︡
︠370280be-6567-4c6a-abe6-c643be15885b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <dfn class="terminology">right kernel</dfn> in Sage.  It's description contains a lot of things we do not understand yet.</p></div>
︡e83fbbf6-a6c0-4d97-a846-e1c24706c8e2︡
︠4da7c63c-de29-4e02-a687-c7899d0a3d32︠
NS = B.right_kernel()
NS
︡f8fa0b04-8e2b-471b-aa74-14bad58efbb3︡
︠ebbd5c96-0143-4cc4-a86c-c8173fcbdc79︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-6"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">6</span>.</h6>
<p id="p-12">But we can test membership in the null space, which is the most basic property of a set.  Try <code class="code-inline tex2jax_ignore">u in NS</code> and then repeat with <code class="code-inline tex2jax_ignore">v</code>.</p></article></div>
︡f54b3a7c-18d6-4ba2-a029-df2e65d31af8︡
︠4fe8b133-e4bb-4a66-ac79-64882fe02fb2︠
u = vector(QQ, [0,0,3,4,6])
︡8f278d8b-06fc-42a3-a97a-2dea61942c4d︡
︠edd145ed-0f40-4b7a-af01-93e8e4a79c4e︠
︡a3b740c2-dd21-4de9-a7d9-87c70bca2577︡
︠31af9ef5-1c34-4e02-a780-108e78933c9a︠
v = vector(QQ, [1,0,0,5,-2])
︡3dcec5cb-be8e-427e-a5f6-607eff693a5d︡
︠49a07664-212a-4f51-aeb1-511df1d6a000︠
︡d59761ec-50d8-4ade-acc9-d2af0a0d0bd1︡
︠bb653d61-9c27-44d5-a292-c7476417123f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡3eba3f89-1153-49a0-aeda-091508a20c43︡
︠c827367b-f8d5-4c60-ad5d-7679b826a32f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡6e796bfd-6f64-452a-a5f0-376b12338e6a︡
︠37573771-4903-4ec1-a293-b588f52c1249︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b8010387-5c15-40f2-a12c-5e2d6139d5b1︡

