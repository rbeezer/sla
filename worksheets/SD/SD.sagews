︠62080aa3-8b1c-4b85-ac16-6d0bc41be4e8︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡35a3eae8-e740-4308-a8c9-e27ed32ff13e︡
︠9633a1d8-9cfe-4c3e-a4bb-ead59b9ca9de︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡765a90c7-8538-440c-a348-e32b8c7282c5︡
︠03c6e56a-df01-4841-a476-c59f12c854b1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ac4622c8-d98d-4a01-ac59-22fc10fe9425︡
︠a903cb5c-0ff0-455c-a4ad-66eb4cbe369c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡c36c628c-f9ce-4914-a65e-4c5279f38291︡
︠f6563b9b-8854-46e6-ab5b-998eb08b31dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2d37363c-2c47-40b6-a66b-205bf1b7cf8a︡
︠cb703a67-793b-4137-a7ad-3cd88ca3463d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SD</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡10880c37-3a16-462a-ada5-bd186a50ea71︡
︠791012c5-a0fb-476e-a248-7f598c3dd185︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Similarity</span>
</h6></section></div>
︡2fe40f7d-52d5-4e5b-ac7f-5feb877b55dd︡
︠a0d85d8d-aef8-43ee-aeb5-e04dbd439986︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡6364cb15-9c38-4466-a251-832d1da504f9︡
︠a5c1a8db-d671-4ec7-a5fc-780961616756︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡10cd166e-1449-4536-ad96-90faa5b1728c︡
︠89c47dae-cc21-4675-ac4e-3ef28984af73︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="external" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡bfd8456f-32b5-432d-a8e2-72164a0dfbc6︡
︠e86c0a16-a496-4ad8-a857-bd9c4e74b6f8︠
A.is_similar(B)
︡cd02a1db-7801-4ebe-a644-ef17c5639298︡
︠a66b91c6-d4fe-45d9-a34d-72d8a9e0c735︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Diagonalization</span>
</h6></section></div>
︡0db79485-b6aa-44f8-ad3c-bae839119e9d︡
︠3abf244b-a014-4b54-a337-fe2e76797171︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡ebcabeef-99fa-4daf-a2e3-ad2dc9343b6a︡
︠c558f06d-0060-4a4b-aa79-e170e3928dde︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡793d22e9-ff96-4f4b-aaf2-3d4bd3e75642︡
︠4bc89ea7-7a61-4165-ac04-f4240f7e6d5b︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡0a7c20bd-837f-4495-aa56-f5b19b01a7e0︡
︠2faabda6-a392-42eb-a881-f76b80792110︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡140ceba8-24cb-47ea-a372-469b22c9cebd︡
︠fd1f9fa4-8d94-4903-a33a-581f4420dee8︠
D, S = A.eigenmatrix_right()
D, S
︡bd5dcfc7-354c-49dd-ac01-76995ed8ea6c︡
︠32a9f79c-ed13-4ab0-a771-8f829e066f1d︠
S.inverse()*A*S == D
︡c5f6eed8-bc5c-4ff7-a07f-20fa3884ff30︡
︠cf6b65a4-d503-4203-aa1b-a3b9ee273166︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Here is an equivalent formulation.</p></div>
︡2268ede8-1ce2-4f13-a2b4-d689f682db33︡
︠2669f47d-d89c-4b8d-aeb9-29fa3f0b1e75︠
A*S == S*D
︡2ab84acb-8a41-46fa-a4e6-e00eb3dcffa7︡
︠5c2156c2-24c6-4536-a074-65563091c917︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡07428994-cb88-41ec-a8e3-c591bd15fef0︡
︠608a204c-517e-4a9c-a61b-ae13fc112002︠
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
︡162914a6-1f78-4d12-aa83-521661373673︡
︠89aa2bfc-20ca-499b-ab34-f9610c3436ab︠
D, S = C.eigenmatrix_right()
D, S
︡a344e70e-42f0-4c99-a84d-c47357f8b3f6︡
︠f994d8be-7f06-4fdf-a964-728e6e567096︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡7901de98-c07d-477b-a711-b8446a2c0ada︡
︠043151ff-9c01-4979-a4ea-6a2ae95156b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡0c64dc5c-bf9c-4023-aa72-4dd78b0ed648︡
︠955092cf-f8e8-44fb-a892-ae07593671dc︠
C*S == S*D
︡961e6a12-a1b8-49f7-a471-72f8a52ebaf8︡
︠69f7852a-8cb4-4443-ac9b-e1eda92c7e67︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡7d0649c6-353e-4973-ad4d-82e70903582c︡
︠f9900e9d-4d28-4ccf-af94-c27ba74aba2d︠
A.is_diagonalizable()
︡627028ec-5398-4b55-ab4e-0117dbf26ac9︡
︠83bf4d72-9d63-4628-abdd-adfb5c74eefb︠
C.is_diagonalizable()
︡77f3730f-6acc-4d2f-a6ec-48a3400b5fa4︡
︠a1c944d5-3300-40e3-af41-c897cd7c9cb3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Block Diagonal</span>
</h6></section></div>
︡165e092d-f61f-462d-aa22-bfb5673e3cbf︡
︠0d55b5fd-3f44-4fa6-ac48-f07a5e19d568︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">This section uses results about generalized eigenspaces, a topic from Section IS, which is only available in the Late Determinants version.  We continue with the matrix <code class="code-inline tex2jax_ignore">C</code> from above.</p></div>
︡4669c1fc-f2b3-47ae-ae73-763f09e22b78︡
︠4bfa5cb5-8b84-4e0f-ade7-06d35ed30ff8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">We compute a generalized eigenspace for each of the two eigenvalues, by using \(n=8\) as the power of \(C-\lambda I\) in the null space computation, according to Theorem GNES.  The choice of a pivot basis provides slightly cleaner results later, but Sage's default basis would work equally well.</p></div>
︡8338d949-fd57-4147-a116-81c652426525︡
︠db9137b7-0a46-426a-aa7b-0fdd52fa46f7︠
G1 = ((C-1)^8).right_kernel(basis='pivot')
G1.dimension()
︡bd24e5b9-dc41-4268-ad0f-80f6e58e0d4f︡
︠40c65bc1-59d9-4b0f-a3ef-3603ce85d821︠
G2 = ((C+2)^8).right_kernel(basis='pivot')
G2.dimension()
︡8625d709-8526-4ee7-ae15-d5cd88c1e990︡
︠b27d7548-fce2-42d0-a9b1-e87a6f3302ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">Notice that the dimensions of the two generalized eigenspaces sum to \(n=8\text{.}\)  Even better, the union of the two bases is a linearly independent set, and hence a basis of \({\mathbf C}^8\text{.}\)  None of this is an accident, and is the content of the upcoming Theorem GEB.</p></div>
︡37ca4408-cf5b-4188-a123-31cbc3a06a22︡
︠55910e50-720c-4d14-a537-9785248d4f87︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">We grab a basis of each generalized eigenspace, form their union (a “sum” of lists in Python syntax), and make a (nonsingular) matrix with the basis vectors as columns.</p></div>
︡1dcbed94-e07e-4d40-a2a4-94c29f72cc14︡
︠3320e1d8-5b9d-4a72-aa9c-e30a6a9dd69f︠
B1 = G1.basis()
B2 = G2.basis()
S = column_matrix(B1+B2)
S
︡ac3cd1ea-a364-410b-a3b5-f9904fbec946︡
︠8f3cc0ea-b8e2-4cf2-a82d-e2773c7ea48e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">We form a similar matrix, which has a <dfn class="terminology">block diagonal</dfn> form, indicated by the subdivisions we have added.  The blocks are a direct consequence, and manifestation, of the fact that the generalized eigenspaces are invariant subspaces of \(C\text{.}\)</p></div>
︡a0dddaeb-4932-4b01-ae93-c763f9f68aa0︡
︠84162e00-94ac-475d-a837-c0e24dc444ee︠
BD = S.inverse()*C*S
BD.subdivide([3],[3])
BD
︡4635d53d-5c2f-4995-a729-ef9c1eae2e20︡
︠d670c45f-2bc4-4b5e-a1c0-bbf48122f512︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">4</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Nearly Diagonalizable</span>
</h6></section></div>
︡5e9cf515-4310-48d6-a7e3-89e7e691996b︡
︠cca589aa-efef-4f7c-a5eb-8647e3d8471a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <dfn class="terminology">Jordan canonical form</dfn> of the matrix.</p></div>
︡2e6c3f5d-a4c8-44cf-a12e-cb412350b97d︡
︠49bb5ebb-c5f9-4e46-ae58-c2314659603e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <dfn class="terminology">super-diagonal</dfn>.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡e77a3d9e-8548-4f2d-a513-dd51fa844f57︡
︠d4f4e327-1ad6-43d8-a02a-3089273ac892︠
J, T = C.jordan_form(transformation=True)
J, T
︡066fb52d-d47a-4ab8-a3ba-dfb68ddc7a40︡
︠d4744297-f7c7-4263-aaae-48e0e6dc2477︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡54cd9103-80a4-47cb-ab76-acf8cee9a1e2︡
︠84751061-3e1e-439b-af42-6fe57a353e72︠
T.inverse()*C*T == J
︡0067578b-9cab-4ae5-a5da-7495900d63cd︡
︠5cdc424d-ed98-4936-ae94-8181722708bc︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-20"><dfn class="terminology">Rational canonical form</dfn> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <dfn class="terminology">companion matrices</dfn> if this makes you curious.</p></article></div>
︡5193de51-b3f4-4c88-a262-7f300a3213bc︡
︠00d93b79-c3db-4794-a0ca-23a53a06d1a8︠
C.rational_form()
︡ea9c4d7c-74f4-407e-a48a-fad901407222︡
︠b1d5d125-eaae-4fa5-adfe-7e85896caeec︠
C.fcp()
︡0aedfcf2-1dcc-4bb6-a196-f0485d2caca9︡
︠9b379238-4551-411c-a835-e263bc0d8ba3︠
((x-1)^3*(x+2)^3).expand()
︡43e7b7ae-fe45-4f67-acea-2dd908516ec0︡
︠103f8f72-e712-4d18-a5e7-f04d946f6cd3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡de41ec05-fed1-41a2-aaf0-1f15dba3a107︡
︠4d68f45f-a4e8-45f3-a892-8b2a1f5b30d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-21">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡812e913e-1e30-4680-a919-c95f46f922af︡
︠5d1a33d0-ca94-4744-a91a-33c20e2fcc3f︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡19c23f60-f2b9-473e-acdf-603223153d16︡

