︠3ad95ba4-a8f4-4865-a9b2-86d338ba691f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡44a1dfd8-4703-4c99-a134-3ba0fe9b9f5a︡
︠f9e9bc88-4c05-40cf-a9d2-e1e92e8b92ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡c98b237b-bc8b-4188-a126-3172a9035a5f︡
︠8190dc34-7f0f-4b28-a43a-a7b2a6bb915e︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1dfaec72-1f22-4fd5-a719-1c1deb3a6cbb︡
︠21894ccb-4f37-4e2e-adbb-a22765b13da3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡0c496953-4a37-411a-a0f5-ca8e1e4c089a︡
︠ba7f3e89-1c34-4456-ae55-31fb01a5dad7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡581d84b0-ddd0-4215-a80b-d4dd0dea2c5f︡
︠3a8570a3-180f-4821-aea1-a86766540715︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section EE</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡7400a714-b2cb-425e-a349-5e1b681bc22d︡
︠8a28bd0c-2bfe-4714-a559-ea706d8895ac︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Eigenvalues and Eigenvectors</span>
</h6></section></div>
︡3266b23b-e56d-44ee-a934-22e9357cd118︡
︠d4b4b66e-1448-4187-a01b-43d3d185d66e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡f43a8e0e-d222-4b4a-a25c-da0bdec64adb︡
︠8cfc67b7-59a8-4b5d-a682-26c32a2f069d︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡22a1e09a-8e32-47e7-a440-7774b9ed8f41︡
︠d6377281-c000-427e-aac3-b4a285b73467︠
p = A.characteristic_polynomial()
p
︡54d9b5c4-6846-497e-a71b-acf5f8aafee6︡
︠54a3d59a-902e-47b5-a537-1e40338ee8cc︠
p.factor()
︡e2185fee-97ec-4658-abbb-3ca7dda6c9e8︡
︠6ca75063-f0bd-4c13-a4df-00ca7a7204cf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡d2c79180-4700-45c2-a90f-81f5b7f3af76︡
︠e48ac2c4-21c2-411f-a3a0-23128ca70577︠
A.eigenvalues()
︡c5c5087c-dad9-4dfb-ac25-d58e80b28b8f︡
︠34409581-16bf-408e-ab50-02691ead1299︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡1cd6c7b5-8dc3-4ccc-ab82-c852261c32ec︡
︠b0996602-c908-4cc5-a98d-c46168785ba3︠
(A-( )*identity_matrix(6)).rref()
︡86420b81-d5ad-4e7a-a302-1d78ee066611︡
︠aa7ec795-97a3-448a-afcb-2e896687dede︠
(A-( )*identity_matrix(6)).rref()
︡f79755ff-b865-4bbe-a6aa-1d8a7f1f6ed4︡
︠ddb641c4-07c6-4c71-abdc-6f9f90ea059e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p id="p-5">Use a basis for the eigenspace to create eigenvectors of <code class="code-inline tex2jax_ignore">A</code> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡96b4c069-4600-4cd8-ae86-af64e05ca514︡
︠3aaff705-04b1-458e-ae77-426b65bb1613︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡a5d44db4-2c9e-4de7-acce-410bd70832e4︡
︠5893ce08-234c-422a-a9e7-8399e60ef40d︠
B = E6.basis()
B
︡8662931a-b4d0-40f3-ab92-215cb33b2203︡
︠0996b29d-d51a-461a-a9c4-bf50c140d62d︠
v = *B[0] + *B[1]
v
︡a363a263-f390-4df2-a89f-c5f25b3ac01e︡
︠db24ec64-0689-4769-a9e2-9b88de418029︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡ff4143da-8e00-4776-a115-4a0c2ea60362︡
︠c6117655-0e31-4eb9-a5da-b14ce7a9eac5︠
A*v
︡c8bea34f-85dc-47c8-a025-ad7f9674f6fb︡
︠bc47bea0-e35c-40d9-a8db-e89683cf8b57︠
3*v
︡714b8f93-f865-4462-aef0-ad8341701fc6︡
︠738be1b8-4b0a-4051-a330-4dec12e83f80︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Here's an easy check:</p></div>
︡503ec2f7-b32b-4e31-af64-0a2e7315c545︡
︠5a6992c8-97cc-43af-a4a6-9a1b99fafcf4︠
A*v - 3*v
︡25f8e8aa-141e-4158-a193-82eae73e23b2︡
︠7d8766f1-1163-4f78-a881-b04ab32e252d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Can you make more eigenvectors?</p></div>
︡7ab01161-3829-4b10-a3a9-56aa05e34086︡
︠e00a01c6-3fe5-48a7-a9d1-237ce82cb6d3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Eigenspaces, Eigenmatrices</span>
</h6></section></div>
︡cb4d54f1-b21a-4794-af22-055814130cae︡
︠07944f93-1453-4edc-a2cf-5d4b66f79044︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Continuing with <code class="code-inline tex2jax_ignore">A</code> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡e5b8af83-3a88-4d66-a993-9e0d9739ed93︡
︠179cf3c7-7f2f-48f5-af8f-21e3f7a219fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡c125e19a-909b-4f2b-a513-535375b17ca7︡
︠7789d6a7-147b-407d-abde-f22559a1b2d6︠
A.eigenspaces_right()
︡94e2db98-2ada-45e1-a3ae-2914f6e98ab5︡
︠05ae88a1-1dbf-471d-a947-8719b00a9855︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">The <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <code class="code-inline tex2jax_ignore">i</code> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <code class="code-inline tex2jax_ignore">i</code> of the first matrix.</p></div>
︡e5b8431f-42d0-4152-afe7-67e70a70519a︡
︠77030461-4b41-4c66-ae55-6cc44cfcd4e6︠
A.eigenmatrix_right()
︡e5ee8e3f-f8a4-497a-af50-5cd101efdc4b︡
︠32111af5-9fd4-446b-ae61-fcdcdedceb82︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <code class="code-inline tex2jax_ignore">C</code> next, but was not the case with <code class="code-inline tex2jax_ignore">A</code> above.</p></div>
︡7c58d62d-bcd9-4110-ad06-ef2cc0aac855︡
︠bc105f68-c249-4c6b-ac3b-32b6e7691326︠
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
︡8d3ad894-0575-4f3b-aaff-6311908f993c︡
︠0c9367cf-cc53-4157-ac07-b6ad73df3796︠
C.eigenmatrix_right()
︡3a2ce84a-806e-4474-ac44-30add20b232b︡
︠a56c2457-ee74-4ccc-a081-5b20902ab4ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Fancy Footwork</span>
</h6></section></div>
︡f83656aa-d885-4d51-a96a-bb6dbfdda918︡
︠711a7601-0ea9-437e-a514-fcf5ab578f1a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡88c923f3-5f20-4857-a7b8-ba5b0f667e58︡
︠9d157496-7f6a-4fff-a66a-f155d653cd12︠
D = random_matrix(QQ, 10)
D
︡6b0707b9-d384-4d73-adea-8ebd4839c06e︡
︠2c9239af-282b-4cf3-afc1-940524e6db64︠
p = D.characteristic_polynomial()
p.factor()
︡9802b4b5-3ed6-4a95-ad92-f37f9a480136︡
︠6cf7facb-0fad-4547-ab21-e1561f05707b︠
p.roots(ring=QQbar, multiplicities=False)
︡6e755701-201c-4e71-a533-715c77b8d385︡
︠ef3649d5-a05c-4c33-ae97-2097d1f99cc1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡1a0505ee-a9e0-45b4-a99d-0bea3bb254e1︡
︠60b65cc4-b7da-4735-accf-9db87e421970︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡ad064630-af87-490a-aec7-e659ec73f8c7︡
︠9749e9f2-aa12-41a2-ac9f-475904588514︠
p = E.charpoly()
p.factor()
︡cac14aa3-c4ee-47f8-aac1-909fa9302b53︡
︠02ed427e-6434-42a4-ab51-ce16dbf1b2d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡5d44a862-7c7a-4195-a54a-619876477095︡
︠1f253dea-0577-4081-a5d5-0479cf016810︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡d3f083d7-eec5-45cd-a62b-c204cc3cea4f︡
︠b12b2bef-2cee-423b-afad-b70bbc8f86ad︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This is such a common operation, that Sage has a shorthand method for the <dfn class="terminology">Factored Characteristic Polynomial</dfn>, namely <code class="code-inline tex2jax_ignore">.fcp()</code>.</p></div>
︡55f8013f-16cf-45e3-a0ed-da5e51ae135b︡
︠0b003116-02dd-422b-a52a-3048ea998bcd︠
F.fcp()
︡6d87dc8e-3910-4632-a294-cc5053afc3a9︡
︠10697460-39a4-4918-ab31-00d5039b25fc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Nothing short of amazing!</p></div>
︡e0c5a490-5c90-4131-a9f5-bf5956ce2e31︡
︠b2188bd2-b2f5-4309-a4a8-a67ffc6ca8ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Numerical Matrices</span>
</h6></section></div>
︡951bea6b-c2db-480b-a156-9fc1fce589e2︡
︠87893739-20cf-4b40-a766-d06a1660be99︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">If we use <code class="code-inline tex2jax_ignore">CDF</code> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡111ab51f-f3fb-43b0-a427-b071a87093f2︡
︠d04fb04c-0300-4f4b-a08d-73de587d9009︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡3d98d581-2952-4956-a45f-2c30a8825226︡
︠b645e1a7-3c08-4f9e-a6d3-5ff8fa08c6af︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡c550a425-b52b-4e14-ac72-fd2f5196a6d4︡
︠69aba50c-ab2c-460e-abd5-ed30c826fccc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡026ae1fe-daa0-4601-a5ce-abbdb76de69a︡
︠ac9a777e-a9dc-4bda-a14c-a68b36670d3b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8e829fa1-e4ac-4169-ab7e-714fc863f603︡

