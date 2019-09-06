︠e807f882-af7e-4339-a614-35179a71a51a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡d03e8270-510c-4030-a9a1-ed7050bc1523︡
︠0043fc66-db8e-4882-a82c-a0a11f2cc41e︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡71fc5e9b-467c-44f5-a677-327d38c658a6︡
︠7286ee58-99e0-4630-aba8-2daabe37480f︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f818e063-80d7-414b-a1f6-9234df307897︡
︠f0b70fab-60df-4b55-a6ee-0a81d57ec34f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡6402b015-c859-471e-ac7d-b77494913548︡
︠5bc6d76f-d372-4de4-acbb-9630ad54f8a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡0ffd5d4c-c203-45d2-a99e-52493f69351e︡
︠92d9f364-0260-46bd-a857-7aab3dba6f08︠
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
<div class="date">Fall 2019</div>
</div>
︡d9bb2be9-ffb6-4f12-ada7-411fd5c9f390︡
︠c7972c21-5201-4803-aadd-22f41d9e7920︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Surjective Linear Transformations</span>
</h6></section></div>
︡9e736a09-c6bc-474d-aafa-81d85e6fdd8f︡
︠d2e55405-ecc9-493e-a6ed-17fef4c5492c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is surjective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡90f764c6-aa26-44ba-a228-f3fe1f3d4777︡
︠40838e84-43e6-4922-a444-d47c39c760ee︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡83f067ef-b329-4abc-ac01-1d59a826097e︡
︠8f2708ef-7929-43c5-a096-1b364df74f0b︠
T.is_surjective()
︡e8b00b9e-a18d-4bc9-a1c3-7dea4284ac3b︡
︠824324fc-3adb-4788-a194-4022b653a00e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡b80fb33a-f65d-42c5-abee-f2f25a8be3be︡
︠26635279-c702-443f-a9ed-8df8052901cc︠
T.image()
︡ff35287a-2412-4655-a5f3-3713f182a937︡
︠53798a20-4455-47ca-ad2a-151381504fa8︠
T.image() == T.codomain()
︡70be948b-4dfa-4276-ad48-76e996be7fe1︡
︠85234b7d-6ca6-47de-adb2-6284c2b7027e︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡4f46392a-7971-40ef-aeca-12da7ac22c59︡
︠ba9f0c93-70ce-42cd-a1a9-cbca635267fc︠
S.is_surjective()
︡1a6aa764-ad46-4c63-a98d-259f0f2529d1︡
︠5ecb872f-bddf-4496-a73e-564e54e8a117︠
IM = S.image()
IM
︡265e1e64-d11a-4054-a6c8-51ea03ffb90d︡
︠13372558-939b-4ea0-a20d-a6f900c00890︠
IM == S.codomain()
︡5b4926e8-f8b8-4392-a3c3-17a10b1db164︡
︠2c0652d3-acb5-45ff-a83b-c43653171c97︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Pre-Images</span>
</h6></section></div>
︡1b422940-dfd9-4528-a4bb-0704e68fd9c6︡
︠1e2505e5-5c42-45a5-aef0-a08a461c6e52︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡5618c2da-726c-45c6-abb5-b5640aa1600c︡
︠3635ef7b-aee1-4b4d-a1f9-7bedfe8a0eb0︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡be6e45db-08af-4953-a772-0edeccd46d31︡
︠ee05d4ab-0b3a-4ac0-ad37-f46c22907feb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">A check on our work.</p></div>
︡1c92276c-2776-4223-a2f7-9ebfbd24d94c︡
︠568e8a6f-796f-4f81-a3b0-a4f54a36f104︠
S(inp)
︡d5a5420b-2849-4742-a87d-9128763ad2be︡
︠7841e94f-4779-40fd-a275-f0619e8c85f4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-5">We can make other inputs, using the kernel.</p>
<p id="p-6">Any value of <code class="code-inline tex2jax_ignore">new_inp</code> is in the preimage of <code class="code-inline tex2jax_ignore">out</code>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡36d88c1c-b533-4f42-ac6a-16a883600f5f︡
︠39502ec3-a89e-4b82-ae58-86f3f766775d︠
K = S.kernel()
K
︡687c99a6-d5f6-43af-a694-f1be4a5b0d26︡
︠b9f268c1-f96e-40a9-af12-304ef8954a26︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡0d00069c-886e-4769-a05a-39b78af1f3c1︡
︠acfac015-c9e2-4858-a16e-c9770f10113d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>.</h6>
<p id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p></article></div>
︡2ea2962a-cf4b-41c0-aae6-9bf020040154︡
︠e828bbfd-5bca-47e6-a795-e20e33e38e4d︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡2264a10a-f65b-40da-a744-c36d1a1fd9e1︡
︠704d5ff6-9ecf-4acc-a441-904fe59f5793︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡904deace-06cc-4579-a1bd-34e74ccec265︡
︠5f69c449-34ff-4146-aa62-89760c3dbff1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡550bfc03-6375-439a-aa30-dba42b158c58︡
︠eade6db7-01b8-46f1-a095-171bc37d80ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡88967032-7433-4ca2-aebc-3c44807fd008︡
︠78091ea7-2370-4b84-a6a4-c36083fc464d︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ec6e67d0-e046-41fe-a568-92cf353317a6︡

