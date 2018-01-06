︠f7059d18-473c-452c-a78b-f738f78e4856︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡84d8a75b-fa23-4675-a3fd-ee5275a03f88︡
︠50c396bf-2a94-4e0c-a33c-12b742de31db︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡a3c766d1-50cf-45af-a2e2-e04979c48f56︡
︠bf986fe4-145d-43a8-a3c6-6b6b4e413d18︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3d8d5fc4-4e8a-4bc4-a3f1-a5c011f63234︡
︠1a03db8a-4556-445d-afae-af888e1ee166︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡a80acd64-8bae-41e3-afed-d8c51532424b︡
︠8e48906f-5fbf-4dde-a1cc-e95bf702a55e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡0dc4665d-6ad1-4abe-a8ca-5b4b63276ccb︡
︠bd9820e7-e42c-46d7-a554-0bf46588de59︠
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
︡a0649857-03c3-4f20-a775-b71ac7040d36︡
︠7e7e2077-78b4-4bb6-ab2e-1d6283a98a7b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Similarity">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Similarity</span>
</h2></section></div>
︡0ea7dc85-4fd0-448b-ab3d-a5b07341ccc3︡
︠8c2240fc-54c2-441b-afce-d6387bbbd879︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡cf6f2af1-7454-4796-a292-1685f00bbd33︡
︠602cf57e-6f3c-44a5-aacf-dd6625630204︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡574844dc-23c5-4f0f-a5bc-599bfc15f18f︡
︠6d7b5bf3-8264-4765-a7c0-41add99ef9f7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="url" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡96401ac0-d424-48aa-ae27-f699462e4174︡
︠90ad0c8d-c51f-49aa-a49c-c83518b3605d︠
A.is_similar(B)
︡4eefcfb4-c8ae-4749-a182-e5a2aca60166︡
︠eb4db1c7-69f0-4774-a19d-482eadb53b6a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Diagonalization">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Diagonalization</span>
</h2></section></div>
︡1556217e-8e87-4e0f-a318-05034b0f04b6︡
︠ecb42d5a-cd84-4575-a4a6-cbbde08ff93b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡f27b6a9b-559e-4ae5-af2f-6fb2ca2592ed︡
︠def59603-258b-4339-a93c-99b4c8efe81c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡5fb555b5-8da1-49e5-a278-e12a5e24d0cf︡
︠d2f874e3-9614-47a2-acda-5bb751686482︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡4543ec7c-f131-45bc-a879-2d5e5a0c360b︡
︠951e80a0-da10-4b6b-a7e3-111606112483︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡0181f02a-0f42-4008-ac87-09910a71ba53︡
︠d5567569-f794-4a95-a26e-a68378ef999f︠
D, S = A.eigenmatrix_right()
D, S
︡d743dc84-68cf-4d69-a39f-14698e26dbf7︡
︠adff0db9-122e-41f4-ab3e-b421eaf00dc0︠
S.inverse()*A*S == D
︡47e47e13-825a-406a-a52d-3d26e10d21ae︡
︠1f6f3de5-0785-429c-acee-a2bd89e970a2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Here is an equivalent formulation.</p></div>
︡fc25c63b-b323-494c-a51b-4cdf9698f199︡
︠4856e1c1-d84f-4bd4-a836-37217c71463d︠
A*S == S*D
︡0756d38a-4539-44e7-a97a-fa21cad3b29e︡
︠fa650398-eed1-4820-afb7-aa2dbe7923bc︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡2a6806c9-ea8c-4c0e-acf9-4a377e6e8823︡
︠44ebce18-8030-4df1-abc1-41b8827e1f73︠
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
︡2b8174f8-d891-4961-aa2d-b7f6f7966a6d︡
︠e996a0ba-9923-4bca-ac6c-a2499312a7d0︠
D, S = C.eigenmatrix_right()
D, S
︡5caf34ff-e981-4d3d-a704-4a694fc527df︡
︠83b22f72-e5c6-479a-a51b-966ffafb013e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡0b1cd3b4-59a1-402b-ab7c-602d028fd811︡
︠71c8eaba-f14a-435c-ae04-a74d55fd5d56︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡ec8b5661-1525-4f6b-ac4c-0f35d8ac50ab︡
︠698e5e5b-f711-4d17-a8dc-4eb8391e57e0︠
C*S == S*D
︡25ab4f9a-b81c-4aed-a27a-eb9a3c34b9ca︡
︠ae04a444-efd0-4b7f-a8a6-391c4597a516︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡fc5f1045-4341-4309-a294-9ddaa1039b9b︡
︠2878888c-edf3-4f33-a85d-dfaa94ca8661︠
A.is_diagonalizable()
︡18a90229-f06f-4352-a7e8-4b7e6133cb92︡
︠dbb84bb7-4a7b-4aa1-ad2f-66bd52f85c4f︠
C.is_diagonalizable()
︡e2aaaf55-6a0d-46a8-a77a-7d13b65beb72︡
︠a6440f46-4a04-476e-a0e6-b53c8f2ea091︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Nearly Diagonalizable">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Nearly Diagonalizable</span>
</h2></section></div>
︡3488987d-ec7f-40f6-af04-5ba9739913ab︡
︠5e0e796e-75bf-45ce-abbe-01abb1e4b085︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <b class="terminology">Jordan canonical form</b> of the matrix.</p></div>
︡bd4cbb52-ad85-4cd1-ab9d-aae45953e036︡
︠6f4ab061-20ea-45b8-a661-30b241ca4ab8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h6>
<p id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <b class="terminology">super-diagonal</b>.</p>
<p id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡1285c452-5834-438f-abf6-d3695ba25fc1︡
︠8d303048-3a16-4e4e-ae0e-4d1b7761ac16︠
J, T = C.jordan_form(transformation=True)
J, T
︡d941a71e-0491-4b75-aa65-8b3a6a2dcc9d︡
︠377781fa-0ff9-41a1-a748-cc3079a96750︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡588c01e0-befa-4814-a988-15555ce0657b︡
︠6c4e95f7-5b65-45e6-aa8e-3a38f95e9b31︠
T.inverse()*C*T == J
︡79ec8717-f725-4c84-a33c-2676f6f55908︡
︠a8294a16-10d4-46ad-abe0-807f6766cbfd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h6>
<p id="p-15"><b class="terminology">Rational canonical form</b> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <b class="terminology">companion matrices</b> if this makes you curious.</p></article></div>
︡4a564a05-026e-47d9-a587-507d0e474124︡
︠e7f4d4ee-9f10-4d9d-a6e6-d3751736e871︠
C.rational_form()
︡d59d9717-6b67-4b40-a9ae-f826e4e1ada1︡
︠f86850f6-751e-4dd3-ae6e-c66fc43b6d81︠
C.fcp()
︡f8950f50-6d68-4c35-af1b-de14ee919ff2︡
︠1ebb4caa-c083-4847-ae49-928b669f83f8︠
((x-1)^3*(x+2)^3).expand()
︡6162cbe7-5b7d-4e02-a6e7-f89730edf61f︡
︠b7144731-b8f3-42af-a7ef-88559669c9bf︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e66fab7e-c27b-46a6-a514-5adaf7050dfb︡

