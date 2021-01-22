︠8c021eeb-b5ac-4809-aea9-611089efa523︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡cbfcd1bb-d617-4397-ad82-6e38fb1dbc3d︡
︠ff9fc708-3df4-442e-acf6-e641e4d018c4︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6c40b17b-9a88-4edb-acab-3918a0c80e1d︡
︠3798849f-f398-4b86-a750-3895145dd6ce︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3f6d7e11-e147-4a00-a075-1aeb0f05ddc9︡
︠477d78fd-914e-42c1-af76-99f28e8640a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡bf72cfbb-c4c1-43fd-a4e5-a7eaa783dd47︡
︠ef76235d-f11c-425b-a09a-6324ddb60935︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡114876cc-4ce6-481b-a414-e780c6d8ce10︡
︠3228baf8-7345-49d6-a418-90f11b8f45d5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section EE</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡51889429-c9d1-4e7f-a5c1-d51d729f2d4f︡
︠2a1b2af4-4ce1-4dc8-ac24-dfafc1250425︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Eigenvalues and Eigenvectors</span>
</h6></section></div>
︡45f51200-64c4-46a1-af74-453e40f660b9︡
︠6ff54074-0e9d-43f8-a5ef-934d18d1f42b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡d8acdfd5-4e4d-4b7d-a3dc-26f731f12f54︡
︠a3c50a4d-08b4-467c-a3a9-0d0f4304534a︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡7ed43de8-bf06-436d-a0a8-aa6aabeb03e4︡
︠d52b9698-e48f-4bc6-a9c1-26b8164f142f︠
p = A.characteristic_polynomial()
p
︡805bbf25-8190-405c-a7e9-810491ad0c23︡
︠ca315e17-398d-4992-a601-f93fdc18a15d︠
p.factor()
︡41783d64-5add-4877-abd8-cd10dfce870d︡
︠45fcd294-6ee4-4c6b-a429-cf7ef4eb3634︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡4894466e-bdd9-4190-add2-7a1e8136d6d0︡
︠a2946ebd-d6ba-40d3-a1a1-31b5f472b499︠
A.eigenvalues()
︡44be82d3-0a9b-44a8-a7b3-9f54558c8401︡
︠d5683eb1-2bbc-47f6-a071-400956ee2722︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡9f8f8bd3-cff8-4c77-a27f-4bf455a43db5︡
︠f4573d31-1010-49d7-a00f-04bf90445810︠
(A-( )*identity_matrix(6)).rref()
︡d153990d-a2dc-427a-aa8a-a8e6877cbc5c︡
︠d3d367c6-4782-43b9-ad61-819671dee8a3︠
(A-( )*identity_matrix(6)).rref()
︡5763bca7-3eec-4028-a90f-a804f75c5450︡
︠7a8ee3a8-ae69-4a7c-a30d-2b6205951fa7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Use a basis for the eigenspace to create eigenvectors of <code class="code-inline tex2jax_ignore">A</code> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡f127f0ba-858e-4f36-ab66-982fa2448633︡
︠d34fb4f6-e7b6-46ba-ac70-3086f393729b︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡57e96ae5-0cdc-4347-ad0e-e4e6aea4126b︡
︠db2c5973-e70c-4340-ab11-90587071493b︠
B = E6.basis()
B
︡4177ed05-1fd1-4b05-acb7-d573ee3608f4︡
︠346bb48c-a9b8-4a78-a034-81a049f7ff0f︠
v = *B[0] + *B[1]
v
︡343afef7-b907-41be-aac2-f44a48430330︡
︠27451340-b0ab-47c6-a672-967d1c550583︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡6bbb1cf6-da67-46e3-ad4a-fd17a2307360︡
︠7cc37ef7-4d1b-4479-a84e-34b5c67f6f3d︠
A*v
︡0b9de1be-80ba-4c02-a587-4cbf18698d9b︡
︠aa747653-5e30-49f1-ab5a-296e97601eda︠
3*v
︡a842cc82-fe12-4fa2-a067-a9108a8faae8︡
︠4909bd54-f421-471c-aa22-1cc2d4d64802︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Here's an easy check:</p></div>
︡05b1f6e4-be9e-4f1f-acb2-ecebfc0d2453︡
︠66917885-d436-4237-a2f2-4ef39ffad2e2︠
A*v - 3*v
︡659f7070-5449-4b6d-a39c-6eb51551f23e︡
︠593e9af0-a55e-4e15-ac4f-8ad40f960984︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Can you make more eigenvectors?</p></div>
︡7edad75c-7f1d-4e0e-a4c3-45d19e1341cd︡
︠54b3e9a4-6238-4028-af75-2ba0d4ee8205︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Eigenspaces, Eigenmatrices</span>
</h6></section></div>
︡059b9853-cb60-4363-ac5a-176c73162a92︡
︠f989521a-5e6c-4ea2-a168-c8f24766e907︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Continuing with <code class="code-inline tex2jax_ignore">A</code> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡b004956b-fc96-4870-ab96-36f393afa88b︡
︠f4bf955f-04c9-4a51-ab0b-13106a41afa3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡a98591be-1b3d-44e2-a693-1b62cdd1e708︡
︠bb231c4c-b57e-43cd-a626-93206fd40cc1︠
A.eigenspaces_right()
︡57c7ad4e-af41-4e8d-abef-28349a46e43a︡
︠68230c04-ba30-4c18-aad7-af0d498806d3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">The <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <code class="code-inline tex2jax_ignore">i</code> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <code class="code-inline tex2jax_ignore">i</code> of the first matrix.</p></div>
︡14b37c08-0b34-4bf6-a493-c33c1869160f︡
︠91355a15-3216-46d5-ad2f-1e34b4d1de7e︠
A.eigenmatrix_right()
︡d10175b9-bfcd-453a-ab0d-a1cd67239021︡
︠ef2e0a4c-40c0-4d13-a8c3-57515c97f272︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <code class="code-inline tex2jax_ignore">C</code> next, but was not the case with <code class="code-inline tex2jax_ignore">A</code> above.</p></div>
︡36165209-f49b-457d-a8f9-c50265efde25︡
︠05b2b05c-a414-406b-adfa-7c08e6dc6bb9︠
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
︡0ceceac3-7788-4b8f-a66f-1db159836ff2︡
︠8fe7bc18-08f8-41b1-a018-035b4b4dfbce︠
C.eigenmatrix_right()
︡d5ebca8d-2862-407d-a28f-a82047b94b41︡
︠a268d225-05e6-47ee-a517-4b06b4e7d222︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Fancy Footwork</span>
</h6></section></div>
︡3d4a52c8-8dd6-4355-a2a6-ae1a5df34d67︡
︠0a444a71-2fe0-4625-ab40-1ef39409857e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡d881cdb4-ee3c-4f9e-a553-5725ac9b521d︡
︠1e59f26b-65aa-4194-a0e9-34159b137758︠
D = random_matrix(QQ, 10)
D
︡467a07c7-23cd-4ee6-a3e5-d2ae73a9710d︡
︠a542059d-cc19-49f8-a027-6f90d148abab︠
p = D.characteristic_polynomial()
p.factor()
︡951d7220-ffc0-4960-a162-8c22c0318ed2︡
︠a68b3fd6-fd6c-4ef2-ae08-0853a23e3cc0︠
p.roots(ring=QQbar, multiplicities=False)
︡f6672a60-16d7-42b6-a5a6-eaf3ea5189e5︡
︠9dbf5eab-eb2c-4258-a8a2-f8decb92d1bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡74924e0e-afac-4bd1-a35c-555241ed3bff︡
︠763088f9-7991-454e-a784-3e981dafbeaa︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡d20129a2-31bc-4211-a199-5c7f58d088e3︡
︠2c53e8c8-a0a5-4cd7-ade0-74de32713f91︠
p = E.charpoly()
p.factor()
︡3ce8fd0c-6ac0-409d-a77b-8e05d3755a5e︡
︠c8bb0a91-7fc3-4fcd-ac44-8c3810c9514a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡012bc365-4d40-414d-ae12-39e6206f9c0e︡
︠70faccd2-12f6-430b-a1fc-326198207bc8︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡9499e55c-87f7-4e38-a948-67ac945b4d71︡
︠615fa45f-0d60-4543-aee7-64f10856493b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">This is such a common operation, that Sage has a shorthand method for the <dfn class="terminology">Factored Characteristic Polynomial</dfn>, namely <code class="code-inline tex2jax_ignore">.fcp()</code>.</p></div>
︡a9c0964f-65dd-4522-a910-1750959fcd80︡
︠93a543c8-33e0-4033-a3c4-3dc8e6e75b5d︠
F.fcp()
︡be154580-eb4c-4c40-af7d-3bb049631be7︡
︠995bea17-af3f-4cf3-acfb-a3753cfaf15e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">Nothing short of amazing!</p></div>
︡8f7ea68b-e3b2-4281-a651-1f4957542558︡
︠3d7bc214-e07a-4292-a4f7-5179bc100366︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">4</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Numerical Matrices</span>
</h6></section></div>
︡b9434066-446c-4f96-a1d5-9270c2dd3e19︡
︠4d381897-eec5-4abe-a0cc-66ed7b04942a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">If we use <code class="code-inline tex2jax_ignore">CDF</code> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡e78109a9-187d-4e29-ad26-98c863378cbb︡
︠7920b3a5-cbe4-49d6-a2a8-8414d880f1db︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡c54f503f-6fb5-4443-aa7d-3f244fcd0cee︡
︠7b3cb9de-93e4-4929-acd0-a00c54c22ce0︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡a6ce288f-7135-46c8-af85-0350fb5cd79c︡
︠842524da-45c7-4a24-a32c-820e3f98c705︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡3995ecac-7e13-45c5-aaf7-78a77d716387︡
︠c093d11e-20f6-47a6-a8ad-dc8c78c8e95a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡32ad57e7-6076-46f0-ac7b-a5731fcd7a7d︡

