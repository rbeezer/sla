︠1d28836a-d92f-404f-a10c-411c7216c099︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡db703f39-913c-4031-a042-c93e5b072c8b︡
︠656d5ad9-37b7-43ca-a5cf-798b8d68585d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡4b3b9956-39de-401a-ab67-ae0298001597︡
︠3d268c0e-2380-4181-ac48-3e641fd1fe79︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡5a681f51-e746-486f-a923-15289377475b︡
︠8377e784-0222-4e07-aa0e-ca1c653f1cb2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡335ab314-727a-445b-ab0c-9c6b8d1bd388︡
︠5bcb68e8-c6a3-41e9-acaa-836fffc0b943︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡29ee5564-d3a7-47c5-a180-b132131d3d77︡
︠091f764e-a225-4991-afaa-f6b38c6aa971︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CRS</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡18b383ad-15f3-4a8d-ac78-67e2a7f01aa8︡
︠cc07f9a9-6ce5-409d-ae55-6cc5f7cf7da1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Column and Row Spaces</span>
</h2></section></div>
︡66e7ed09-6665-4b6e-a944-fb1c103d0aba︡
︠c11a8f88-9fff-44b5-a35a-7468079359e0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <code class="code-inline tex2jax_ignore">A</code> is a \(5\times 7\) matrix.</p></div>
︡4b156a5e-3ed2-4d2e-a353-ed8468c0c19b︡
︠2e643ce8-a168-444a-a270-65dea477439e︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡ebc4f01e-9cf0-4444-ae7c-fd1ccc13456d︡
︠4590a91b-7a77-4bcb-afb3-ba1d7da80ee7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And its column space:</p></div>
︡c2d537e5-36fb-4db8-a9a3-c6dd44bfdbdb︡
︠3ae0018f-6c56-4821-a0cc-3930775262e4︠
A.column_space()
︡d1eb2fdb-e483-4a06-ac02-94cc534a5ac3︡
︠fa5e58d3-3b7b-4f2c-a5ed-881446781c3d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡02851ede-11a8-4d9a-aae9-7619b602f1f2︡
︠ef575753-565f-4f29-aac7-34e5d9bdcbfb︠
S = A.column_space().basis()
S
︡deb350aa-4009-40fc-a999-0ddf3b9f95a8︡
︠186cbbd6-5175-4a75-a60f-01cd0f99e2f8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <code class="code-inline tex2jax_ignore">S</code>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡a010ccca-31ba-4761-add2-cd39a484e76d︡
︠00e11bed-52f0-4c66-ae34-1f149c910896︠
b = *S[0] + *S[1] + *S[2]
b
︡6a74b8fa-64c5-459c-ac7f-08f2d8e7aef4︡
︠55eca95a-3cf0-4149-ad11-d2ad4852f01f︠
P = A.augment(b, subdivide=True)
P.rref()
︡46523fc8-9f58-406d-a94f-a214f5c58c59︡
︠b900b307-ca71-4388-a11d-0cf11e7e3fa9︠
︡96297ec8-692e-4a56-a278-f75f96e1410f︡
︠ba5e3dd0-5397-423d-a964-26c756d37258︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <code class="code-inline tex2jax_ignore">S</code> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡2127f65c-6a0f-4223-afc9-4f016674af7f︡
︠790a1006-c60c-452f-a92c-27b39191630d︠
c = *S[0] + *S[1] + *S[2]
c
︡37642742-e08e-4de1-ac84-9bc4e5676cb6︡
︠aee12097-377c-455b-a723-bbe8fcd6433f︠
d = copy(c)
d[4] = d[4]+1
d
︡add9e097-7dff-4944-a4c7-7826022d861b︡
︠5c93584f-0bcf-4b54-a0a0-729a89ca7519︠
P = A.augment(d, subdivide=True)
P.rref()
︡075aaa2f-92a5-416b-a565-6e7f8084a09c︡
︠9a3e4e87-d298-48be-a315-97316b1f0c09︠
︡994d89c1-093a-42b5-a1f6-69dab45c4594︡
︠f2e306cc-7d6b-4787-ada6-3101bb607a61︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Moral of the Story: the elements of the column space are <em class="emphasis">exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡f54d9446-1b37-47b0-ae8a-5bb5d60378ed︡
︠9d3ebc3f-24b6-4b21-ab1a-6661b38b7f35︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡dd20cdcf-df39-46fb-a8bc-21282ecb93ad︡
︠87ab7694-664a-4fa9-ab24-845bd89933de︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡056a1e1a-2816-4201-abc3-057605faf2dc︡
︠0b674769-951d-4b93-ab36-e5b0d535c8c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡4dea422b-cb0d-48c7-ac8a-260e7d3b204f︡

