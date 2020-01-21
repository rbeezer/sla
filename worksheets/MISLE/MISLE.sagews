︠eaead464-e68a-4fb1-a5af-68711546e230︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡f1aec722-c084-4b70-acda-b4325489b7be︡
︠7bf1ab9c-d5d6-4a8e-ab4b-50f834cce73a︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡5a55cf06-cec9-4461-a216-e76e0a2c614a︡
︠ba51f100-8de4-463b-a86d-e44524051676︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡12063084-001f-4582-a008-dfd1506567cd︡
︠070105e4-124f-4752-a445-a99f5f6ce57f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡47649797-cba0-4a26-ad7a-214b09b769cd︡
︠905f4e7e-6391-4433-aa1a-54cafc3b4a40︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡8d1dd5c4-328d-44c0-a772-2d6e76bb1f55︡
︠fd31b067-5aae-47ea-a862-a90187733829︠
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
<div class="date">Spring 2020</div>
</div>
︡e262323a-9844-46c3-a15a-40341cc8f011︡
︠903f2725-1ce6-4052-a467-fb7309fd1ed3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">An Invertible Matrix</span>
</h6></section></div>
︡063366a8-bc4a-425f-a4a6-c914c2dbffac︡
︠3a26d9d8-1946-437b-a3b5-98fbdbea7da1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡9dbc4961-18a6-4eee-aa19-0b2f6fa4a124︡
︠2c2d966f-7872-4f60-ae02-71da049b94cb︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡8f7ad114-09d8-4bde-acbf-e30bd1f7c9b8︡
︠448cf5d0-ae97-4655-a510-5f36b17b9345︠
Ainv = A.inverse()
Ainv
︡c9a459a3-a514-4c8a-a1eb-23b697702136︡
︠600045af-954a-4a13-a431-064bcd24e552︠
Ainv*A
︡cc2cd717-7bdc-457d-a9c1-ac7f84da8bfe︡
︠dba0887a-fe5d-4ab5-a841-aed1e56b0e60︠
A*Ainv
︡d4c754fc-efb3-4d6f-a2f3-3921b071b702︡
︠8d745c95-9755-4b2c-aa4b-e85091103d83︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡f017463e-cd51-4213-afb8-b900aa2ba582︡
︠982af713-5d1b-4f4d-a338-be2cfd619061︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <code class="code-inline tex2jax_ignore">A</code> above.</p></article></div>
︡3fa6aaeb-e490-4094-adc8-6869456b7fce︡
︠1fdc6864-459e-4597-a963-1cc850ecc5c8︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡3d81ae91-3e6c-4cb5-a35c-77930e4eb047︡
︠88509ff3-0216-4ed2-a418-180ab09ff403︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡c8b19508-91ab-4799-aaea-3f24ae43e48e︡
︠74735096-8273-4dfd-a6ab-1db3152691a1︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡02576b8f-1129-4408-a162-d708b2ee97f3︡
︠906f7caf-cc0e-455e-ad75-04d1d93c7c47︠
B.rref()
︡0d76cf37-ff3f-4d95-ac7c-171f8e8ca09f︡
︠89cf09f3-0e34-4e1d-a3d4-ffb0e4f71a7a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Without an Inverse</span>
</h6></section></div>
︡9f46f5ff-90dc-44bd-a1fb-5fa1096f08a8︡
︠3487a8da-76a5-42e1-af00-a6f58feeff7a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡7ae0288f-205d-457b-a67b-62267a669650︡
︠0dbedd76-ca62-47ba-a322-e941fcb624c8︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡5c60a4d2-aac1-4d3d-a76f-958e68a2ed6a︡
︠6c6cc10a-4b40-4c14-a99a-920117ab9990︠
C.inverse()
︡3fcab9cc-3077-4139-a5d2-0651868222cb︡
︠20bfa687-2b8a-439d-adfb-0f1509c9ceb8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <code class="code-inline tex2jax_ignore">A</code> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡ae85d3c6-bf23-495d-a73c-23b48cd55a40︡
︠2ffb4de1-3905-4dab-aa1e-64128ae60304︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡4233d80c-9459-4a24-a5c5-43a652139179︡
︠5cb8f910-5a4b-44fd-a84a-e9d8f3b1742e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <em class="emphasis">no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡d7a90a31-b8cf-430f-a183-c6daeddae5e0︡
︠3c8e5888-a416-4456-a37f-7354e41ce01d︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡15993f2c-8c0a-434f-aa77-9fbf39456357︡
︠06ca00a2-d2fe-4c23-acdb-36ae6d8a3ed9︠
D.rref()
︡5e028032-3152-4f25-a2e2-e2981f69aa87︡
︠3d530e44-0756-4a58-af87-26acfbc556fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p id="p-8">You might struggle to find <em class="emphasis">any</em> vector of constants that will combine with <code class="code-inline tex2jax_ignore">C</code> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡e3b37c2b-0236-49eb-a1e4-90b3cae904f0︡
︠1d3c1b83-796a-4ff9-ab17-fb8ae54de51d︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡52b9fc47-0b07-46f7-afb8-6a3e523a01f1︡
︠f44ae372-b8eb-4f4b-a647-fa13976d16f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p id="p-9">Do you see the fundamental difference between the matrices <code class="code-inline tex2jax_ignore">A</code> and <code class="code-inline tex2jax_ignore">B</code>?</p></article></div>
︡7e5c93f1-6aa4-4699-a20d-9f8b3229f3ff︡
︠37e938d3-93d3-484d-a27d-00d8c0beab19︠
︡a508f30c-6a04-4e89-abb0-9b174d8fb2ad︡
︠c53cd20e-f78f-4c78-a633-6ce8436c22fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡fb238059-e417-44de-ac31-faee3219f4bf︡
︠1ba4e344-d29e-49dc-a7af-99a78d9a69f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡81c35b79-f4c9-4266-aee0-e7a8e358ec1d︡
︠ed0e33ec-8fda-4e22-a123-9f371877def9︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡bd7bcbfb-77a4-4196-a4a8-748bb9331110︡

