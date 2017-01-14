︠307d7dda-4c6c-4874-a5b9-d2f83fb756f2︠
%auto
%hide
load("mathbook-content.css")
load("mathbook-add-on.css")
︡f3360b4d-59ac-4523-aa8e-3513e42ab71b︡
︠a0ed7e8c-be56-4aa8-ae51-d97ec53e0e61︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡a028e967-625b-4906-a2fb-3c4aa10df0c6︡
︠2664e5e5-c482-4f13-a532-16f619717714︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d4b48a96-f5a8-48a9-ab0d-e14d757e6e58︡
︠e54610d2-f212-428c-ab15-0784c922cf60︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡d462b728-a2bc-45e5-a2a6-7adfea91c612︡
︠6e7c0243-bf67-4bb5-a0d0-65a459eeab4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡dba57a8c-e3b4-4b70-a18e-1e4c395170cc︡
︠ca760e18-bfc6-447e-a586-4a58681ca9d6︠
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
︡591c01b1-9616-4d5d-abb6-2f1777f94921︡
︠07b14b3f-cd6e-4344-a10f-82e9a61af532︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 An Invertible Matrix"><h1 class="heading hide-type" alt="Section 1 An Invertible Matrix">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">An Invertible Matrix</span>
</h1></header></section></div>
︡64916dd9-d974-47a9-acb9-b3cad61e1134︡
︠3a9ccfa9-9830-4cbb-a677-f3bcd83f640a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡9352f22a-cc20-4dfb-a853-f56b14453a94︡
︠537b67d8-1954-4923-a5b9-9be0605a595f︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡db2469b4-2de7-417a-a5d5-e60c76cc1256︡
︠221568e2-c0fa-4812-a260-75671eeeaf1f︠
Ainv = A.inverse()
Ainv
︡53178806-bc7b-46fc-a913-98800aee98ea︡
︠74d9b62b-cd83-48f3-a584-82d12db1c59a︠
Ainv*A
︡f1edba3d-60ae-443d-a786-c1892b7ec436︡
︠f38e0384-0f4b-4e9e-ab07-2d8b7b6e923d︠
A*Ainv
︡92011149-559a-4173-a034-751018b775ab︡
︠33e44f59-9bf2-4609-a90c-e7208384b095︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡bd991e86-8127-4487-ad27-a0fd0819cca6︡
︠263cf4a8-b2ad-4ae6-a1c8-979959163d3d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-1" id="exercise-1"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5></article></a></div>
<div id="hk-exercise-1" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <tt class="code-inline tex2jax_ignore">A</tt> above.</p></article></div>
</div>
︡364623bd-c607-44a6-aac3-25abe05f79da︡
︠701b73f2-1b81-43cc-a968-c9e75c7ace49︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡9bab61f6-302c-4258-aeef-7b852e2a8f9d︡
︠9383ef4d-58e7-440d-adfb-c775d93f4cfd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡9802be20-c88a-40cb-adab-9620cf90fdde︡
︠b77b92ab-273b-4238-ad12-8a9aa5a46923︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡8daf9424-05b3-40d7-a8a8-a333ed982f24︡
︠3b2dbb2d-f22b-4638-adc3-6769b574d940︠
B.rref()
︡e7b156c7-4c96-47fa-a0d6-34dae8f5dcf1︡
︠de99fffc-7381-4a01-a50e-b439e12d7fa7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 A Matrix Without an Inverse"><h1 class="heading hide-type" alt="Section 2 A Matrix Without an Inverse">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">A Matrix Without an Inverse</span>
</h1></header></section></div>
︡175b15a0-114a-42fb-a34c-2f059e7bceb6︡
︠5ceb7f12-0245-4d74-a8b8-4d85313bdf98︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡6f45bc5c-f6e3-4bca-af55-8930e7222f2b︡
︠79bcf684-27b1-4b6d-a562-beceeb60e8f0︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡47a0396c-e939-4af0-a846-a047f33531e3︡
︠12ac2d59-932d-4dcc-ad51-301871ba6fc4︠
C.inverse()
︡2e7daaaf-3435-4202-afe8-0282a036aa57︡
︠e8565f00-f342-4973-ac61-474d9edd488a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-2" id="exercise-2"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5></article></a></div>
<div id="hk-exercise-2" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <tt class="code-inline tex2jax_ignore">A</tt> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
</div>
︡f724d74d-731c-46b4-a98a-bd1fabe793f1︡
︠de8f3677-3fa5-4c01-a0a9-b56d40828257︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡436d393b-07ab-4c6c-ad76-72bdf0e836a9︡
︠efc4c0ef-bf75-4a4c-a613-d95975a5ddc8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <!--Style me with CSS--><em>no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡7a74f34e-3fdb-457f-a2e1-6cac511f7ed3︡
︠64ed8e1d-c5d9-4031-a050-1bdb73d92570︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡9e47bd6d-b338-4d4b-af41-05dd140fe345︡
︠3d385f6b-d1f0-49c4-a5c8-6ce3af8af6e3︠
D.rref()
︡c100a5f0-1c20-4dbd-a119-a769b093b8a9︡
︠b6bb6516-6239-4314-a136-ade0691fcc87︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-3" id="exercise-3"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5></article></a></div>
<div id="hk-exercise-3" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-8">You might struggle to find <!--Style me with CSS--><em>any</em> vector of constants that will combine with <tt class="code-inline tex2jax_ignore">C</tt> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
</div>
︡53e1f570-be3f-4770-ac83-231048958610︡
︠d73c8310-4de7-4c5f-ad17-03a23ead3245︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡22d6e69f-6dc4-4599-a46a-c7e69253f963︡
︠f85cf429-3870-4dc9-a61f-0d6f4f193029︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-4" id="exercise-4"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5></article></a></div>
<div id="hk-exercise-4" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-9">Do you see the fundamental difference between the matrices <tt class="code-inline tex2jax_ignore">A</tt> and <tt class="code-inline tex2jax_ignore">B</tt>?</p></article></div>
</div>
︡4129e2d0-b193-4160-aad1-aef1d30ed4e0︡
︠e221c03a-1fcb-42d2-a28f-43d44a858597︠
︡68a8969c-1bbe-46ec-a805-75859cf1177b︡
︠ed386cf0-81b4-4022-aca3-1299726747fb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡3d966f36-fc8b-408d-a348-76b0f335a8d9︡
︠33ce7480-b866-41e0-aa90-872c4a2b88ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1e1dd926-9eef-44fe-a5a7-63f8f4210bab︡

