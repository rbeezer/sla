︠cfd28ce0-a9d0-41e4-abdf-8629cb8e0b9e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e6dc8586-6203-4312-a7c0-747ae356152b︡
︠4111da75-0e80-41b2-a43e-4a3c41fa810b︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d4cf599d-fab7-4bd3-ad16-c60f2512f930︡
︠51410aba-7a42-42f0-a5c1-c88c8a29c230︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡28179215-c9f1-4c20-ac7d-e3660e038d5b︡
︠861b096c-d1c6-492d-a911-8fc16cd74f9e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡c24de575-246e-4bf1-a982-a1163821f709︡
︠5cbaaa01-f265-4015-a1ae-45f5b3de4d54︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡6b125bc5-db73-4185-a6a0-5e5441810cf6︡
︠151277d3-dbf5-4e1d-a488-5d7a2bcadd6c︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section EE</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡371499c7-d92c-4e1e-ac66-4b3c65730406︡
︠13e388c5-f9e2-46d4-a49a-be6fac420570︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Eigenvalues and Eigenvectors">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Eigenvalues and Eigenvectors</span>
</h2></section></div>
︡b849bc18-1110-448d-a9d7-486a717c371a︡
︠7d3c7e99-6ba8-4bf1-a98e-1c776e9ebc5c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡7daa9193-a0e5-4994-aa3d-9490c0e5ea24︡
︠7a215c2e-fded-4287-a72a-4bfdbbea1c44︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡1cf3d4ff-3fc2-4cfa-a46c-ea8e83a6eb33︡
︠04f08c48-c879-4a48-a48f-179951df7bba︠
p = A.characteristic_polynomial()
p
︡fcfec7b0-f886-423a-aa73-a8a32f5fedba︡
︠7a6792e4-3ddc-44ff-afa7-240c82cd1bac︠
p.factor()
︡527b90e7-5152-4d92-ad9c-4b04896468f0︡
︠552c0cdf-3209-45e3-a7bc-407540eb4434︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡58a75a32-a74a-40a9-a315-0558aa895dd8︡
︠221ca67e-915e-4c68-a5aa-ba002aab3f81︠
A.eigenvalues()
︡8b4a7e1e-ca02-48c8-a123-bddbd068ba84︡
︠b1ffb7ec-5a75-4df1-a504-9c177f7d7370︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡83182cf0-94b0-4a80-ace0-07c1f40618a9︡
︠83cabf6a-00fb-4094-a052-16ae8929041b︠
(A-( )*identity_matrix(6)).rref()
︡dae9499b-39b3-45cc-a9d2-ce87c10fa13c︡
︠c06aab43-78c3-4b1f-a7bc-a7b3e84f7e1a︠
(A-( )*identity_matrix(6)).rref()
︡adb185cd-9456-4708-a773-32bf59799e8a︡
︠928431a0-e343-4ab4-a22b-56e053acd4b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p id="p-5">Use a basis for the eigenspace to create eigenvectors of <code class="code-inline tex2jax_ignore">A</code> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡f4778b93-b760-4b0b-af3e-b8599ad47a83︡
︠f877f029-3e1a-4ecb-aacf-988e119f619f︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡497c07c3-0022-4b1e-a7bb-743f351c47dd︡
︠727ee86b-b7ce-498f-a80a-37f762c7f0fd︠
B = E6.basis()
B
︡e6055eec-a937-48d0-a750-29820f5c74d6︡
︠2bd2131f-fb93-4321-a397-3c0ce1b4e29b︠
v = *B[0] + *B[1]
v
︡9b76e9af-9ab3-4ee5-af1e-65b72a8de6f7︡
︠2939013a-0c5b-4f3a-a43c-392f049817f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡f1b2bb3e-64bb-40ae-aaf1-73b92cdb5f34︡
︠126c5179-0ddc-49e6-a796-90959b17767a︠
A*v
︡a8d1522c-b3a9-4f37-a6b0-d516ab2b392a︡
︠4d31e841-404f-4943-a1be-2844fef2a2cd︠
3*v
︡c0af2886-9c6e-4c02-af2d-e46285187ca3︡
︠974376cf-d5c3-4384-a686-36b994fbc676︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Here's an easy check:</p></div>
︡a1ee5541-4160-45a9-aa01-148cd20ddc44︡
︠3e61db72-cc43-4dad-a64d-85112f32d0f1︠
A*v - 3*v
︡530c5d7c-0384-475e-a4c3-15936b2aefbe︡
︠1111d7f4-3f8c-44f2-a34f-76409bcc5ac1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Can you make more eigenvectors?</p></div>
︡9d2aff2f-46fd-423d-a571-5e79f05bdb69︡
︠cf7ea7ec-6226-4f5a-acb1-e0059f6fb3a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Eigenspaces, Eigenmatrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Eigenspaces, Eigenmatrices</span>
</h2></section></div>
︡d6154bd2-845b-4a50-a42b-60b6555c400f︡
︠2d533af0-d842-43f8-a33a-f9bb0115d66d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Continuing with <code class="code-inline tex2jax_ignore">A</code> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡58bace5c-f244-4573-adb7-8b13614871ed︡
︠f36ae383-f864-4cbc-a087-713849a911a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡fa36429d-595b-4d27-a920-191426edf0fa︡
︠0e44487e-6d7b-484e-a0e0-0fa14c83a739︠
A.eigenspaces_right()
︡14769cf0-a5d1-4166-af64-074a9971c190︡
︠ab521ee1-f96d-4a83-a18a-582a3b3acfc6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">The <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <code class="code-inline tex2jax_ignore">i</code> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <code class="code-inline tex2jax_ignore">i</code> of the first matrix.</p></div>
︡f7159238-332a-40d3-a3eb-e340d8c0290f︡
︠f0605029-96cb-41c8-a406-0ea5f7db8f49︠
A.eigenmatrix_right()
︡f3953f56-8fd4-4ae1-a321-93f48fb5a45f︡
︠e428967f-d0ea-4598-a6cb-76f7a766c1b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <code class="code-inline tex2jax_ignore">C</code> next, but was not the case with <code class="code-inline tex2jax_ignore">A</code> above.</p></div>
︡0963209a-06af-4109-aa66-5ec457cce9d9︡
︠be32163a-031a-432b-acc1-32f0757326cf︠
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
︡08d4bfae-9a2b-455e-a02a-25d2647d8a45︡
︠94e78962-70d9-4b2f-a932-45827e7fcf90︠
C.eigenmatrix_right()
︡5343bcc2-f43c-4dff-ad92-fd88f067036a︡
︠3cd7f94c-c40f-41de-a0b7-3b5c34cacdd2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Fancy Footwork">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Fancy Footwork</span>
</h2></section></div>
︡70e58efd-ab1a-4a28-a833-f6f4329fd5da︡
︠84b7a459-1043-4be6-a379-7707c3a537b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡245dbf11-832d-46dc-ad13-69a6069acd18︡
︠d3c31823-ab7d-49ea-a5bc-815385a207f1︠
D = random_matrix(QQ, 10)
D
︡fc5c0752-a0e2-4d70-a8cb-55da950470b6︡
︠2b38730d-6be4-4dcc-ad59-9af658b5c268︠
p = D.characteristic_polynomial()
p.factor()
︡993d2b02-87d7-4cb3-a888-223188a3d664︡
︠e0e2d0de-3651-4d1c-a195-ab7dd05743ea︠
p.roots(ring=QQbar, multiplicities=False)
︡7db6f87c-6a3b-4c1d-a926-ec26a06f7a25︡
︠5a210298-e022-4cf3-a986-f632dd34daff︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡04a25b4f-33f6-46b5-a94d-0443721a6e55︡
︠e5a8803d-f71f-4d7b-a210-01555d768e5d︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡333dbbef-8e69-4d40-a972-a73fd9d50535︡
︠36964512-4a1b-43ef-a486-62ea2b400453︠
p = E.charpoly()
p.factor()
︡a8a3ff80-2da3-48e2-a72a-e9dc408808d6︡
︠c7f7be63-f809-4b98-ad1a-8f46b97328cf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡e97e02d7-6cf7-46b0-ae91-920d8c60088d︡
︠876f5723-e8fd-4f59-a032-1c42adf1dfa6︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡d2d323a4-68c6-46cb-afcf-2ec706508302︡
︠9d4717ac-b157-48b4-a4b0-3ee05f6bfeef︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This is such a common operation, that Sage has a shorthand method for the <b class="terminology">Factored Characteristic Polynomial</b>, namely <code class="code-inline tex2jax_ignore">.fcp()</code>.</p></div>
︡17d6eed9-a8bf-403b-a476-4b53bb226214︡
︠22cf8bd5-57d1-47e4-a22c-977ea39d50f6︠
F.fcp()
︡428111cf-6274-43e2-a804-49cc86f24524︡
︠c7648755-6c8d-40bc-a33c-88645fa51ea3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Nothing short of amazing!</p></div>
︡36b9b311-97d1-45ec-a110-e995de58367e︡
︠aa554095-22d0-432e-a040-13ab989e1d59︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type" alt="Section 4 Numerical Matrices">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Numerical Matrices</span>
</h2></section></div>
︡cf31582e-d40a-444d-a352-476f2f8ce993︡
︠252677e9-5ce6-463b-a471-6b8cbac36ad0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">If we use <code class="code-inline tex2jax_ignore">CDF</code> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡ef606d85-7e16-4589-a0c0-12caf84cbb78︡
︠c5826e0e-47d5-4d2d-a729-84c4ecd398f0︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡1b69ec8e-ac67-413a-afbc-83158f253bd2︡
︠e84ffe21-3ea2-4f64-a02c-d00360273a59︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡632a3185-2b4c-4e33-a346-f26f5d08543a︡

