︠7046d733-b6c9-431d-accc-a7bd1ae92c52︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡dc213096-34d0-4e01-accd-865447e30105︡
︠3e26f569-b9d8-49c9-ab85-91ce51545656︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡b94df425-defb-4797-a040-6d13c742ba81︡
︠04a41984-f62e-4197-a9ac-90aa46289d31︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e3688721-c27e-4088-a813-5b3f57680f54︡
︠73d02d00-6146-4d9d-a38c-6f61a7b4fe31︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡7b54b82c-88dd-4fa6-adef-a4f06982d701︡
︠98cfd870-4092-4d8c-a46b-300316c98919︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ba28af01-f518-47f1-a437-f780a9663f04︡
︠8bfa39a4-baad-422c-a46f-c66460dd70c7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section EE</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡553407ea-c946-4678-a3bf-2769cda9a1a7︡
︠90cc4c43-70db-4632-af7e-e965322dcdf7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Eigenvalues and Eigenvectors</span>
</h2></section></div>
︡49716cea-f5ac-4010-a307-2f1845b73742︡
︠f8c69228-d1d8-4ee9-af1a-6398ced751f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡3e205c27-4f91-478f-a171-be5562449a59︡
︠4986ad3c-57cf-4947-a96e-b2d0842c8c6e︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡6b8f22d5-f3dc-4270-a917-8c95d190d2d4︡
︠140a32c1-7c44-486c-a90d-09a9e7a888b5︠
p = A.characteristic_polynomial()
p
︡dcae7e04-f704-4c8b-a92b-6240c387c007︡
︠6e40cbec-fe4f-4218-adab-91ee2a2a2eb2︠
p.factor()
︡610a2d61-a5fe-4520-ae0b-9ac78e2b9494︡
︠7f68a850-9f59-4ebc-af9d-a276a05cbe14︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡38490e15-eb54-453f-a139-edc6466a3194︡
︠6cda5d97-3838-4c8c-acaf-68c2e185bc64︠
A.eigenvalues()
︡0c0d76b0-ee91-4669-a323-28cfab130cf7︡
︠0041eb7a-c685-47fb-a12e-557152d65e25︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡636a456c-f228-48a7-a3ba-20f924b0b1fd︡
︠751df535-2385-4b0f-a24b-d7cc0f1c0ddf︠
(A-( )*identity_matrix(6)).rref()
︡a44c2426-a492-4a43-aa78-64f21023c20a︡
︠2be671b9-75e0-4885-ac3c-4914c24e5116︠
(A-( )*identity_matrix(6)).rref()
︡b31aa8b6-23b1-434a-a80d-5576a38f2e03︡
︠4c7662e2-8154-4298-ac19-a7e1d9468758︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p id="p-5">Use a basis for the eigenspace to create eigenvectors of <code class="code-inline tex2jax_ignore">A</code> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡a942fb5e-de02-422b-abfd-5a44b2d0857d︡
︠d27257da-5a85-4db8-a868-6c3b0fddf627︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡40ab2f20-a8a2-4e7e-a705-f613112ff252︡
︠99245547-5e00-41e8-af58-45f6818a17c6︠
B = E6.basis()
B
︡960cb51f-d7ee-47fc-aff2-8478a0a2aba7︡
︠24e20981-9697-4406-a106-39ab15bb8672︠
v = *B[0] + *B[1]
v
︡e96cc765-9fc2-4612-ad23-36ce2e3eac41︡
︠e2b5f8d5-d659-48ba-ab9d-ec4bb69f43b9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡5ac10b9d-1636-40c2-ab7b-968d134b29fe︡
︠258e68af-5b59-4265-a41d-0a3885cc1f50︠
A*v
︡d8556cd1-b3d1-4cf7-a249-f433db8a8a9e︡
︠a760cdca-e8eb-49ab-a0df-9c4df298c125︠
3*v
︡fdd6ea3a-4123-4dce-a8cb-867d47fdfbf2︡
︠1ffe5d88-8dab-4077-ae04-99a16e85c81c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Here's an easy check:</p></div>
︡b2ca0189-a165-4c6d-a35d-8e720d193e24︡
︠ad668780-0316-49ed-a612-4a1bc28ebcdd︠
A*v - 3*v
︡08b6f3d8-4db5-4454-a1b6-4f05bd74b309︡
︠101c60f4-9425-4a7a-ae85-4c54201a4dd5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Can you make more eigenvectors?</p></div>
︡6e58bc9b-02f3-479a-a173-7c0c02d1d2fb︡
︠759de597-0aa0-4d29-a831-bbdc8df5fc8e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Eigenspaces, Eigenmatrices</span>
</h2></section></div>
︡7f41c366-b705-47e7-a17b-2260eeed4dac︡
︠c1c1384a-ff1f-459e-ada5-8d8fd6db429e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Continuing with <code class="code-inline tex2jax_ignore">A</code> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡e50a733b-e2bf-4219-a0e3-660e5d539952︡
︠8489ffd3-bb57-4b88-a496-7fd8e3636fdc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡261af09d-3489-4b41-a48b-a0a889bfc2f9︡
︠e1f0bf05-c4a5-4d69-afa1-a525dbe8aab9︠
A.eigenspaces_right()
︡49b4964a-c0e6-45bc-aeb7-05c2bad9384e︡
︠298dd141-c02a-4786-a461-b778a228c500︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">The <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <code class="code-inline tex2jax_ignore">i</code> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <code class="code-inline tex2jax_ignore">i</code> of the first matrix.</p></div>
︡32ab08d4-9a5c-44c4-ab0b-dc244d7753c6︡
︠408ec96a-d042-4c9f-a14f-c1cf60cd7104︠
A.eigenmatrix_right()
︡755032aa-c7a1-4a7a-a98f-840437504d15︡
︠29a8ada4-87c2-486a-a3f2-2873dba3be0d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <code class="code-inline tex2jax_ignore">C</code> next, but was not the case with <code class="code-inline tex2jax_ignore">A</code> above.</p></div>
︡337db2b5-64d3-4769-a199-4b2bef783273︡
︠fb679295-7095-430b-ad14-75091f988cbf︠
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
︡0ba6248b-90b2-46f2-a1c4-63a6cc565d20︡
︠d2b89ec2-9535-4794-aab0-f149715d7aaa︠
C.eigenmatrix_right()
︡b8d6065c-9e1c-4496-a841-932ecaf277c2︡
︠17aeeb53-7e29-4b62-a1f6-2995760788e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Fancy Footwork</span>
</h2></section></div>
︡afd5ec03-0822-41d9-a4e9-b1257ab714f0︡
︠9a070e31-2394-46a1-a0e0-9a1cf86a08ff︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡99a90a84-ca85-4fe0-a0ef-089248ab3b42︡
︠adb56c0e-0c98-4187-a295-1aeac227e522︠
D = random_matrix(QQ, 10)
D
︡8d0327f3-60ff-4918-a031-64b4f872f582︡
︠80f94204-5645-45d7-addb-f4fa8f3f125a︠
p = D.characteristic_polynomial()
p.factor()
︡4ea47e67-3cd7-4235-a912-4074bf3ef514︡
︠f63aaa91-1cdf-43f3-a994-cd432026e2cf︠
p.roots(ring=QQbar, multiplicities=False)
︡6b5a604f-16bf-46ff-a988-d562892af1cb︡
︠1377dd72-d989-48e8-a771-05667efa9fb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡ada247fc-ac52-45d1-ae49-04e7b66b10ad︡
︠64a07f86-b230-459d-a782-097f0267d778︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡5edfe4e7-aaae-4af8-a871-b7a27b5e236a︡
︠bb88b6c9-e748-46e8-ae7f-f2794e5ad7d3︠
p = E.charpoly()
p.factor()
︡18f90a0d-4e48-47a6-af9d-e9052548f1fc︡
︠5154a6eb-32a8-4a13-a10c-ff5f484904b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡00155cc4-8f62-4813-ab34-823e287718bc︡
︠9cda237e-7fee-426f-a623-aa6e9960079c︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡4282da55-8c57-4a7d-aad0-d8b464dc5d4f︡
︠9812bfc0-45c9-4d70-aa2e-bf663cb090ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This is such a common operation, that Sage has a shorthand method for the <dfn class="terminology">Factored Characteristic Polynomial</dfn>, namely <code class="code-inline tex2jax_ignore">.fcp()</code>.</p></div>
︡f861a207-24df-4da7-ae59-c0836c01d92c︡
︠725e4f04-7394-427f-a954-225b5b85d6f0︠
F.fcp()
︡27375776-bf95-44cc-a351-784d498df63e︡
︠765aeb16-1d5b-4397-afdd-15652afb8e1b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Nothing short of amazing!</p></div>
︡d92331e5-803d-4b67-a364-0796db1c6ab8︡
︠5918d5ac-b2ce-4f85-a7bb-cc363015d8f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Numerical Matrices</span>
</h2></section></div>
︡1523ef98-b4a8-43a1-a91d-4e984d8526e2︡
︠f072352d-dd18-4652-a7e4-432eb6c4ceab︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">If we use <code class="code-inline tex2jax_ignore">CDF</code> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡19b8cfee-cccd-4422-a7a1-bf4def4a308d︡
︠ba772461-22de-4021-a39c-45c83a874b8d︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡9371aa51-b839-473b-a964-5b923ccb407c︡
︠e1053bf8-cb10-4483-af2a-485ea9a64f7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡b5dbb17b-a36b-43b4-a7a6-1ee7d908f577︡
︠12dfe805-4a9a-45d5-aa40-06ffdc8d482b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡f3ed3d53-39ec-4449-aaed-bf3ae077eb00︡
︠1488d0ff-1b19-4a22-a3b3-60ea0416c262︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡786f03f0-31c4-4b67-ad92-1f2f924b91e0︡

