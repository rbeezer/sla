︠c2df4cb8-36e2-4336-a8a6-f86f2bf765b3︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡375169d2-1080-43c4-a94e-03762922198c︡
︠cb31cab9-dda6-4dd2-a277-17b8ee200499︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡065471f3-bd16-43f4-a51b-c238b26e272c︡
︠03258a77-e34f-497e-addf-9a2d2df8b2fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e01069bd-0905-48ad-a67a-5058d75d01f0︡
︠6b60fb06-7c2f-49f3-a9ce-2a617d93aa45︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡7b1eb0ac-7289-4129-a5c6-4f0a187ab25f︡
︠7cb9a6a4-216b-4a8e-a4da-a1abbb336e5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ed796200-631d-4ec5-ad13-8c4270da4499︡
︠f7671d91-e050-4e3c-a41e-79acb1d9b1d4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section NM</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡adc14efe-0de5-4dd9-aa1a-88325f429f36︡
︠4e3108ff-60d5-45a2-ae53-8ecc11c54547︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡b96fb68b-6fb3-440e-a7f4-b82743918d6d︡
︠526b222a-d898-4be9-aa58-e00085326cfc︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡94f00122-bfa4-4762-a108-9f8af1f336f2︡
︠3972983c-afc5-434b-a65c-feb88b98fcfe︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Augment with the zero vector, using the matrix method <code class="code-inline tex2jax_ignore">.augment()</code> and the vector constructor <code class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</code>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡f28752f8-ea7a-4fbf-ab24-81239bf34e03︡
︠df657b77-461c-4118-a0ca-44c786379769︠
︡b39181d0-8169-4d7b-a577-0bcd3546ced3︡
︠8861ae37-fb95-456c-a0c4-8d05b3af97d6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Build some random vectors with <code class="code-inline tex2jax_ignore">random_vector(QQ, 5)</code>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡a5f079fa-1e6a-44b1-a1ce-54c5978461b4︡
︠86a76116-c352-4d9e-afaa-dfe9581dd8f8︠
︡c7e7f591-b541-482a-a615-1f509a8a8537︡
︠e0fd7f20-0e64-4fe7-a958-e68461efc65f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Instead—cheap, easy and powerful:</p></div>
︡e3fe16d3-7e1d-431c-aab2-299aefccf835︡
︠72970aed-d5cf-43f0-af9b-2c5b63b30ab3︠
A.is_singular()
︡f358b629-40e0-402f-a018-c442fb6ae65a︡
︠a4e0d960-2a01-4a03-a915-2e96082721d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡b8c9892e-949a-453a-a8dc-d0a77bf922af︡
︠a586f001-fa68-45cc-a05a-c3a6a119a3c5︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡36bbdace-cb82-44de-a1d3-ba761172b267︡
︠7ad36bd2-99e2-4c20-aa3e-ef85597cc2f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡97d7a327-5c13-4ed6-ae8a-c695cee3bb6b︡
︠ef2b7cf9-4465-4842-af3a-90135d241d07︠
︡8e7bae79-8bee-4173-a366-e07f3cd51f31︡
︠7c0e7adf-45b2-44c9-a700-ee05e42c94cd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">A random vector of constants will only rarely build a consistent system when paired with <code class="code-inline tex2jax_ignore">B</code>.  Try it.  But this is not a theorem, see the vector <code class="code-inline tex2jax_ignore">c</code> below.</p></article></div>
︡6396211f-055b-4898-a208-2f73467621af︡
︠e0287598-49e9-4563-ad94-5b3de736e579︠
︡46a7e1c7-a118-4a7f-ae48-2a4573da9b01︡
︠557fd60a-ebbf-4467-a34c-c661ce499e5a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Instead—cheap, easy and powerful:</p></div>
︡0a089dea-7c52-4c99-a3dd-fa46b050aeff︡
︠9fa98366-ee33-410c-aa4a-744cbfd0f7fe︠
B.is_singular()
︡78e11658-d361-4771-a416-e9a2652362a5︡
︠12df3f69-74dd-4545-a787-e718a7eca4e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Two carefully crafted vectors for linear systems with <code class="code-inline tex2jax_ignore">B</code> as coefficient matrix.</p></div>
︡9f77fa65-4ea1-4cf5-a17e-855aef1ccb1a︡
︠1ba82939-f779-4839-ae40-cd6275281e43︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡95e3e0c1-9c80-4513-ae08-fd66fdb26d0b︡
︠090edef9-0859-49ba-adaa-6a7c079c909a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-5"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">5</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡b94c81b7-bb01-449d-af77-9d119293e338︡
︠de22ba46-2012-426c-af53-7f191abadad1︠
︡2b04dbf2-2134-445a-a150-4cf55001aeb8︡
︠fd3021c1-4e37-427c-ad82-ddfd34e46921︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">A null space is called a <dfn class="terminology">right kernel</dfn> in Sage.  It's description contains a lot of things we do not understand yet.</p></div>
︡12f5216f-3ad7-420f-afd8-1b508957db00︡
︠c12c65ed-4182-48a3-a890-0bc5b5f0cdcc︠
NS = B.right_kernel()
NS
︡d9e05553-2a5b-4de5-a06f-16adc53b6f82︡
︠c6cb610c-536b-4e49-a440-366d4337ea77︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-6"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">6</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">But we can test membership in the null space, which is the most basic property of a set.  Try <code class="code-inline tex2jax_ignore">u in NS</code> and then repeat with <code class="code-inline tex2jax_ignore">v</code>.</p></article></div>
︡d3d9f3bf-f136-4c2a-a56f-5a6c8afc2e69︡
︠54d3ec69-c6a0-4d72-a8c9-823eec9e8bcf︠
u = vector(QQ, [0,0,3,4,6])
︡424252ec-cb37-4b0e-ae8b-70dbec88b137︡
︠17a5af89-c54f-4c00-abe8-7694181a0db3︠
︡4cbf25fa-eb03-4bc3-ab81-4f7d4966363e︡
︠98b57da6-8928-4cd5-af9d-1dd9b131878b︠
v = vector(QQ, [1,0,0,5,-2])
︡62317bf2-17c3-4f81-a48a-2a8f441759fe︡
︠55096746-a5d6-49cf-aa17-532d3625e8fd︠
︡6436dae1-087d-4f0a-aebb-60f9e3008e87︡
︠cec05aa4-bad3-48c3-a2be-d1fdad0ad896︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡065c6a70-f2bc-4538-a953-83571041b2a5︡
︠8bbe829f-282e-4471-ac17-09b50c55d178︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡6031eb37-b6fd-4535-a6f6-e009505b53cd︡
︠fd00e79a-4a35-4fcf-ad27-887d05462572︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡56f66edf-82ac-47a8-a77b-ef36d4c2ae71︡

