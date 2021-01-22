︠7c895487-ebb9-41a7-a42a-6c1c6772fcba︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡d275bca4-4900-421b-aa5e-5ba781e04dcf︡
︠791ffdba-1031-4062-ab08-9644dc6cca99︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡913b038c-dac0-4bd6-ae97-63eb7c7e8482︡
︠e242d455-13fe-44bb-aa95-2081bfd3d586︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡778ca50f-b23a-4176-ac20-251a6d931799︡
︠fa037407-aeb1-46da-a48c-846b6e301f60︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡c5ac921a-9b85-4cf3-a74b-3cf9868b79bd︡
︠a7353c74-71ff-46cf-a933-57f408b9323f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡fd6229fa-e6be-461b-a5bf-806857000423︡
︠32195434-e2b9-401b-ab66-af618b89c8de︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section CRS</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡c11db62e-b016-4a18-a5de-c8e296e1faad︡
︠97ea5917-8c79-421b-aa79-93186ae4cef6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Column and Row Spaces</span>
</h6></section></div>
︡b8d93234-9c11-4542-a1ea-a8db036f82d7︡
︠990724a6-942a-458e-a89d-245f06366b84︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <code class="code-inline tex2jax_ignore">A</code> is a \(5\times 7\) matrix.</p></div>
︡32d49f83-6178-4bc1-a95b-77fd7f3a6a6f︡
︠ea1beab7-e185-4a42-abe7-65f626661c08︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡bf2da085-7660-4c14-aec3-62959bbf2db3︡
︠57285c8d-2049-400a-a5e6-9592a2e6103d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">And its column space:</p></div>
︡39461a2a-74ab-4dbb-a71a-eaf7daab0cc4︡
︠9fde5f88-90d3-4bbf-a731-21b299c44d00︠
A.column_space()
︡1a0f86e1-f71c-4bd7-ab5a-c7c8a617a54a︡
︠66465dd3-fcb0-497e-a023-beb865e7d8d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡3388ad58-144d-45d4-a4e6-7a432b902680︡
︠8c404fe9-70eb-4d49-a297-812d448e4b4d︠
S = A.column_space().basis()
S
︡cd90edfc-76d6-42bb-acd4-46563aac8f7d︡
︠d4a74854-5da3-43de-af9b-3d29354e1cd9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <code class="code-inline tex2jax_ignore">S</code>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡9bd422c7-6241-458e-a378-fb5159797965︡
︠2f103330-b920-4a78-a9b0-1bc7c104b8d1︠
b = *S[0] + *S[1] + *S[2]
b
︡d01f0423-5dd8-4d7f-a61b-626293497f25︡
︠1052f571-9cf6-44de-a44f-0b26dba25227︠
P = A.augment(b, subdivide=True)
P.rref()
︡738c571c-9b99-41e6-a02a-f25193d46368︡
︠bdb3a1ac-e478-4d96-a399-e9b4b5889fc0︠
︡77e3b856-43ac-4b75-a2be-ba87f3c7c669︡
︠7e052cd7-22bd-4e64-a390-24abb9e81bf8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <code class="code-inline tex2jax_ignore">S</code> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡4675c91a-04cb-41a2-a5eb-61f0cbab4c64︡
︠5abc0751-155e-4069-a2c7-e29e36ae1ea7︠
c = *S[0] + *S[1] + *S[2]
c
︡3f2fc261-4869-4770-a0ac-88f1628109fb︡
︠13b42779-9b2f-4597-a591-22a1403c1451︠
d = copy(c)
d[4] = d[4]+1
d
︡075cb742-1dd3-4d2d-a486-5a9fbd0f924f︡
︠45691115-4322-46f5-a34d-aa83930a3ad7︠
P = A.augment(d, subdivide=True)
P.rref()
︡91c0be1d-3606-4876-adaa-b5439e7a9a46︡
︠2e8ee3d0-0060-47e7-adc2-888db1c3b5df︠
︡c0e4ec7c-c8c2-4931-a01e-396b62c35883︡
︠84369220-ee9a-412e-a230-0697209f3e7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Moral of the Story: the elements of the column space are <em class="emphasis">exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡1f145a78-b574-4086-aeb9-fc08329c1db8︡
︠ad8b2e59-60ed-44f6-abd1-4ce4517fe8da︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡17792978-3d92-4bd1-a19f-3dc22139122e︡
︠c363c9d4-112b-43d8-a4f1-33ff5219c3be︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡2828cf29-34b5-4fe2-a722-96596bc748a0︡
︠e116dbce-b71e-4226-a8f8-81d9b46587d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1b3321fe-fa50-4973-af02-89352f994212︡

