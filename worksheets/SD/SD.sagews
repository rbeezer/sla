︠bf38f824-e543-415a-ad71-2a26f65f9531︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡ce106089-46e9-4a0f-a4e7-601860ec0713︡
︠8d19d7a6-0fdf-4970-a8ce-f2e0a5191112︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡4af64dde-3ed0-4e68-aee4-de6bf100b11c︡
︠4664ca1a-8495-457c-ae6b-2399f9a0952b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1617ad1c-8a11-4069-ac4f-873202ba3505︡
︠76755c61-9376-4348-a809-10def10ead99︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡d1f4751d-7a0e-4042-a9c3-2e30d32e1cbb︡
︠69d6d4be-1392-41a6-a433-762b6fe8ef59︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡bc2820ce-ee18-4022-a766-aedc93c7ca72︡
︠42e7b178-f660-4e63-a1da-88954291a6b1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SD</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡8047708e-885e-4935-ad53-7eb1403d1e4d︡
︠0dd5545d-3d68-4cfc-a1c2-440064192387︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Similarity</span>
</h6></section></div>
︡084ed933-761d-4fdd-acea-e3ff4545f687︡
︠e9027eca-1312-411f-afde-ab29b7ffdf65︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡64f77653-1772-4a93-aa91-93dbd83d80ce︡
︠6335aac0-ed76-4010-a4b9-54d20bb48344︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡2a75010c-2f99-459b-a6e7-f3cd6c810045︡
︠560cc0ec-c0b6-4a10-a57e-c718485d96ee︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="external" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡c35c02de-e9fa-40ab-a0f3-fca15f9bc32a︡
︠2ee7bea8-d92d-4327-af37-223d39cc59f7︠
A.is_similar(B)
︡41529003-8dcb-4a0d-a2f0-923c066c3b62︡
︠2a48ce8c-21af-4c5f-aa7f-b02ed244f7f5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Diagonalization</span>
</h6></section></div>
︡a20facd3-9044-4f19-afb1-f6215f493313︡
︠9c59b069-3f98-4399-ad85-e7b0910db41c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡7b9d45db-e1a8-49e2-a3ba-8a24bc5c900b︡
︠d8666bb4-6a50-43ff-a52b-0a63e2f3e83f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡407a7d53-2be7-4c16-ac78-782eb10a4e38︡
︠d7951137-4532-4c04-a3cc-b44e2f02a51d︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡ee574787-edc1-4082-a5be-1736656680c9︡
︠ea831cba-3980-4b98-ade4-c0c0635daed6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡8c0102eb-d155-411e-aafd-fcdbc4f2190f︡
︠f9bfac18-8ead-44ce-a37e-06ad261182a9︠
D, S = A.eigenmatrix_right()
D, S
︡192d9c9a-519f-4feb-ad12-b196ebc0d427︡
︠d41f1acb-51ce-41bc-ac9e-f5f9be57e2c1︠
S.inverse()*A*S == D
︡9a5aa747-2a8f-489a-a564-3693f514d069︡
︠1047bee0-51ae-4038-aa8e-fc58f5d1aa10︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Here is an equivalent formulation.</p></div>
︡42189c78-dd97-4c9a-a443-33f8cfda1742︡
︠895a2f7a-8471-4b4b-a58f-9b394f929aae︠
A*S == S*D
︡d382da24-5a9d-4c41-a7a9-735ad9a6c306︡
︠2d9a0652-bad4-4799-a904-2878242dbe1b︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡438ee854-b0e8-4561-aff2-32abbd0dabbb︡
︠60ffed83-1340-4ca7-ae97-0d9b8488233d︠
C = matrix(QQ, [
    [128,   20,  44, -50,  236, -18, -330, -565],
    [ -23, -16,  -5,   6,  -40,  27,   62,  128],
    [ -44, -12, -15,  16,  -78,  20,  110,  207],
    [ -2,   10,  -4,   3,  -10, -23,   20,   -9],
    [ -61,   5, -25,  27, -116, -26,  153,  225],
    [ -12, -12,  -1,   2,  -20,  24,   34,   82],
    [ -23,  -3,  -8,   9,  -42,   2,   57,   99],
    [  13,   6,   3,  -4,   23, -12,  -35,  -72]
    ])
