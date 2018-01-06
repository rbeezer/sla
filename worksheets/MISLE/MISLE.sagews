︠e6892993-0143-44c5-a598-176476dfda93︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡679e0c8a-f8b3-4c00-a25a-a711b8797441︡
︠8a8199e2-4db0-4170-a296-c4dd596c2e17︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f918bb29-d678-4780-a8a9-e6ec335af881︡
︠f7a1f5c2-fa86-430e-a389-d7fb33e9de26︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f1da3d00-ffa8-46d8-a510-ee7eab184f76︡
︠e0a9e3bf-6fa4-457f-a9ba-0d5b47eb06fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡4ddf6c22-b926-4e8e-ad29-737dec4c8537︡
︠27407bd9-e920-4f18-adea-76df3bb874db︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡b02019be-3986-4a77-a256-ddcac0688ec6︡
︠977c7863-7adf-4077-a89c-e7aa26b8f37b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section MISLE</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡a031dba3-e1db-41e3-a86c-553f056be5f5︡
︠0964b4f5-7e75-4a83-ad1a-a7fe6f4db22a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 An Invertible Matrix">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">An Invertible Matrix</span>
</h2></section></div>
︡833f8e37-4b5b-41f4-a5d5-07df54fa1ad4︡
︠46885079-7b5d-477d-abcb-1c2ec82c2460︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡8b604c1b-687c-46e3-a4a0-fcc1a9ad5d1c︡
︠d973ab0b-764e-42bd-a5f8-6e420ecbc18d︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡d675a20a-e712-463e-a49d-cfc02dff9b02︡
︠8e804324-d0cf-4332-a17c-f3cc3fa3e3ef︠
Ainv = A.inverse()
Ainv
︡57ee721a-6fa3-4ee6-a10e-e01ac5a788a7︡
︠80e6f681-0f0b-42f9-a91a-7fa9a7f4e7d9︠
Ainv*A
︡f59db943-a43b-405a-aafc-46be065fb478︡
︠d6e74a08-ead1-46d7-a086-dcd9bdf1cb54︠
A*Ainv
︡42a2afda-7b55-4cb3-a3cb-9976234240d9︡
︠41cf46e1-16c6-4c92-afce-b683da61da2b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡47c07176-38c0-4f99-a186-04d87a3dc07f︡
︠bb78cfa3-5db2-4dab-a7c4-dc8a4f57c284︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <code class="code-inline tex2jax_ignore">A</code> above.</p></article></div>
︡240acc96-0e3c-4016-ac83-15f90496c694︡
︠bc8b658f-b8ef-44f0-abb9-edee6f206e60︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡31cbd215-2ce1-4c30-adec-6d95b04e0bd7︡
︠b098c6ad-cdaa-4e7d-af4c-bba506554601︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡dc264fdf-cac7-45be-a2b3-f7e9cef24484︡
︠6608d57b-4451-4cad-abd8-ecfd6cc6e0a7︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡50d59bb0-6f5b-4116-aec3-6b069725d067︡
︠7b85111c-27c7-43d9-a9b6-d22e8b5a12b7︠
B.rref()
︡a3338459-171d-4f5a-a9f5-fc71bfd0af35︡
︠6e8a11e6-bfec-4cd2-a761-c6e489469e5d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 A Matrix Without an Inverse">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">A Matrix Without an Inverse</span>
</h2></section></div>
︡4ccc6de5-4953-4621-a898-95e7a70edac2︡
︠80e4d52b-a64f-4ab1-ab3a-3c024a9496f6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡8777b4cd-0645-46e0-a793-2d03f4d887f8︡
︠d8f4fb9c-9a3d-4f9b-af15-33336274b0ca︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡8928e248-fd22-4a1c-a61e-c51f8810dd09︡
︠793a21d6-ac3c-4fee-ab40-a15c0e42e2ff︠
C.inverse()
︡c79f1b1f-2bb6-48b4-a679-61acdaa2d84d︡
︠714106d2-5fe1-456c-aac3-334df1893628︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <code class="code-inline tex2jax_ignore">A</code> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡3a97bad8-c38a-44e1-a08d-3b179182bc8d︡
︠4b8d3370-c444-4f82-a08b-ec6f301c2c9b︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡ad62b963-a38e-4877-aa7f-65cc5fd6c025︡
︠bd320fc7-26ab-4522-add9-d3e9038da5dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <em class="emphasis">no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡a8aebad7-10ec-4b4e-ad1c-7ef67f90d46b︡
︠103bef6c-68c4-4578-a349-fc8f20fc1c07︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡717bd6a4-20de-4526-ad5b-757f59f45016︡
︠797f556f-9906-4858-ae3e-9a409aa9e0a0︠
D.rref()
︡619d1f37-ec1f-4295-ab78-a13e2d9c67c0︡
︠83221414-b00d-4036-a5fe-e9f181e1e59b︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h6>
<p id="p-8">You might struggle to find <em class="emphasis">any</em> vector of constants that will combine with <code class="code-inline tex2jax_ignore">C</code> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡62e84fc6-3864-4578-acc7-ab19c9bbaa04︡
︠5764fb3c-1748-4baf-a46c-b07ca456f000︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡567ba76e-3858-4012-af59-c0a3d573c73c︡
︠793f4d6b-ba31-4332-a537-ff8a35fa8b1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h6>
<p id="p-9">Do you see the fundamental difference between the matrices <code class="code-inline tex2jax_ignore">A</code> and <code class="code-inline tex2jax_ignore">B</code>?</p></article></div>
︡895b9a90-64a9-46dd-a830-0308d3ece78f︡
︠409ac255-2bad-440b-a19f-29232f70c584︠
︡5c5e711c-7471-42b2-addb-c04e46eb7a10︡
︠e6c45457-0cb7-4ed3-a0b1-c72057732fe4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016–2017 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡fdac1006-7133-4810-ac2b-de30f977da6b︡
︠57831c02-c027-4884-a1d6-1b499f4b79bf︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡00694754-a14c-48d4-ade2-40d9978e3f8e︡

