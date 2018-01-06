︠c8cbc8f7-1b63-4638-a599-871150f1a565︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡92d5eadd-1f87-43fb-ac45-5dc7e27e3239︡
︠8cb62a0f-72f0-4a3f-a5f4-b527c194fd63︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6f0252c5-2472-4415-a474-929ca5d4ad10︡
︠0801b538-b6c3-4815-ad6c-2ffbba19fb60︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c79c852b-dd1a-40ab-a571-29125dc66c2d︡
︠17273967-d0a7-45b8-a5c5-10f2c9bd8ff4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡31b59ff0-7d01-456c-adb9-2da2f7bb43a4︡
︠7d533e22-ea0f-4b56-a822-15fc7f32a865︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡cd321614-9fe9-4f9f-a512-7377fe6310b7︡
︠6859b60c-aab9-44b2-a314-597c07b6ac76︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section NM</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡3df87ae7-6922-426d-a49e-8f70b876e226︡
︠9648eb3c-3965-4b8b-a9d5-8640608e7719︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡da023ed6-b1f1-46ba-a257-7edce4c723e4︡
︠dcede2bc-87d8-4844-a269-ae78a6c6efad︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡37924840-5c72-4407-a93d-2dba6612df27︡
︠c5f674eb-438c-46dd-ad60-b9e744d57a49︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-2">Augment with the zero vector, using the matrix method <code class="code-inline tex2jax_ignore">.augment()</code> and the vector constructor <code class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</code>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡21e17656-2aab-4608-a4ee-49830c8e1f96︡
︠9b78def3-41de-4c4f-a58d-4d7c17896a9f︠
︡03b8b87a-bcc9-4b8d-aad6-813fe477ee18︡
︠d2b9b612-1dfd-47a6-a453-ae5ee425b13d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-3">Build some random vectors with <code class="code-inline tex2jax_ignore">random_vector(QQ, 5)</code>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡91f4abbc-dcac-4917-af6c-31a9f8e2e932︡
︠6d461e1c-bf96-4c27-a32e-06fa0e3e1275︠
︡4e295386-0369-492c-a16f-f65f15e43f6b︡
︠4b964fac-5a0c-44af-a1b5-0bb6acb81f88︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡bc35284d-5a85-46cf-a5db-be674130a5f2︡
︠dae10194-eee6-4443-a4a1-f6f6d3703153︠
A.is_singular()
︡43e24e4d-23c1-4a16-ad50-f57eb423465a︡
︠99e8c260-093c-4bed-a1c3-2b89a3dc623c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡dc5b51dc-2d56-4a04-a821-b4c3d67b3ed6︡
︠aa3f6813-441a-4abb-af3d-0f2d2049b778︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡e23129a3-cf8e-4939-a53d-33c51f5590c0︡
︠9a3cc566-9251-41f4-ab47-88b5ec531e4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h6>
<p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡fe92b571-c042-4151-a606-e9e9fd640825︡
︠61404f6b-02c4-44d9-a64a-c23bb28179a9︠
︡f0b31f27-b3a7-47f5-a059-a2bee7179803︡
︠104d45c6-d7a7-4f17-a42c-ddf9bd0c4a45︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h6>
<p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <code class="code-inline tex2jax_ignore">B</code>.  Try it.  But this is not a theorem, see the vector <code class="code-inline tex2jax_ignore">c</code> below.</p></article></div>
︡d651397f-057a-4c7c-a3be-09bf26d332d7︡
︠7bddd174-1798-4260-aeab-cb48b7e8b1a8︠
︡9237f086-59ef-4206-a2f1-dcc247a3054b︡
︠eed15d2d-4862-4883-aea3-f8fbb43573bc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡e9acafad-ce63-41ec-a5d7-9cf88bdc04fb︡
︠0e5ab0a5-d734-4a52-a6bf-d4cdd58a19e1︠
B.is_singular()
︡5efa9aa3-08a4-4c59-afb4-e99b760f019f︡
︠2ee297d3-bdb5-418a-ab76-060917f17031︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <code class="code-inline tex2jax_ignore">B</code> as coefficient matrix.</p></div>
︡f60e9956-c048-4651-a118-81e8bf0b18b5︡
︠abca953f-bf00-4866-a987-2090940a022b︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡7c73719a-15a1-4528-abc0-3e0cfa104127︡
︠da45eb67-57cf-4922-a1ef-11e2edcfd010︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-5"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">5</span>
</h6>
<p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡7eab486a-0c2d-4bbf-aecd-defb0d9cd7ce︡
︠74d1f1a6-ca3e-48ea-a7d7-5b5465102e7f︠
︡de3a03ca-985c-47db-a159-9b4efb41b602︡
︠5e1981c4-c6d2-434f-af65-8f0cd0822392︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <b class="terminology">right kernel</b> in Sage.  It's description contains a lot of things we do not understand yet.</p></div>
︡6f078995-e6bb-48e0-a8d6-d65e33fb61ef︡
︠45e5d7f7-cdd7-4956-aad4-0bb6ae999fa8︠
NS = B.right_kernel()
NS
︡ffdd4b53-211f-49b5-a053-55e0c9e5285d︡
︠05ce21a8-4c96-4c31-a246-59c4a8d8e014︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-6"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">6</span>
</h6>
<p id="p-12">But we can test membership in the null space, which is the most basic property of a set.  Try <code class="code-inline tex2jax_ignore">u in NS</code> and then repeat with <code class="code-inline tex2jax_ignore">v</code>.</p></article></div>
︡d29a1cbb-408e-4642-a866-fc0b0a4d23d4︡
︠8b6157e1-232b-419f-a416-b02bc251085e︠
u = vector(QQ, [0,0,3,4,6])
︡cd93efad-1d03-482c-a86e-f1f1cc42d5a2︡
︠360d9fd4-ce2c-41af-ae36-c28b457975e1︠
︡8288f27d-74b9-40d4-a0b7-68ae3e3b7a16︡
︠c9852779-4ed0-48ed-ace9-452e36d71513︠
v = vector(QQ, [1,0,0,5,-2])
︡bec33ebb-8096-4025-aee3-839a1c0f3245︡
︠5032371f-29fc-400e-a5fd-970222f31356︠
︡8b7ceb4f-a69a-439a-a2f9-f910c32b64ec︡
︠b77245d8-48fe-4228-ac57-65175da881d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2017 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡d8f4b3a9-cf2b-4d4e-a513-d78efdb964a3︡
︠ce46bcbd-88ba-43b4-ae1c-04526bf316f4︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3c272e4e-cd77-48a2-ac94-9a8fceac2b21︡

