︠47616f86-85c8-4930-abe1-dfda9470e9ea︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡1228487d-ff3c-48c0-a88e-a6d807c87b16︡
︠5298be02-c01f-4c9c-ac24-bdb95c0248d5︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡e388b36c-62d7-4291-ae63-311ea6aa8f26︡
︠519d9510-273f-4f59-a04f-47166cc1750a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b5b535a5-6cda-4cc0-a5d4-52c6822549a5︡
︠f79894f6-9ea2-436f-ad89-336d44010b73︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡66bff43f-add5-401b-afe4-9170fc4fd5a4︡
︠80b40b84-a318-4819-a417-8b8fc7c07951︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ee2a325b-70f8-488a-a1cc-8581549150ab︡
︠29a53d89-8f98-4810-a22d-fb28c7c59253︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section MISLE</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡d8d7d045-9d42-45c3-a6f6-3f167ee43769︡
︠b318be8f-42d8-4434-a8a4-ed304ae2e195︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">An Invertible Matrix</span>
</h2></section></div>
︡b48dc4c5-3071-48c5-ad4f-13c530f13e3c︡
︠4e1cbe07-347b-4607-abeb-a0e752853b46︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡88494085-7caf-4710-afce-b7eae3c68f2c︡
︠6a4a49bc-f39a-420b-a308-1bff5d314c16︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡971d257d-270b-413c-ac6c-57747d2be770︡
︠e07fe955-77c7-43eb-a0b1-c0944127c0e3︠
Ainv = A.inverse()
Ainv
︡1d48c221-7a94-42d2-aded-fae9f3a1a729︡
︠a36fc31f-599f-4ebc-a09a-e85c150b7a39︠
Ainv*A
︡4ddadade-a373-425f-af68-a50f2252ecc1︡
︠61f4bcf9-a9c2-4cf7-acee-4835867d85a5︠
A*Ainv
︡60655214-cbd8-4da7-a566-4be706d736ce︡
︠b3e2844a-8056-4930-a197-7d2653c3a0a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡e5ad731c-dad3-4067-a170-9feb54e28922︡
︠118be0f0-cca9-40b0-a7d8-86772db1f4a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <code class="code-inline tex2jax_ignore">A</code> above.</p></article></div>
︡6b2f71f7-1c3c-4548-a6b6-e3c6be36f3ba︡
︠51680d90-5bc9-482d-a188-76c3d720e249︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡c9b21c0a-c568-4efa-ac03-5791b79d88fc︡
︠2c5df6a0-1667-4e56-a917-c6e689d275a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡2d37a3e4-3fb9-47ae-ae30-5f646ee3059b︡
︠db802341-8703-417d-af61-0c06075ea644︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡11fa22e6-36d4-49ec-a7e2-8ee95f0adb12︡
︠f33fd52b-b629-4ac8-a737-ac686c867628︠
B.rref()
︡81bb1914-5da7-4653-afc7-663df99700d2︡
︠864416e3-a305-4a6a-ae67-6dd9ad345443︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Without an Inverse</span>
</h2></section></div>
︡7d9c2b20-ed3e-42e5-accb-4281c3f0745c︡
︠7c909cbb-c99f-48be-ad8a-8cd1ea5dbc21︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡89e2a7e6-3a0c-4a87-a850-3ed10bc5982b︡
︠9b57dfec-6276-4e1f-a6a5-6e43f4fca84c︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡4d794593-1f69-464b-a5b5-a14e5335fed3︡
︠a112b674-a930-42a4-aeff-4a1897cccbaa︠
C.inverse()
︡f5c1777f-c190-41ca-a6a9-6e476df29ce4︡
︠6e93f1b7-0789-47a5-a100-b6efe5cd86a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <code class="code-inline tex2jax_ignore">A</code> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡a154455f-c675-4fef-a500-5c64b59831fd︡
︠8aede334-30aa-45a9-a509-555ca123a54a︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡3d41b34e-88f2-424d-abad-503addcf1746︡
︠17359e9e-d16c-4491-a14c-f9c34910827d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <em class="emphasis">no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡895bffa8-d8a4-45ed-a602-30bf30941269︡
︠0f25b145-a2e4-4732-a4a3-6d32d726b382︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡c81fec03-2a61-4ed4-a12f-59d9ba0e1c2a︡
︠ef30e2df-50ac-4199-a6bc-505391da0f62︠
D.rref()
︡952c51e2-143b-4045-aaa0-701c3ae15e0b︡
︠1a047656-96ac-42b1-a76b-7dc8a0381962︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>
</h6>
<p id="p-8">You might struggle to find <em class="emphasis">any</em> vector of constants that will combine with <code class="code-inline tex2jax_ignore">C</code> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡48c5c3c2-9594-42b0-a336-fb4c4ec77d0e︡
︠056cb207-4add-4ff9-af3c-627aec9b3084︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡e8a45576-dc0a-4a0a-a4fd-16080f59a893︡
︠d8c8d1d4-7a18-45c9-af08-c1ecafcf9683︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>
</h6>
<p id="p-9">Do you see the fundamental difference between the matrices <code class="code-inline tex2jax_ignore">A</code> and <code class="code-inline tex2jax_ignore">B</code>?</p></article></div>
︡a5b6d87b-df6f-48bb-a1ab-a6c93690627e︡
︠514171ae-d7e3-466e-a189-d3f9c305368b︠
︡4dc8f3a9-2800-4b77-aa90-36330f605a7d︡
︠5cb25a5f-4785-483c-afd6-f1d24d2be865︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡6c12e7d3-71bf-4632-a320-921656381207︡
︠77399106-5770-46d3-a906-aa8b0d145366︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡aede8608-c604-4671-aa12-1bc97d791dc8︡
︠35bfbe55-4b21-45ee-a54c-a9f60892ddc7︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡20dd08c5-e101-4260-a1c4-e6edce55123d︡

