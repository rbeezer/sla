︠59bcf05b-09ca-4edb-a900-2d1339faa9e1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡33affa05-61f2-4cd0-a770-89e9c13cbd6a︡
︠e9e99e4a-3ab2-4d70-aef7-f71d0ef4ab10︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡50a4942e-e599-4861-a950-04822902dbde︡
︠c3f779ba-7af0-4387-a51c-511e44746404︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3c8230bf-a29a-42d2-a923-685769bee22e︡
︠c7c17fd1-4693-4c18-a0e0-8bf0102340ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡2b5fddea-e208-45d9-aee8-e64e75f98397︡
︠1c26bf3a-a2da-4a27-a416-d0c1e47dd017︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡7249809c-a3e7-4e9a-a5eb-bbb8dac58a59︡
︠1cb66460-003f-4819-a277-e33ac1496c3b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section NM</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡5581be61-e622-46a4-afdb-7bfb5bc94367︡
︠fcd7d863-a5ad-4717-ac04-8807352ff735︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡f22c9050-305e-4ddf-a590-a18a9b0cbf3e︡
︠5207fa85-ab50-4a2e-aa78-a1a3c3ecfac3︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡81699531-aed0-4f82-ad2a-5dcf082f52a1︡
︠523bcd10-ecec-4cd5-afa8-9056f6f16440︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-2">Augment with the zero vector, using the matrix method <code class="code-inline tex2jax_ignore">.augment()</code> and the vector constructor <code class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</code>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡59384f56-f42e-41eb-a6d6-e764e6ad711b︡
︠1655fa45-04a2-42b0-ae1e-506c442f1a02︠
︡629b795c-e508-4723-a815-666d2a15a2fa︡
︠55de0475-06b1-4e24-a2b5-82ceff904334︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-3">Build some random vectors with <code class="code-inline tex2jax_ignore">random_vector(QQ, 5)</code>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡e89b790f-f15b-424e-a779-cfb9ea97bdbe︡
︠1a7b5e56-d573-40a8-ae1f-7ef38ed168f1︠
︡70bec1c1-7a6f-4e6a-a65c-6cb5034d5a64︡
︠bd57b188-2039-401f-aa85-7e124268fc26︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡0e46507e-8aeb-43ed-a395-813a47cb0c72︡
︠3707d675-4f02-4b41-a87b-d0c1b098b953︠
A.is_singular()
︡c8acf836-e76e-4a22-acaa-78b49652f0c4︡
︠48cf4c78-26f9-45ac-a866-2dfe1956c478︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡8b04a512-d48c-4de7-a96d-08a07c9c250a︡
︠d96de03f-303c-4d0a-a4a0-1b9cc085dbbd︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡597b75ca-40a7-4c88-a7c3-7df19b221fdd︡
︠d274eeab-8eb3-468b-aff8-27528fda1fae︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>
</h6>
<p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡d714c026-bb57-4fb0-abaf-3d69ff8daad4︡
︠9acae9b0-07c5-4fb1-af6b-e995285b6f53︠
︡4ed19ba4-cac8-40b4-a1aa-d946e6f42537︡
︠88669014-5ee1-46fc-aa06-5d093e023286︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>
</h6>
<p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <code class="code-inline tex2jax_ignore">B</code>.  Try it.  But this is not a theorem, see the vector <code class="code-inline tex2jax_ignore">c</code> below.</p></article></div>
︡a1e17819-c67b-47ea-a48a-be7b8ba8edb6︡
︠36727fb9-87ff-427d-acb6-664e1cab5981︠
︡fc77fe7a-7f27-4e4e-ac19-38077141daa6︡
︠ba322319-e980-4174-a046-a7eaf5c479e1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡0ac3de7f-8581-45a8-aaac-044ee34b7b45︡
︠d5099d80-c155-42af-aa49-75eb4df8864d︠
B.is_singular()
︡c22ccb95-b660-4b8b-aa30-4a536a0628c7︡
︠5997563f-bf51-4019-abcc-c1714eb44ed1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <code class="code-inline tex2jax_ignore">B</code> as coefficient matrix.</p></div>
︡62a0a06e-f1d5-43d6-ac92-953077f3c329︡
︠58cf96ff-4f12-454f-ab19-eae1b69b95fb︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡f44b4d24-d73e-4983-a945-32014b8d6135︡
︠d2a1eee1-2b86-4a2e-aec3-3f531af976ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-5"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">5</span>
</h6>
<p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡b8e59c48-d646-4ce8-abd5-e04445e3e699︡
︠151fbbcf-3a57-4026-a9d3-ec43088fb755︠
︡06a266e2-51cb-49dd-af7a-366797016b8b︡
︠191cc82a-a7c6-4254-a05b-b8110a90cfc5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <dfn class="terminology">right kernel</dfn> in Sage.  It's description contains a lot of things we do not understand yet.</p></div>
︡adec9b4c-5f41-4677-aa7c-5247441d5ec1︡
︠37e148d9-5289-44e0-ab97-7eac6e18b668︠
NS = B.right_kernel()
NS
︡79f6b4f8-d4b6-4df4-aead-52cfe3e0b961︡
︠1eb14664-f39a-4a6a-ae45-ca79a6c8682d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-6"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">6</span>
</h6>
<p id="p-12">But we can test membership in the null space, which is the most basic property of a set.  Try <code class="code-inline tex2jax_ignore">u in NS</code> and then repeat with <code class="code-inline tex2jax_ignore">v</code>.</p></article></div>
︡94b550cc-5b0e-46a5-a09a-554dff3c7a4a︡
︠8ee4345f-0ab0-481a-ad13-879d49c8542a︠
u = vector(QQ, [0,0,3,4,6])
︡eb8cfc14-c1f8-4179-ac5b-0d2aa637e9b1︡
︠3adc7c98-1690-4eb8-a88e-38b626c5ebe9︠
︡d24aeb68-38ed-48c8-a150-f88beb2b007f︡
︠a41ee095-8de7-4a74-a389-382c3175d864︠
v = vector(QQ, [1,0,0,5,-2])
︡809af8b9-e46c-4b03-af3c-974b48cce944︡
︠ed5774f2-dd74-4925-ad28-9b0e646315d6︠
︡ab3f2b42-e2f5-4697-ab69-4054ec95fabd︡
︠05944bf9-edbd-4216-aacd-40d95c5f25ad︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡3b2cf78f-06cb-43fc-aa99-7ea4701df32a︡
︠065325aa-4a11-4640-a3fa-c687b07dd700︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡116649cf-40a5-410a-a249-d1068c60947a︡
︠65ae7ee3-e957-4385-a517-880df77b55d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡33de25d1-8bad-43e5-a837-fc009f71bc68︡

