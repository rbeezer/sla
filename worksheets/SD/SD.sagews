︠5f1886a7-a864-40d1-aa3e-e0edf942d8c5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡11539da4-55cb-49c9-aa7d-96d84d28ff1c︡
︠43d97771-cc78-4805-a1bc-e42bc68ef8e1︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡4342cc94-d514-4e95-a3a0-0953429d196f︡
︠aa2fcfb6-39c4-4ead-a3e8-3f1926bc3c59︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡bf4ef1da-8134-451f-a34e-c8dd104dc791︡
︠ec7b977a-ad45-4d9a-a87b-80c7f910ecda︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡3b6a7f1f-9cce-4198-ac20-7a1321d41b0e︡
︠54acf1b1-05dd-44e7-adb9-d23f6603b2fb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡140b0fdc-1e2e-4b6d-a248-b2bf11625144︡
︠d59d19de-6ed8-4d8f-aaa3-256d47faa5ce︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SD</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡994365c4-4331-4b0a-aba4-ed95beda9706︡
︠5afad60a-a5de-478e-a149-526f82e5d8cd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Similarity"><h1 class="heading hide-type" alt="Section 1 Similarity">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Similarity</span>
</h1></header></section></div>
︡e27dd44d-ef2b-4da4-abb8-51bc03ef9b85︡
︠868f4548-3276-4e40-a30b-c5d81dcfd5b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡b3c43097-9ca0-4295-a3c6-f9bc1dadd738︡
︠dec92f9c-6291-43ca-a8f6-fefaa184f5c2︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡e91a249b-00e9-4116-aca5-29324e4d232e︡
︠5087bab4-6c54-4676-ac31-16b5804dd70f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="external-url" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡660edc89-0e56-42bd-a981-aa76f064d3bd︡
︠3144f207-b151-478d-a525-6dfd3fe93bce︠
A.is_similar(B)
︡90fe4f05-6c6c-4de5-aa37-fa4f88e6122e︡
︠0be0a3fa-866f-423d-a8e0-0ea5d2dc9eeb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Diagonalization"><h1 class="heading hide-type" alt="Section 2 Diagonalization">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Diagonalization</span>
</h1></header></section></div>
︡df7c01ff-b862-4796-a414-422f7024db3b︡
︠71bedb0d-bc51-4eca-a41c-96ec55c8aa4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <tt class="code-inline tex2jax_ignore">eigenmatrix</tt> commands.</p></div>
︡6b01adda-a86f-4a4c-a59d-124ff95b2056︡
︠fc2fdcca-673d-47d2-a43b-24e64d0a92af︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡9abb9976-3ee7-4c55-ae98-abd81162bf46︡
︠fd0a9a31-170f-4fc5-a4be-d5aadcb4e733︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
A
︡d20eda81-ba8b-4978-aec3-d9884640a27e︡
︠65173e1c-fc68-4800-a1fd-4d6d5b4abed3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5"><tt class="code-inline tex2jax_ignore">S</tt>, the matrix whose columns are eigenvectors, will “diagonalize” <tt class="code-inline tex2jax_ignore">A</tt>.</p></div>
︡d38eacdb-8d8f-4610-a62f-37da4268d27a︡
︠54dd3791-22fb-425c-a2cf-2060bb22304b︠
D, S = A.eigenmatrix_right()
D, S
︡a90774e1-5135-4d6b-aa87-9b80b4be6fea︡
︠a83b0bff-c41f-4ae6-a58e-d2a525ad40c3︠
S.inverse()*A*S == D
︡b7bf2ba1-b66c-460a-ac53-b25687c24031︡
︠3f8febb9-d603-4273-ad39-0fc554c1712b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Here is an equivalent formulation.</p></div>
︡25ab5960-3373-479a-ab6e-46d0b3585c97︡
︠7bd272ce-3f2a-4293-ac4a-a9189dbf50be︠
A*S == S*D
︡83a56282-0b12-453c-a901-4ba5342f380f︡
︠7821d845-a41c-477f-a40f-55b0ae4dd85d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡7d6ae433-9e7b-4af2-aa33-9985933d1167︡
︠fd45739a-639e-4e3d-a1d1-47adc31f1217︠
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
︡a05e6c1f-7830-4624-a431-688055465696︡
︠e3732d03-d8c0-4922-ad75-edd7e3c3a194︠
D, S = C.eigenmatrix_right()
D, S
︡877fb9cb-d93a-49cc-ac94-182ff02c3ded︡
︠16486f23-b0ce-4a6b-a734-c4de4de79248︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The zero columns in <tt class="code-inline tex2jax_ignore">S</tt> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <tt class="code-inline tex2jax_ignore">C</tt> is not diagonalizable.</p></div>
︡f5f4e531-8e25-4dcc-a84f-d03ae88df1f3︡
︠ae9928f6-975b-4c38-a8bc-89db4b4c93e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">A second consequence of the zero columns of <tt class="code-inline tex2jax_ignore">S</tt> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡78712a91-1387-4f5a-a7e6-46f124d706af︡
︠f2773a2d-b314-4a0a-a589-bcfbe2fc9f34︠
C*S == S*D
︡e376ab0c-8c09-40ba-ab02-4bf46d75a15d︡
︠641dbb8c-8189-4b94-a644-8907d755d062︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Perhaps simpler is the built-in function <tt class="code-inline tex2jax_ignore">.is_diagonalizable()</tt>.</p></div>
︡dc7f92a2-e347-4c01-a166-6ef66dec2bc8︡
︠ea559f84-2776-4f47-a05d-6bc62240e6ba︠
A.is_diagonalizable()
︡fa550e48-2609-4dfe-a4f4-16fdd2022f8e︡
︠a88fd8d2-1081-4a51-a8a1-cb8c95ea7190︠
C.is_diagonalizable()
︡f4983711-9312-44b8-a542-60eed74b1cdb︡
︠cdf653d7-57a6-49f2-a156-4c72a49f0bbd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Nearly Diagonalizable"><h1 class="heading hide-type" alt="Section 3 Nearly Diagonalizable">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Nearly Diagonalizable</span>
</h1></header></section></div>
︡78a6f0ac-8f32-45d2-a8f7-e3365eafeab9︡
︠82228133-eb21-4e8f-a00e-8f2b57a078b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <!--Style me with CSS--><em>almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <em class="terminology">Jordan canonical form</em> of the matrix.</p></div>
︡23446d69-0452-463b-a54c-4cb671e215ad︡
︠8c0c0697-0ab5-4d19-a87d-5ba12120445e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5>
<p id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <tt class="code-inline tex2jax_ignore">C</tt>.  Notice the eigenvalues of <tt class="code-inline tex2jax_ignore">C</tt> on the diagonal and the 1's on the <em class="terminology">super-diagonal</em>.</p>
<p id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡1da2ab84-29fe-4fc0-a857-6a30b52e562b︡
︠549f64bf-9e88-4d74-ad0a-464870d9e301︠
J, T = C.jordan_form(transformation=True)
J, T
︡f5595cd1-b6f4-4ecc-a3ac-de327a244184︡
︠27a81f5f-0060-455d-a187-e6618dcb21ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">The transformation matrix, <tt class="code-inline tex2jax_ignore">T</tt>, is invertible and will “almost diagonalize” <tt class="code-inline tex2jax_ignore">C</tt>.</p></div>
︡6f2083fd-20e8-404d-ad56-53cb54820b3d︡
︠5ad7a5aa-3db2-45b6-a29c-8e05a5a38aec︠
T.inverse()*C*T == J
︡7365b1b5-ce37-4182-a7bc-44b495a492e7︡
︠f6b5b676-c35f-4a68-ade4-a38572b26545︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5>
<p id="p-15"><em class="terminology">Rational canonical form</em> is another interesting version of this idea, try <tt class="code-inline tex2jax_ignore">.rational_form()</tt> on <tt class="code-inline tex2jax_ignore">C</tt>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  (Learn more about <em class="terminology">companion matrices</em> if this makes you curious.</p></article></div>
︡c4b8a7f1-eb54-4bfb-a4da-87d0d43969eb︡
︠fbfb3a22-b1e0-45a0-a0ed-a65773cac34a︠
C.rational_form()
︡f35fe991-c42b-4586-a694-43b9b2c8d9c1︡
︠3b59a333-4087-4bef-a148-68c1284f118d︠
C.fcp()
︡2c8752b9-609e-475c-a771-0d9dfc53b644︡
︠470cf6fa-f5a9-432e-a095-1a3b738d644b︠
((x-1)^3*(x+2)^3).expand()
︡883852e4-de98-47da-a6d4-cfefb6234978︡
︠15163071-af2e-448f-a4c4-28d06f0acc25︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e4b0ae02-0b22-497b-a9b8-de1ae89e26b5︡