C
︡faee9dc2-0d65-4e20-a509-c166cfb57d9b︡
︠b8597f63-1717-4dfa-ad4b-71ce79d2f508︠
D, S = C.eigenmatrix_right()
D, S
︡1b16586b-b83c-400c-abe0-651249c1cb7c︡
︠4875fce6-89eb-46fc-a2aa-30f534ef6abd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡6f6e55b3-b3da-4e3a-aa54-5955e89d8f73︡
︠ce33d888-c4b9-4fac-a952-eab4fad9758e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡95dd8a61-326e-4b59-a8fe-ae96290f275a︡
︠6f03c8e2-924f-4105-aa84-923396c95f1b︠
C*S == S*D
︡97bab72a-accf-4bdf-a188-62b954f2e51f︡
︠1b6c5247-ce39-4ef6-ae1f-67110660846a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡375a3ac7-2966-4246-a927-89e9bf010966︡
︠3ad94131-86ae-4dc3-a366-aef98a98ca22︠
A.is_diagonalizable()
︡05cee1f2-289d-476a-aa90-04f0e7a80722︡
︠93861771-9aa2-4729-a2d3-2e71e699e901︠
C.is_diagonalizable()
︡c94406b7-8513-4895-a1b3-4e1c0f299139︡
︠2f3733df-b64c-49c6-aee2-1203e131bc2e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Nearly Diagonalizable</span>
</h6></section></div>
︡65eac1ea-1905-4692-ac80-ea3fd2013bd6︡
︠a4b8e8ac-2b52-41bc-a384-47f76d97ed2c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <dfn class="terminology">Jordan canonical form</dfn> of the matrix.</p></div>
︡3d0f5f8f-bba1-4dbd-aaf6-f3dea4c4ba1e︡
︠75b8507e-039a-4466-a216-8095f49b856a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <dfn class="terminology">super-diagonal</dfn>.</p>
<p id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡3d0f560c-40fd-4b44-a265-8e61456e0f36︡
︠a74a7917-6586-434a-a761-dff314872865︠
J, T = C.jordan_form(transformation=True)
J, T
︡f0d3b4dc-c425-4a59-a5c0-69f6c0b57dde︡
︠3df01b5f-813a-46ef-a04c-0b6f23fd87a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡6d36e513-4958-43c6-a3cb-0d66c89c5140︡
︠8aec0c12-05b6-4ef3-a530-03d69af3655a︠
T.inverse()*C*T == J
︡5d54960b-8103-48e3-ab36-b499b33a7a0d︡
︠46aaa40b-f8c0-4c5f-af03-6c706249db3d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p id="p-15"><dfn class="terminology">Rational canonical form</dfn> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <dfn class="terminology">companion matrices</dfn> if this makes you curious.</p></article></div>
︡88332d83-88c5-488a-a88b-bf83fe6384fb︡
︠2845c734-acc7-425f-ade8-9a71d704b89a︠
C.rational_form()
︡4b281ef4-3a10-4145-a113-abd1cb9d0459︡
︠ea412502-a4cc-44e0-aaf2-eadcca75789d︠
C.fcp()
︡1876aaba-c6f9-4237-a3d7-5b227edf347d︡
︠2959f03b-b01a-494d-a17b-9d6bfe9ced15︠
((x-1)^3*(x+2)^3).expand()
︡a3f0de11-9c1b-46bf-a4c7-f646245c1392︡
︠94685367-4036-4c91-acee-3d5847c93dcd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡0527d8b4-f052-461c-a8ea-718cac365742︡
︠5577d508-af90-42f2-af80-af12bcff2577︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡7cdf4a55-305c-407c-a264-20343f03f386︡
︠02b1a6fc-2763-496a-a23f-2c65e68a1bf2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0f4c1e20-a581-4827-a34b-2778d6f51010︡

