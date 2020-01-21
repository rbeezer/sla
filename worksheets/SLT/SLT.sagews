︠efa03b1e-3e51-4a4c-a0bd-fae529662395︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡775189d9-808e-4232-ae3e-c38a8b4e262b︡
︠c932bcb8-639f-41c2-a4a6-269b1166f8d2︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡49c7c737-0ab9-49d5-ab10-147af9c5fcec︡
︠e26a922d-9275-4c12-a1c4-2e8a9835e22c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f1e5c87e-610d-46ce-a9eb-e1a7b3fe9d1c︡
︠3123c42c-578d-4dbf-a227-d782cf1b8176︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡5a88d4d0-0279-4045-af78-65fe7cd976bf︡
︠d09597a6-7b9f-4494-a98c-1e11d9da351e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡4eed485f-eda7-4cf0-a198-db7ec489fbf0︡
︠93f81416-3f3d-470c-a715-0e18ddc67c16︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SLT</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡cbac4c05-3346-40c7-ad38-3474d529b95c︡
︠028aec7e-1a16-4122-a806-13b888ea2948︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Surjective Linear Transformations</span>
</h6></section></div>
︡64aef9b6-7d09-431c-a6ac-db08490233c7︡
︠b2c61bfc-2792-41d4-ad3e-a0aa8f4927ce︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is surjective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡f80be17d-e947-4c54-a037-fd8a819cab47︡
︠a40a0ec7-ca10-41d6-a6ea-ee868072d2e1︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡a85a359f-d59e-46bc-ad2a-709f710f4d22︡
︠eda47da1-d767-46c3-a395-e1670d91ddef︠
T.is_surjective()
︡fdca248c-554c-4db8-a0e2-5c3c34ac57a4︡
︠6a13438d-fe24-4a0f-a20e-46a82eccb235︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡6af7e4b7-1b54-4ff4-af15-d6b7fe6ca2ee︡
︠7597d8c8-fd34-4233-a725-cfc77c5e8007︠
T.image()
︡f7c9fa1b-3197-46ba-aa2d-0ecc649c21d2︡
︠9da66a08-539f-4a0b-a5ad-2acf7330f62d︠
T.image() == T.codomain()
︡9ba310e2-9452-4303-ae5d-c7786ecafb01︡
︠89d2de3b-1cf6-4f37-a21d-fe477b6365e6︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡7704ae3e-a4ba-4bad-a3df-0dd5440b7616︡
︠d8eed9d1-7753-421d-af5a-f58dac1b8929︠
S.is_surjective()
︡001fef8c-0036-4358-a15d-c5242c1479da︡
︠2ea4d836-5379-4aaf-a2c4-f892ccee067e︠
IM = S.image()
IM
︡09cada30-0947-42f2-a11e-617f34c22c99︡
︠a9364008-1126-4845-ab57-ab81bb57e747︠
IM == S.codomain()
︡1e145556-e670-4d05-a2ca-966272ddab5e︡
︠36c4b2a0-8870-4940-af6c-a0302a307dcc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Pre-Images</span>
</h6></section></div>
︡bf383ead-f366-430a-a401-1a14b4ee46b1︡
︠3717045a-25e9-4b1a-a56a-6758b0cae11a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡2423c281-db6b-452d-af73-aeaf66021e33︡
︠958b94e2-6bdd-473f-a436-8e53db9ddbc0︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡e66620b0-21c0-4e34-ad87-4059334d129e︡
︠374ae6a9-7db4-4e97-a260-ab1f543924bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">A check on our work.</p></div>
︡2f3792d3-b517-4900-a137-1d23d7801a4d︡
︠57c9e6bc-971b-4ebb-aece-6ec81909a24e︠
S(inp)
︡0a6c352e-1c63-484e-a43b-399f2b835259︡
︠153827d5-6f2c-42b0-a0f3-c2c51e1a27d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-5">We can make other inputs, using the kernel.</p>
<p id="p-6">Any value of <code class="code-inline tex2jax_ignore">new_inp</code> is in the preimage of <code class="code-inline tex2jax_ignore">out</code>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡1fd57fc5-5247-4e63-ae72-235f96eb102f︡
︠73f58745-ca71-4257-a54f-773c6c34855a︠
K = S.kernel()
K
︡5ce427b6-c713-4839-a08e-0053dc010866︡
︠3b31f58a-c52d-48b0-a2b9-0ba5e72f837f︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡9abccb15-6da8-4a23-ab4f-45bfba6d9f00︡
︠f9ba5756-cb46-44e9-a89e-8e33ded4b63c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p></article></div>
︡7252db93-26f6-4c34-a6ce-44c77a65e2b2︡
︠e35452ff-6155-4728-ac85-ad97411a60c2︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡3b58fbbe-b101-4773-a03c-5e9e5e079686︡
︠9b1f40a0-f51f-4697-aa9a-7e91de0d694e︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡fd91ce17-e1c0-4039-a7e2-260b8da8b01f︡
︠e1c82974-055d-4550-aedf-1061bef66a68︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡9596ebf5-00b5-4d0b-aef8-d1932522b8d2︡
︠077ad66d-c6d7-4ba8-a788-0699acedea5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡c62410a7-d7eb-4ea6-a61f-f158a049d233︡
︠90d8591d-77f8-4565-a4f4-fe5a50d4f720︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3c1147a5-42d3-4b2a-a069-567a0dbe1a54︡

