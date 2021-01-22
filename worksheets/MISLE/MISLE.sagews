︠abe67a1d-143f-4e74-a5f4-28d5af41862d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡ac893034-d581-4568-a9c8-ef0b4aa9c3fe︡
︠1aba3ea6-38cc-4913-a2af-a9fb435ed22d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡037cdbb8-2e0e-4aaf-adca-d63c27086ea8︡
︠bac37ae2-3113-4fce-aeaa-971c4345ba35︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3f0028a1-bd2c-4128-af12-aaac7ffb4b58︡
︠35699ddd-03b4-4ac2-aeac-2fb28349b9b6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡8fbf95d6-3daf-424b-a426-155c7d0b7b53︡
︠2d2edc3a-278d-46a1-a1f4-809dd0bdc291︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡6bf89c4d-674f-44b9-a6d8-a594364e401d︡
︠278101d5-f4c3-431e-ad8c-631f746c2ac4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section MISLE</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡8fb00c2e-113e-4570-a448-0ab1a260e9bb︡
︠d3a94b57-978c-45e3-a638-e32a5dcbeb4a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">An Invertible Matrix</span>
</h6></section></div>
︡62d1b2c1-9682-42e1-a654-e371ddfa8d5d︡
︠7cf5da8a-b204-4433-a5a8-a8c2a9f94779︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡4f5353ed-dafe-4e41-a2ab-a4476f0594d0︡
︠e2045574-35e3-43d7-a5f2-1a651d423e71︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡e63fa941-d76b-4aa8-a2f7-402b649a6c9e︡
︠d7416eab-f736-42e0-ab00-35050699106a︠
Ainv = A.inverse()
Ainv
︡e422591f-4168-4796-a847-87c9dc06616c︡
︠c51e7689-5dac-4526-abab-232fd0cd62fd︠
Ainv*A
︡fb30ab72-4cfe-4950-af0b-a3fd2cefa519︡
︠21552f19-2562-43f7-a4f8-0abf8ec6d6bf︠
A*Ainv
︡0e154355-c8a2-4ae2-a132-a3c6245fb367︡
︠2654ca71-f4aa-4748-aa6b-c0f871dc19f7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡02d56afe-cf26-49ab-a241-e02d99f75005︡
︠80766e06-cc6f-4309-ae3e-01f2f8cf0200︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <code class="code-inline tex2jax_ignore">A</code> above.</p></article></div>
︡781fe8de-fab5-4ae6-a3d9-2db1fbacaaea︡
︠a52c5153-f4db-4a7a-a0b7-9d45f4090a3e︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡4e47ba80-d84a-44e2-aefd-69bbeafe4087︡
︠ed6351de-1a76-45b5-a7a4-50d1bbcba0b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡7a0dd5eb-405b-46b7-ab21-f82d9e959364︡
︠5de6bcca-70bd-4c18-a3cb-4c47ad533e69︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡2c7133df-d5f8-42ba-aaf7-644abe801cf8︡
︠515d3801-7e67-4793-a142-9a6d51bd2d91︠
B.rref()
︡5f3ac62d-8abe-4138-a44c-7d6dbbf69132︡
︠29154ec6-b417-432a-ac7e-8ecfb7bae4c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Matrix Without an Inverse</span>
</h6></section></div>
︡7fb84f71-6267-49aa-a361-2effeb7965d3︡
︠7523d624-897e-4009-aa4f-c6eb5c7d5e33︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡1a83e6a0-b392-41a3-ab47-a0d8c3441a24︡
︠d4e67dc2-e757-4a72-ad27-4c82546a975c︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡b20a9875-a5df-4d76-af59-7a6fcb436dab︡
︠96ea0727-dcda-4bb2-a2b8-b2211fd5233c︠
C.inverse()
︡fd2e7359-b358-4e14-a14f-9f1b12af8c3b︡
︠929c00f6-9b9f-4470-a885-7258d6b85458︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <code class="code-inline tex2jax_ignore">A</code> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡0eb9bc9b-226c-41a4-a23d-7afc3d3e592a︡
︠229db5a5-0d77-4992-aeb5-b30a03832dd4︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡8f72d377-8840-4fe9-a2c5-778829badd8a︡
︠209927da-f524-4522-af4f-4c6d497044dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">It is the case that <em class="emphasis">no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡e0d8a0f7-aedd-423f-a524-470b555c5903︡
︠6e337d36-5e52-4b85-aad8-e2ffe4530bc1︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡f2026709-d573-482b-aed9-6cc6cab2dcda︡
︠dcddf340-d255-45e8-a1c5-a2268f131ffe︠
D.rref()
︡9db6aaae-a810-4d6f-a57b-b2ed97cabe9a︡
︠c388a234-1ed3-4fa9-aef1-9b379ce67941︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">You might struggle to find <em class="emphasis">any</em> vector of constants that will combine with <code class="code-inline tex2jax_ignore">C</code> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡414c9efc-31b0-44ab-ae8b-f1629ff7671a︡
︠85bc25b2-2f3d-4f87-ab6f-651d8ac722e3︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡d7983bef-d0e1-4dea-a490-4065de0962c5︡
︠5ace30a1-081e-4afd-a446-586be4aee10a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Do you see the fundamental difference between the matrices <code class="code-inline tex2jax_ignore">A</code> and <code class="code-inline tex2jax_ignore">B</code>?</p></article></div>
︡7654585f-958b-442a-a17e-8c6f85333154︡
︠cca11f96-f3c7-4e0a-a811-79ed873ba6cf︠
︡a8c5ad53-4460-4c40-a7d1-94b723e5f9cc︡
︠9755cf31-3769-472e-a7ac-9315a3999835︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡5dca28a6-ade0-4753-a6dd-2713cc7560e9︡
︠6362e9b8-066e-47e3-aa41-878ab562ac38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡59ccca67-36d9-4447-a7fc-98312e681154︡
︠19729aa4-c52f-4231-ab33-eed8a5890c56︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡56fc9973-d390-43c4-a577-8566e0b6ab3f︡

