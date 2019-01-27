︠c9cb3af9-efbc-41e1-ad5f-aef4207f24f0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡cc987d27-6171-4e80-af65-f03e46fb5204︡
︠2c1c58a8-01a8-4380-a386-977d6b366987︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡db4f7982-284c-4074-a1bc-844f2ab602f8︡
︠9d3dcb74-e9d2-46d9-abf5-789c7c622741︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡fee3bbf3-fdcc-403a-aaea-f5291958c7f0︡
︠cbf5d8d0-0165-4abc-a437-be4c16f87cd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡ea1dff5d-06f6-4c92-a8d6-094455b5e31c︡
︠9f6ad6a3-4a93-415d-a3ea-ae4e394fe320︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡fc056dc1-00ba-43d0-a10e-bbdf919e0813︡
︠81f97663-7733-4270-a281-14ce460e5067︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SLT</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡4f838f9f-3177-459f-a5b7-7cc4b1abf0c6︡
︠706f3efd-e2e6-493f-a89b-018d53e0fe0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Surjective Linear Transformations</span>
</h2></section></div>
︡57cb7fa6-d88b-4e1f-ae99-9aa17f560440︡
︠098c4fce-597d-456f-a549-ee39fb9519a5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is surjective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡abf27414-37ea-4531-a495-e73213da9e33︡
︠4de40681-ab98-46ec-a735-d2d14e428d1c︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡16afaa63-c0e5-4954-a6d7-bba9ce8111f2︡
︠d0870316-6d65-430a-a768-f239cf84095f︠
T.is_surjective()
︡c305a08c-6ead-44dd-ae54-757ae3a78a0e︡
︠ad1a2cab-81a3-4ee1-acc6-03b8eac81432︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡2ef49204-d857-4c35-ad02-416095a5dca1︡
︠edfe1811-cea1-4665-ac35-e86580a368f0︠
T.image()
︡9ed8df1e-0ddb-4f31-a505-bed1462e9879︡
︠8076955a-3681-4185-a3d5-9846a8dc764e︠
T.image() == T.codomain()
︡0df849da-311c-4234-a862-dfb166a322a7︡
︠1a502a9f-4d15-4a38-afbf-19fdb5359673︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡e9d490e3-f210-48b4-a1a0-0caf955cae32︡
︠11cf55f4-9f6a-40f6-a500-51c015562045︠
S.is_surjective()
︡367f5d55-1e48-4947-af98-ff9cfb251455︡
︠a8c2810d-61cb-4a5f-a259-a59418f3e183︠
IM = S.image()
IM
︡73c35456-2b8e-4623-a649-0fe94f24306c︡
︠4df00555-b713-4586-a9fb-2fa19f0b44ca︠
IM == S.codomain()
︡008f1856-e0e0-4438-aad7-507010f1b467︡
︠f687690b-ffcd-4f01-a8ae-0ff7f08f2338︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Pre-Images</span>
</h2></section></div>
︡b3f4b5db-1dbd-4bad-ac37-b36ab6a35d79︡
︠52d478a4-4b1f-48ca-a69d-d514fcaaf076︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡9d9620fd-5386-4213-ac7c-a51b9174c744︡
︠ee175484-1d7a-44ab-a763-4186c18464ba︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡999b1ef9-317a-4bb5-a63b-98d2f947dac8︡
︠451d02c0-cf13-4acf-af32-bda8f9131fdd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">A check on our work.</p></div>
︡7239f3cb-39b5-4c51-ab54-e029912a44a2︡
︠1244c489-0c2b-41f1-a3b6-79693fb5a0a5︠
S(inp)
︡2c7703b9-cb5f-477e-a8a9-e135b657c077︡
︠5a3c130d-dc92-4b09-aa94-4758d1e38b30︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-5">We can make other inputs, using the kernel.</p>
<p id="p-6">Any value of <code class="code-inline tex2jax_ignore">new_inp</code> is in the preimage of <code class="code-inline tex2jax_ignore">out</code>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡29a56c96-9633-49f3-a39c-7d4d52f45809︡
︠83338902-0993-4c32-a06c-dea1b04b5935︠
K = S.kernel()
K
︡3c8601f0-40ad-4370-a677-355d71ebc340︡
︠88d1ed3e-e7e8-442f-a597-ccd2a438f0b4︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡13ce5bc8-9af8-434a-a2a3-a6079acd2bdd︡
︠ff1ce67b-e05e-4983-a3bd-7647ed1aa358︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>
</h6>
<p id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p></article></div>
︡15721699-18a7-463f-aa7b-7e2b5087b2b1︡
︠bc63f898-1b0b-427e-a215-d9404a0d1c0c︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡db93e8c8-1d32-4959-a77b-d54259c66d26︡
︠af1330cf-8ddb-4f60-a8e7-4cc9e22a897a︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡f1915d11-c9e9-45df-a56d-db9a48c72509︡
︠f0b91063-23d0-4c2e-ac85-a50405ccce1d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡81d4be51-175e-4811-a6e9-b9fcdf1ace9e︡
︠b1f85a7b-c821-47a3-a801-2cb1980b3c9c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡a4ead454-f1d1-435c-a6dc-809312c1d0e7︡
︠9ff83a32-d30a-4f0d-aabc-4a1633f8cb0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡cabb3e67-14a1-4fa2-ad4d-987bebee4ba5︡

