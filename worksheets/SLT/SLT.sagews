︠9284d247-4229-4498-ab09-e597ffe6fc1e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡ea06fe93-5d58-46a2-af53-9492b829e16f︡
︠f4a0a9e4-d422-4d9d-af93-227b5337c182︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡187c9157-62c8-4592-a38b-6bde621aaec2︡
︠1eb8a4a0-c038-4992-abca-73651c827203︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡51109b43-c04f-49e8-aba4-617c799fb01b︡
︠022b5037-55ed-43b7-a124-c81e53132475︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡38863e76-5cb4-4aff-a211-6ea8dfce2e3a︡
︠472dd6b5-c118-45b7-a5e9-6471d4093387︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ede1ac76-1373-4bcf-a31d-c8249f9a8ce0︡
︠3ce2d8f4-e186-4442-a474-14d487312ce0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SLT</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡d2db5b44-f258-48ac-abe3-008d50592751︡
︠7335f803-d063-48fd-a4ac-8ad0821db441︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Surjective Linear Transformations</span>
</h6></section></div>
︡5c491421-7f2d-42ac-a0f7-c82a8aca78fc︡
︠a48eea31-ca0e-4839-a448-c10eb9883002︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is surjective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡ca75960c-7c78-4bfb-a440-c01dec664a75︡
︠d4f5a9ba-637d-4b2c-a770-74181f58693d︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡e12e6c82-7e6f-4b11-a899-91daaf9f809b︡
︠e8c073df-65dc-448e-a517-fa9c43ce34fc︠
T.is_surjective()
︡0d5dec0b-b718-4351-a1b2-9ac37163097f︡
︠68cb5b75-73d8-4b0d-ad28-fc2cf9e6de05︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡d6da225a-8dd5-4586-a268-b55e2480b5eb︡
︠ac27749d-f2ac-4705-ad3b-6e1bc3043ba2︠
T.image()
︡64f8c6d5-4c7f-49ff-aec2-930aedee21ac︡
︠40149db7-3f3b-4eca-adb7-04a1f9ed81f2︠
T.image() == T.codomain()
︡d43f8cc3-4f37-4a14-a5ff-cf47041f2902︡
︠ce7fdfc9-3096-4848-ac97-c671e85f7887︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡a4614311-d416-4bab-a374-b3b359ba8231︡
︠ad61fa40-b15d-4818-a34f-803338cf2525︠
S.is_surjective()
︡6d3ce272-3349-40da-a80f-89fbc33926e5︡
︠c52f1028-26b7-4fc4-a955-8de89bbc4e23︠
IM = S.image()
IM
︡3f85ea51-387e-406b-a4f1-a8e8083b48a7︡
︠cd6535f9-621e-4124-ad64-e0dd9d5d9a63︠
IM == S.codomain()
︡121874e7-d4af-43c1-a898-c79a427a0046︡
︠4585e09c-7712-464e-a8c7-09fa33dbddb2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Preimages</span>
</h6></section></div>
︡307c56ce-2463-46c8-a545-c5ebf2fcdda9︡
︠fd97aed7-d0c3-4420-ad84-24a00a2f60d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡9de24902-0d3c-418f-a157-67c08caac1a9︡
︠23716bb6-eb42-475a-a76f-ec6ade7893a4︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡dd85fe1a-4f59-41de-ac55-b422f0068aa3︡
︠e806d05e-aae0-430e-a1c3-7779979ad248︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">A check on our work.</p></div>
︡52069e6e-c19a-42cb-a0e7-45fce93831a7︡
︠90aa748e-34fc-4f28-aa27-27c13ba73e8e︠
S(inp)
︡62f0c654-4994-4596-ae49-560284d3c115︡
︠077f845d-8a62-4ecc-a4a0-d07e20303f24︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">We can make other inputs, using the kernel.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Any value of <code class="code-inline tex2jax_ignore">new_inp</code> is in the preimage of <code class="code-inline tex2jax_ignore">out</code>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡42cc1407-2919-4cf5-a840-921004134436︡
︠98954aa4-2de3-46a3-ac27-db9eca2de721︠
K = S.kernel()
K
︡db971e2c-2491-480b-abce-39ac877a5517︡
︠6f3065e8-11db-425b-ae07-d41719f844d6︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡b36e4d32-6533-4068-ab49-31d59ff873c4︡
︠a8806cda-e3f2-46f8-afbd-9ff748631d7d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a preimage representative anyway and see what happens.</p></article></div>
︡215a1c6f-6526-4895-a091-e20da45087ef︡
︠401aa261-1d64-43fd-a9f7-ae9bb3f14882︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡8d297cbe-ddc4-42f3-af93-6310fd4fe876︡
︠af3c8b94-9725-4b45-af4e-2b24b1100f88︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡627af058-5ff7-45bb-aba0-adbc17e37f20︡
︠793f32f9-b49b-4cf6-a8a1-84e410bf33e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡35f74394-d596-4055-a7d0-9648a5864c93︡
︠3d934d6e-243b-4a40-a0cd-0534eea74f3d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡27bbaf91-eb52-46f6-a703-5089567fdbf1︡
︠46d5771b-adcf-4d6d-a518-a79141ad06e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡229f806a-c189-415f-aeb0-75816c21a288︡

