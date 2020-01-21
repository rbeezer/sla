︠7bba6cdc-ecc3-44c1-aea6-66393a2de873︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0feba577-264f-498b-aa75-1dc47ff9ce24︡
︠1240ee65-58b9-4752-a3f9-91756e45813a︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡65da5b8b-1e3c-47b1-aae1-373ad982f043︡
︠ba895d5e-86cc-4248-a4e6-61e9bc34e252︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡61dea2cf-056c-4291-aadf-040fecb10a46︡
︠620602d3-37ee-4090-aa0c-0828d05703d2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡734895a6-9de8-4be1-ac81-89ab17b7fcac︡
︠e203aa95-122f-4bed-aca6-e3f8f00a7062︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡d55d9082-5957-4805-a6d0-cc4b53c5e464︡
︠73ad13d9-522b-49bb-af19-0d549a8606a6︠
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
<div class="date">Spring 2020</div>
</div>
︡b295fa9c-3ee6-4a81-a682-f9f4e9e6feda︡
︠58dfec97-9d68-4301-a479-7627a0097084︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Eigenvalues and Eigenvectors</span>
</h6></section></div>
︡add7cc46-3d4a-457b-a6c2-0483b33bcbb5︡
︠f62ddf92-6dfa-4752-a3cf-5d3e0e14aef6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡3ec6ba55-cb2c-4692-a8de-72ba1b92031f︡
︠95e6ba01-fcd1-493b-abc8-93b5ec17f1b1︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡146fa19b-3880-4a14-a5c0-e649c26ea605︡
︠71ad05f9-0228-42ca-a727-70ebabe19879︠
p = A.characteristic_polynomial()
p
︡dea8badb-4ed6-4702-a174-9e57a0281c08︡
︠5e6f72a5-de3a-45bb-a8c2-d612db2043c5︠
p.factor()
︡c2422b5c-02b4-4d1f-a89c-b62c808b0cfd︡
︠1bf5e113-e16a-463b-a5c5-17b3343cf48f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡2aa10831-c232-4c95-a8e2-df983dd79cc2︡
︠ced6fdf3-ec52-4e2b-a4a9-68900ddd47a0︠
A.eigenvalues()
︡97e7de4d-13a7-4589-a0d3-a3b43c11a685︡
︠62c59a4d-8612-4d6b-a668-a0c64f261dc9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡33c096ad-3335-460b-a161-a126776ad789︡
︠0bcdb536-37a6-4c07-a72e-9dfb36291f09︠
(A-( )*identity_matrix(6)).rref()
︡9146f0c2-7f91-4662-add5-b62b2524f340︡
︠ce114011-380d-4a73-ac40-2074c99ee913︠
(A-( )*identity_matrix(6)).rref()
︡9d1bf6c0-7f98-4c3f-a004-02587121f0a1︡
︠33f5eebb-e3a8-4c7b-ac7c-08f606738732︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p id="p-5">Use a basis for the eigenspace to create eigenvectors of <code class="code-inline tex2jax_ignore">A</code> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡8767c568-04ca-4d82-a849-5515b2c354a9︡
︠630dad21-6253-4d2b-afb0-916a61d2536f︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡cd2dadbd-e1f4-44d7-a0c3-15470b9eee15︡
︠dd30bde6-bc8b-41d8-a9d5-ceb16ccfabdb︠
B = E6.basis()
B
︡0b93b419-bc63-4780-af1e-5dc0f3cb266f︡
︠27aca51c-fc86-400e-a00f-f5dc6cf2819f︠
v = *B[0] + *B[1]
v
︡0c6a8109-d056-4656-a566-55c312f0582e︡
︠72aed30e-cde1-4457-aaae-103e350365b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡43af1821-6ef5-403b-a8e5-6069e9fec547︡
︠d9a89c1c-e8bd-4db1-a83f-eaf53ee3ca81︠
A*v
︡26bdf490-078b-4567-a6fb-6e563942c1c5︡
︠3fbecb36-b3d4-4f3b-a7ab-21a87d1c0eec︠
3*v
︡31cf08a3-e67c-4a70-a6ea-11bba39c09ae︡
︠6e03d1b7-4adc-4683-a6f2-104dce06a105︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Here's an easy check:</p></div>
︡0730a116-9607-427f-a6ee-8ffcccbd35e4︡
︠becef601-d98e-40b5-a014-fa3f60b2ef7d︠
A*v - 3*v
︡42c01b71-d4a6-42b1-a8b2-cad094156f5e︡
︠d9099251-425e-4989-aa15-ddfae8efe5f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Can you make more eigenvectors?</p></div>
︡3cc4566b-7aed-4976-a317-8f57a3083ee3︡
︠21fe554c-1b6f-4906-af38-6b8c3204a339︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Eigenspaces, Eigenmatrices</span>
</h6></section></div>
︡75a73fd8-be42-4dd2-a4d6-d3250670a24d︡
︠bb252650-e1e3-44c0-a61d-de1f425b20e7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Continuing with <code class="code-inline tex2jax_ignore">A</code> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡d920f575-6664-49b1-a912-7f19e5b41e40︡
︠52a839ea-f406-4991-aa33-db2e514056fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡74d1c1bb-bafc-4096-a13a-4057fb84beba︡
︠92f73c8f-7397-40a0-a6c4-015685109df5︠
A.eigenspaces_right()
︡89880c48-bcc5-44cf-a52b-93cfa54c6ea5︡
︠33ebbe80-73d3-482f-a872-31500054db27︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">The <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <code class="code-inline tex2jax_ignore">i</code> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <code class="code-inline tex2jax_ignore">i</code> of the first matrix.</p></div>
︡16a026fa-76d4-4966-a8ee-a2f02f184e47︡
︠66d16076-afc8-436f-aafd-9af8a28cacbf︠
A.eigenmatrix_right()
︡41522c2a-2d9f-45d5-a475-21f29a426ff1︡
︠e3245517-f458-43a5-a9fd-f1fe3888be7a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <code class="code-inline tex2jax_ignore">C</code> next, but was not the case with <code class="code-inline tex2jax_ignore">A</code> above.</p></div>
︡06e3b48c-c701-404b-a6eb-4dd3b1c39721︡
︠2281535e-0151-4266-aed5-a1285e912395︠
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
︡5c7ddd13-b251-4387-a965-e1619b02d267︡
︠8b3f91cb-47da-4912-a0a8-69acb38b66ec︠
C.eigenmatrix_right()
︡d7816223-d7ba-424b-a456-db078ca18177︡
︠e5e66599-8613-4138-ad7d-3494c117298a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Fancy Footwork</span>
</h6></section></div>
︡06ffd646-0cd1-40e5-a8bc-6f104d1544ed︡
︠ff4ff253-8506-4704-ac9f-90fb03828d77︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡a67f561b-9a19-408a-a444-4e439572700e︡
︠7b5eab5b-6e57-4850-a3a5-7f3b3d0a08a0︠
D = random_matrix(QQ, 10)
D
︡72bc1676-1e57-46ec-a617-b86e49c53cee︡
︠c50811e9-808d-47eb-a44d-b061fbab0e7e︠
p = D.characteristic_polynomial()
p.factor()
︡d44ed6fc-f8d8-4646-a29b-f4b56a0161fe︡
︠0d24b0ab-ca3a-429e-a9b7-5bc012b23233︠
p.roots(ring=QQbar, multiplicities=False)
︡04029b34-60e9-4a13-a9bf-10ad1bfdd3f1︡
︠6f662f25-3852-41f4-a59f-4a0e71a7f8ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡a1e0700a-542b-464b-ab94-bdebc5d7dc08︡
︠ba99b19c-bf0d-4b61-a62b-bd9986f6dc2e︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡4e8e74f1-0a10-48c7-a939-5e7e80476249︡
︠09798fd7-1e22-4eaf-a643-09278a8c2ee7︠
p = E.charpoly()
p.factor()
︡7e1f79e5-0f32-422d-a191-59b71319f48e︡
︠b0dcf55d-a6de-49f0-a619-7632e55ff547︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡3f70c662-4082-4e11-af73-9fad182781cc︡
︠90c11887-bc83-4e75-a06d-40cede605f22︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡cb38c414-cc14-400b-a512-252f3fda0292︡
︠55d8eadf-f9c1-4ec1-a922-b57e4be15e4f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This is such a common operation, that Sage has a shorthand method for the <dfn class="terminology">Factored Characteristic Polynomial</dfn>, namely <code class="code-inline tex2jax_ignore">.fcp()</code>.</p></div>
︡0a5e2380-389f-497c-aa1f-dd45b90ab68f︡
︠589a6cdf-d076-400e-acb0-b8e0e99e444c︠
F.fcp()
︡4a5e4cb2-b833-4f33-ae0f-ec8cc6664aa9︡
︠7f3cd888-b40e-47f2-abe3-acf29c802dbd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Nothing short of amazing!</p></div>
︡62dafa28-3dc4-4b43-aef2-19e1c8d49024︡
︠e87b2765-f92c-4de0-a1cf-3e92f5bda4dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Numerical Matrices</span>
</h6></section></div>
︡8c50877e-d68f-425e-a37a-2b9bd8195cd3︡
︠960e686d-634e-4274-a0ac-bd7595dae37b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">If we use <code class="code-inline tex2jax_ignore">CDF</code> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡7017e8f4-668a-44b2-a9cd-58acd32be0f5︡
︠c65de46e-9c41-479d-a939-68105f47a289︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡840e2e28-db41-4dcb-ab5e-4b76cc50403d︡
︠9b1a948b-c571-475d-a313-25e9cb62cb2f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡8ca964df-0a58-4cdd-a90e-c24bc17233d6︡
︠253dfa1d-a170-493d-a7de-6a1b6dcdf00d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡733b1252-f047-40ea-ad58-bc2d78a36a47︡
︠cb7a91c6-1db7-4ae0-ab8e-a93b818439e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡fb365d82-3aff-41ad-a256-10f4c854c8db︡

