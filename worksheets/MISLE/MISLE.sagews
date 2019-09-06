︠56107444-ef9a-400f-aae7-cb809773f6c7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡62d835d7-ab73-4673-a612-eee7e7e6aec7︡
︠63a3be98-634d-46b4-aa26-c04b72268d55︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡5b90f5e8-d5c2-423e-a7d1-da2169480d66︡
︠3b2cc11b-af07-422a-a1a8-273499ee2fb8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡5f48c0ad-c4dc-4c0f-a61a-f4128bb79d65︡
︠ac513338-7c0b-4c70-aea0-fe2b0a7641dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡689b9ded-66a7-417e-a258-357508f8e49c︡
︠1f4abe89-ce07-452e-a344-c794cadc2b1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡82cdd7c5-1941-4093-aed8-2afcfc7c8989︡
︠61c3eaab-0c44-4d4d-a13b-9669255a1d49︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section MISLE</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡7aa4d9e8-4f48-432d-a140-dd737a8c49a8︡
︠213d6165-9b4e-4471-a195-26399a4178a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">An Invertible Matrix</span>
</h6></section></div>
︡0d24b951-efc2-4d1a-af23-5599f3434bbf︡
︠ccdf0886-a757-4938-a32b-78011045381f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡8ec5ddd6-37d8-4f7c-a7ae-22633837e60f︡
︠68d2eb0b-143f-4c36-a9a1-7c3ef662e49e︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡407135c3-1e75-4d48-a4d2-55f93f0a2efb︡
︠d3c54fa1-2c0a-41ee-aa2c-d82c16b20d0f︠
Ainv = A.inverse()
Ainv
︡9e35374e-97b9-41d8-a07a-d42f145c66a7︡
︠6469a91e-8a63-4480-ac98-77c96deca425︠
Ainv*A
︡c8a214c3-34d9-4822-a9eb-252ff9dd6729︡
︠df1713bd-7f24-48b6-ab45-67b96a3389bb︠
A*Ainv
︡38a50b9c-90bb-4446-abfb-163c0973cfd7︡
︠b006512e-dbf8-473d-aefc-a02dc2646244︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡af5b5bc7-a939-42ad-af8c-c2defa15e882︡
︠c311e7da-f742-407c-ad65-a3772713dfb5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <code class="code-inline tex2jax_ignore">A</code> above.</p></article></div>
︡2884a7b7-1ae6-4dfd-aad3-f777e9e0cc08︡
︠121a6b22-33d2-49a1-a65f-a461b5aa5766︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡08823fe5-119f-442a-a69f-544b6f11a691︡
︠c9a5bd59-37bc-46ff-a059-0bd464485eee︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡0b8a1486-ebd9-4839-a84f-14af913d99c8︡
︠7c40754f-b2b9-4c4d-a5c2-4d6fd000da99︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡21671dc5-d889-414d-afaa-1f88e58f55af︡
︠fc054130-7090-4ab4-a8ae-2bea3cfcc516︠
B.rref()
︡41356779-8ea1-4e4c-a3c6-2f20a6d929f4︡
︠f4539ca1-5200-43e5-a022-64185be251b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Without an Inverse</span>
</h6></section></div>
︡5b9ae369-4cb4-4df3-a2f6-56b7f03d29ed︡
︠e498e7c5-012c-460c-a93c-082bf1b3fdce︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡ba2531cf-7d0a-4a6a-a70e-3066c6879855︡
︠610963a3-3204-4cba-a72b-56ccc835fdd5︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡3463dd78-0ba1-4f7c-aaff-555112a47a25︡
︠f5969641-e4c9-46b0-a360-2b58d6a8b22d︠
C.inverse()
︡72309c7d-d629-4f85-a0bb-0e7565c1d84f︡
︠5b29cb54-82aa-4c92-a1ae-dac403ac4748︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <code class="code-inline tex2jax_ignore">A</code> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡7a493149-6dc0-478a-aaa4-87f5c086ccd1︡
︠55c9e0b3-9105-427e-ac28-1af0fc182d40︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡fa5c34cf-7608-4b20-a9f2-20d21de25109︡
︠2037c7c8-74e8-4cab-ac4a-e7bb9c88fe90︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <em class="emphasis">no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡8b0c3c3f-5b44-430f-aed4-9bb47410c1e6︡
︠162125e6-5319-484a-a737-bc360ab2b839︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡e4f05264-8c7a-460f-a072-82fb9f5410c5︡
︠ab9acfc2-35eb-404b-af53-2d618f0e42f0︠
D.rref()
︡79c14801-a469-406e-ac63-f815994a88d7︡
︠951566d7-78ce-42c5-a08b-4845dde287b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>.</h6>
<p id="p-8">You might struggle to find <em class="emphasis">any</em> vector of constants that will combine with <code class="code-inline tex2jax_ignore">C</code> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡f4a1a178-9e15-4d31-a23a-e722d0fb273d︡
︠d2273c9a-4296-4769-a99d-47579279e911︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡7e396660-1a2a-41a0-aa4a-781dfbf64e06︡
︠f8521c97-ca2f-4439-a5ed-f66135c3c11d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>.</h6>
<p id="p-9">Do you see the fundamental difference between the matrices <code class="code-inline tex2jax_ignore">A</code> and <code class="code-inline tex2jax_ignore">B</code>?</p></article></div>
︡705c379c-e571-44b5-ae13-c1922d8e04f1︡
︠272745ed-2d29-4f75-a456-81814afc9f19︠
︡1313a599-2b75-446d-aab2-034958445e46︡
︠859984f2-e1d5-472c-a4c7-7dbc605b5a99︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡01eab7fa-9dc7-4339-a086-7043cb3268df︡
︠1e108c77-6152-4886-a28f-90fd3c87ff0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡f2a023da-b4b0-4749-ae72-d13df7a7f97f︡
︠6c4a40be-e73c-44fc-a46e-e5207ab31518︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a74f180d-6f49-4c99-a8ef-6c48cb38f5d0︡

