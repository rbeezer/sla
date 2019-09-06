︠be695f4c-b27b-4441-ac51-95d2e692e6c1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡28f91596-1589-40ce-a193-3290577ea646︡
︠77f711ca-7eff-470c-a525-95726daeb440︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡ab8939bf-42d4-4154-aeb6-34bb72810454︡
︠400ca365-3a71-4e96-a271-9b656d7ef724︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b75c4ffa-524c-4336-aa6e-bf925f0cef30︡
︠bcf09f61-a3bf-4956-a338-42ee0fe86e7a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡5275315a-2fdd-4f73-a5b7-efaceacc32ba︡
︠c1d3615b-b7b9-45b1-a90c-0fcaba4878a2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2630aa1f-6c71-46cd-a75e-36d009b512ec︡
︠40281d22-d8f4-4a51-a7d7-50d31edc4ee2︠
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
<div class="date">Fall 2019</div>
</div>
︡a33db4bd-7866-4d1c-af99-6ea32b2f86e7︡
︠89ac7502-38b9-4f9b-ab84-5e3025c454a4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Similarity</span>
</h6></section></div>
︡c3d6f5b0-7f83-497c-a435-893b9616a6b5︡
︠a788d8d9-8580-4828-a56c-be5faf5b5f21︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡4d8d5652-fd88-4e1a-a761-32091a866e68︡
︠fb688bed-edb6-46a7-a11e-3503e2e6845e︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡d5a4d2fb-0e9c-44f6-ac18-b4dc8be627b8︡
︠69d0da2d-53be-4f0e-a6c0-f85c4d824b90︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="external" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡3f9007b2-5060-4f60-aecd-eb548a21c6c6︡
︠6060168c-9dc0-4dc6-aea2-c9e1e7b08864︠
A.is_similar(B)
︡fd56e6d6-274f-472b-ad06-0c0fee6afe35︡
︠3338a1e8-70fc-407e-ac5e-36b35a2b52a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Diagonalization</span>
</h6></section></div>
︡7dda57c4-f45f-4057-ae1c-d429874b39dd︡
︠35a0007c-4719-471f-ae01-ad5d6e5aa848︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡67e17e1f-b67c-40ee-afce-06b63259d011︡
︠8796805a-0017-4d15-ab11-a1858c8d55d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡76f0d712-2133-4904-afc5-0679c054ebab︡
︠21212f93-1b54-4fe5-a4d1-ae81852da094︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡cb6ec8d6-bf21-441f-a95d-b0c42494244b︡
︠807fe47c-a3cc-440e-a4a4-264ea634a68e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡11f80ec8-b7c7-4318-a152-589a740a8a01︡
︠9239b377-c2e8-4929-a24f-5a7e4f249bfa︠
D, S = A.eigenmatrix_right()
D, S
︡d9d0284a-00cf-4861-a286-2d09c48f92b9︡
︠d82a953d-f3db-4262-a49b-ab8b550e490f︠
S.inverse()*A*S == D
︡2e8591ac-e90c-4532-a87c-327bec1ea57b︡
︠5aadf3ea-0d40-4994-ac1b-85ef1dc2b773︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Here is an equivalent formulation.</p></div>
︡2dedad19-817c-4206-a6d8-25d15ee10a88︡
︠db5b8099-a1b1-4ee2-a44f-c7498987b813︠
A*S == S*D
︡1ef6a874-215d-423b-a480-3478e0168df9︡
︠1080639d-7bfc-4910-a568-5add2be42611︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡f21828bc-6275-4f07-a06d-8b769927d4ef︡
︠6e186401-0747-4d38-a43e-2caa2435c19a︠
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
︡1f828f69-1705-4ed9-a72c-6490ec42114b︡
︠b5b4833e-c55c-4a4a-a4cc-121a3f782896︠
D, S = C.eigenmatrix_right()
D, S
︡34ce941d-2d28-4add-a529-13b2ee2564d0︡
︠a156feb1-cefe-46ac-a4fe-d1193f854fa2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡f534c337-5f54-4ecf-aa0e-9efb73a09ff3︡
︠2f864497-bf61-435d-a3fd-19c1434e4de3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡013977d1-e905-4a4a-a77a-5931a75e69b5︡
︠dc606e73-f6d0-4b75-a6fd-056460bcf25b︠
C*S == S*D
︡738e3ecb-2c1f-4cd7-a237-f4c58264f564︡
︠1d79bb78-6947-4915-a038-73c3956f955f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡a7d208d7-1316-4ba7-a0ab-92e667bc742d︡
︠3d40f49c-ca0e-40c8-a8d3-4662cca792bc︠
A.is_diagonalizable()
︡ff940889-5546-4352-acef-f2655220ab26︡
︠7250669f-fe54-448a-a748-74bda00c1a73︠
C.is_diagonalizable()
︡0f66fdc9-cc72-41ca-ab4f-4b4f9e09a131︡
︠541cb098-a652-486e-a323-27e677471f94︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Nearly Diagonalizable</span>
</h6></section></div>
︡1f92b424-dda2-4f39-ae6c-1830fa84293c︡
︠e4b767c9-c966-4c5a-a540-159459fed271︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <dfn class="terminology">Jordan canonical form</dfn> of the matrix.</p></div>
︡e66add1a-6d4d-4403-ae67-f7d8c31c1fe9︡
︠1df77d49-7b7c-49cc-ada2-4aa236543641︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>.</h6>
<p id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <dfn class="terminology">super-diagonal</dfn>.</p>
<p id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡f5eec6c1-f3c6-4052-ac2d-f7899b0f0354︡
︠55a447a0-8a45-414b-a40e-206aaf5ae6e4︠
J, T = C.jordan_form(transformation=True)
J, T
︡b4958dd3-d5d1-4be5-a626-446af1a5b9ba︡
︠e6f7c859-b2f8-44a7-aa0a-15e8fe9a354e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡025f917f-a329-4b64-a314-d39cb9a54da8︡
︠caa1a422-3d55-471c-ab4e-f219ed38276d︠
T.inverse()*C*T == J
︡f28a42e6-424a-48bb-a570-3725002495bf︡
︠2b2a56d4-d271-4cfd-a744-78b9dca0036c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>.</h6>
<p id="p-15"><dfn class="terminology">Rational canonical form</dfn> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <dfn class="terminology">companion matrices</dfn> if this makes you curious.</p></article></div>
︡39764dd1-1a38-4cf8-aa7d-fe5a8372476b︡
︠494b088d-9a7d-424d-abe4-8e3d8b10e584︠
C.rational_form()
︡0ce57ed0-b7a3-45c8-a287-605aee6fe456︡
︠9527ba68-a104-4551-ad79-4ea9887e853d︠
C.fcp()
︡cc3f4e9a-64c7-491c-abf4-532fcb84a09d︡
︠d6a05eff-9636-4dd7-a986-dda0d6b5a554︠
((x-1)^3*(x+2)^3).expand()
︡33ad4fc3-f593-4b60-a308-ae64e3b986fd︡
︠a215055c-9423-47ea-a71a-0c86079c1120︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡fc301467-00b3-4321-ada3-8a01118ad9cf︡
︠abcece23-5331-4764-a84e-cc9cdae55bf1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡bad78a6b-ebf1-4c68-a0fc-fc999647c92c︡
︠3f79bc8b-6dda-4a1e-a1b4-f748a97a5599︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡6d9e64af-00dd-4b7f-a99b-e8220cb861e0︡

