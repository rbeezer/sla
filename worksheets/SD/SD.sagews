︠12dcc52f-c5e3-471d-a49b-475caf3dfc0e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡010ddd30-c05b-43dc-a126-d6e328365226︡
︠13720504-5d4b-4889-a4ab-a818b41fa62d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡c3046096-5e39-4ab2-a30c-ea4f30340eb2︡
︠b86bdcc6-2156-4af1-ac21-91ce00e45e21︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1e989745-e763-4d13-afe6-177d58e4c33f︡
︠87bff0a6-cdd6-4045-aa91-f72849739089︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡d11910ab-7784-4e99-a333-53a8ce132b4b︡
︠52d6ce76-aed3-43bd-acf1-f54ad18f4ba9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡7fb4673d-edcb-41f7-aec7-fcc4695f8aa3︡
︠323f6969-6572-4182-a86f-05bc916f0f9b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SD</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡3dd6c4f3-d685-499d-ab24-a2a5f476386d︡
︠39a1f75f-a352-48ec-a6ae-b505b0a26dad︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Similarity</span>
</h2></section></div>
︡be66f6d5-578b-4a1a-a684-439584526c01︡
︠9cf02f6f-5c6d-470f-a177-6baf13466b37︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡cc3cd5c3-410b-4f8c-aea3-50f000447afa︡
︠2c7594b5-8069-4b51-a83b-c9cbadce1491︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡ece627bd-c4d2-4d98-af1c-bd579056f7a9︡
︠995707fb-5b02-4eec-a6dd-38b90595b9d6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="url" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡26f8dffc-b48c-477a-a3e8-111da1237ec5︡
︠4fb47846-50be-4d35-a763-07414e372b5f︠
A.is_similar(B)
︡0aebf543-ca48-481b-ad92-09a5ae4e679c︡
︠697556b9-a83f-40c0-ac9a-ea380e74cdb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Diagonalization</span>
</h2></section></div>
︡a2017672-f2a3-41bf-a279-c63fe3e68b34︡
︠2e62fd87-089a-4cb6-acdd-593992d7863c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡a5a089e0-1e9a-4965-af22-d8c12530dc70︡
︠81532ed0-fef8-489f-ae92-17bd8e3ce095︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡12775952-a41a-4ca3-ac8d-ea497d7aa6b3︡
︠cc533ad8-d7cf-4299-a652-34c8d455ffba︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡2778ba38-310f-4029-a99f-cc3850db6ca1︡
︠7d9e6489-dbae-4ba0-a54a-40779c877e32︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡0af985e1-fcd9-4a83-abd8-529c9381af0d︡
︠1081a178-265f-4ff8-a3a6-cf85b2843233︠
D, S = A.eigenmatrix_right()
D, S
︡05487eae-7c5c-4c5b-a485-b454a0625959︡
︠d6e2f609-575a-442f-af78-52da67bca160︠
S.inverse()*A*S == D
︡a47966f7-04f6-4f38-af3f-792548d0581c︡
︠8b104863-f78e-4d72-a576-5ff743014595︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Here is an equivalent formulation.</p></div>
︡220325b9-9b01-4ae9-ac40-39f204606a6f︡
︠0820c567-ff30-41de-aa93-bdcbfdf6e504︠
A*S == S*D
︡50d819e7-1d74-4e81-ad3b-0e8ca8aae80f︡
︠d60be25d-a7b1-4b99-ad6c-97b245be0a70︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡a46a05d5-27cd-4987-a26d-f04b281e718e︡
︠2238d3da-9026-4dbe-a4e5-2e57980a68cf︠
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
︡6e1a7fe5-975c-4e37-ad85-2b373df386b4︡
︠5237cb6b-0036-4c1a-a4e2-90ed81a753e1︠
D, S = C.eigenmatrix_right()
D, S
︡744bb162-c73f-4d00-a74f-aef9b7b6f09e︡
︠2126dd83-04b3-4383-a408-4b6342b08b12︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡933ba092-496f-4da8-a1f8-934f79139aea︡
︠c7df380c-b462-443c-ac5c-5e09e820bba9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡561364b7-17c7-490b-a6c0-21f3bdbdd687︡
︠0ee1256e-c758-4fe9-ab45-b67aa28505c9︠
C*S == S*D
︡dc7ce915-8ecd-47cb-a07f-636ee01662c3︡
︠b9f36ed7-3560-42ec-adf4-d6844656db8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡e33e7ac4-1098-40c6-ada5-27bac0116ecf︡
︠8b3caa67-e878-4174-a85e-e76912a23110︠
A.is_diagonalizable()
︡0ac367ed-ec65-447d-a9f3-7dae7c12e530︡
︠64a28196-f835-4d8d-ab1d-e9b9835954e9︠
C.is_diagonalizable()
︡44ef7711-e091-4669-a32b-115cadff7545︡
︠f9ad8149-22ab-4402-ae45-a56f21d20475︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Nearly Diagonalizable</span>
</h2></section></div>
︡97e44659-08ca-440a-a6ef-c94286359491︡
︠a3887ced-6f52-4993-a402-3cb8f3f39883︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <dfn class="terminology">Jordan canonical form</dfn> of the matrix.</p></div>
︡9261aee9-b580-482a-ab7a-db7946d3a6c2︡
︠96407ee6-89b1-4a44-a4fb-fd767bd4f7bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>
</h6>
<p id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <dfn class="terminology">super-diagonal</dfn>.</p>
<p id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡951d59c4-05ec-4680-aadf-6cdd248f8864︡
︠3095efea-3f01-4b6a-ab17-a73846cd556c︠
J, T = C.jordan_form(transformation=True)
J, T
︡99d2fb2e-65d6-478d-a23e-9e5d7a33898e︡
︠628358e7-64d3-4a5c-a770-60fbd6609fa2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡e0473af1-155f-4904-a68b-6ec5aab0b505︡
︠7f5c6865-a8b0-4750-abb8-717361d22872︠
T.inverse()*C*T == J
︡ef13b8c2-d6b9-462e-a7e9-06a7a1873a0b︡
︠deaf267e-9554-4ec7-ac36-64c0b624e5fe︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>
</h6>
<p id="p-15"><dfn class="terminology">Rational canonical form</dfn> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <dfn class="terminology">companion matrices</dfn> if this makes you curious.</p></article></div>
︡0cdbcf14-ea93-4f80-a653-cb89c3fe8d47︡
︠c5490092-48de-4cc6-ac3b-007893c82456︠
C.rational_form()
︡b1bfbc05-e4db-4297-a96b-56bcf40cd302︡
︠9c45c01c-5f12-4a3c-a2d2-e299f9ef5b26︠
C.fcp()
︡ec221e23-b82c-4ad0-a70d-aef48fd6f311︡
︠9fec20a5-35d6-4284-a2f5-f93feceb2df4︠
((x-1)^3*(x+2)^3).expand()
︡f84d46ef-c15a-4872-ada2-29b69a275554︡
︠94dd2240-2127-4bbf-ad89-fb3b1c543b99︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡03de0005-1264-4a1f-aaf8-3f37b531a7c3︡
︠0d6eb7ec-dff3-4395-a345-c74fef520f9d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡3aaa8626-3f62-42ac-a8d0-da82972f93f3︡
︠44dec751-c393-4774-aa63-08a860045d78︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡dcdba920-bf35-42bc-a753-a6b5e16f6bce︡

