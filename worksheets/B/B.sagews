︠f4f03049-9ae9-441f-ad47-42f0ad967691︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡c95c98de-2691-4fd2-aeb6-609603499bf3︡
︠dcc286b5-4dcd-4ecb-a0b7-7170874c1e81︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡15de7642-c909-47f5-a3f1-a7228b9d7bcf︡
︠cd49cc01-edbf-462e-ac6e-e1613ecdc388︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡2467e23f-32cf-4131-af08-ee94fc3baff2︡
︠a2c674b8-d231-4dd6-af27-62192116efc1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡e73bebfa-4dc8-4f96-a698-d0bf9d0a3fa0︡
︠09744604-042c-4d26-a38f-b6f65946475e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡767fac5b-15f3-42c5-a90d-9b482926f6e5︡
︠56bc569b-1a11-4e3e-a3de-16a5fdf14e82︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section B</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡4d809e63-98da-49be-a8fb-602161e6324b︡
︠598d92b0-5483-4f2e-adad-81ea25c0bf30︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Bases</span>
</h2></section></div>
︡a8936361-3b6b-4f5e-ad28-bbaa6cf2db21︡
︠bc950f86-1c28-471d-a5f0-eac8525453f7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Five “random” vectors, each with 4 entries, collected into a set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡4b4d14d9-bf5e-47df-a53f-52a2bf403a33︡
︠18f560a3-a53f-43ad-a3f0-252c7ebcef62︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡37b3d137-5dd8-4d13-aa42-b78e4fc0cb02︡
︠e3a978aa-ff8d-485e-ab02-dca6ae57f22f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <em class="emphasis">rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡403faa74-574d-44c3-a273-55ffbae11d34︡
︠d8508fa0-3f78-4db4-a0ec-43243ee2f003︠
A = matrix(S)
A
︡4dc9d498-4c8c-4457-a966-6a98ed6df6ef︡
︠a2c6cab5-2f2a-4b70-a316-9703ff06d0db︠
A.rref()
︡f7ecda68-0983-434a-a47b-a13b43a49846︡
︠34e10cc7-4d0d-4041-ab89-62a9dec83608︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡d4cb6d82-4c05-4a09-abb1-424ec2d9b0fc︡
︠9d059631-98e9-4d8a-a736-988d7404db5d︠
W = span(S)
B = W.basis()
B
︡8ea843f7-4803-42db-ac4f-2e7bbf0c3d88︡
︠a0759b98-2e12-4140-ac15-b333ff2fb6d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-4">Construct a <em class="emphasis">random</em> vector, <code class="code-inline tex2jax_ignore">w</code>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <code class="code-inline tex2jax_ignore">W</code> as a span originally.</p>
<p id="p-5">Then use the three <em class="emphasis">basis</em> vectors in <code class="code-inline tex2jax_ignore">B</code> to recreate the vector <code class="code-inline tex2jax_ignore">w</code>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <code class="code-inline tex2jax_ignore">w</code> using a linear combination of a basis of <code class="code-inline tex2jax_ignore">W</code>.</p></article></div>
︡e845dd16-6347-465b-a72c-ce0f10f4fbac︡
︠f843e21f-973d-4fa3-ab16-8d48d59d9883︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡57cabbcc-b54f-4349-a7fa-d7810679312c︡
︠58322fde-b940-4875-a1e4-ccc5ddb57f6a︠
w in W
︡bc2fe4ec-3a58-4aef-affe-4ca118ede5c4︡
︠f8127f75-caf2-42a0-a2a0-1eccfe4eb248︠
*B[0] + *B[1] + *B[2]
︡7409679d-d58c-47b7-a8d1-8e05a03fef23︡
︠7a773efc-bc24-489f-a01c-1ab1f6135027︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Nonsingular Matrices</span>
</h2></section></div>
︡392b1590-24c4-495e-a850-57a08a6adcbf︡
︠3f96aac3-af86-431c-a291-2e8cf165c427︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡366cc078-417c-48bd-a4d7-606fc513bd7d︡
︠4b3b80cf-8010-4cac-aaf9-169756d6a832︠
entries = [[ 1,  1,  1, -1, -2,  4,  2, -3,  1, -6],
           [-2, -1, -2,  2,  4, -7, -4,  5, -1,  7],
           [ 1, -1,  2, -2, -5,  8,  5, -3,  4, -4],
           [-1, -2,  0,  1,  0, -5,  0, -3, -5,  6],
           [ 0, -2,  1, -1, -2,  3,  2,  3,  3,  7],
           [ 1,  0,  1, -1, -2,  4,  2,  0,  2,  0],
           [-1,  0, -1,  1,  3, -1, -2,  7,  5,  1],
           [ 1,  1,  1, -1, -2,  8,  3,  2,  8, -6],
           [ 0,  2, -1,  1,  2, -1, -2,  2,  2, -6],
           [ 1,  3,  0,  0,  1,  3,  0,  0,  3, -8]]
M = matrix(QQ, entries)
M
︡68ea46a0-6318-43d2-af72-99831dae4478︡
︠7e1585c2-6367-4b95-ae9d-037968606b5e︠
not M.is_singular()
︡3cc514bd-711d-49c7-afb0-dc345acca37f︡
︠1bcd0d1b-b9dc-4679-ae75-e41297d5379a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">A totally random vector with 10 entries:</p></div>
︡7a647719-2d20-4a98-a47f-964b9d2635ec︡
︠0666aeec-81ab-4144-aa9c-923eedc04f62︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡c693d41b-09cb-44ef-a988-62ba197dabd0︡
︠e968d4ce-0d8d-48db-a874-1d7c786f60a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\text{.}\)  So the vector <code class="code-inline tex2jax_ignore">v</code> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol class="decimal">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡08d70acd-9ca1-493f-a5b6-ac418c9fc0f6︡
︠3ff070b3-d4f8-469b-a5f7-c931ace4ba4a︠
aug = M.augment(v)
aug.rref()
︡18a09114-5f84-47ee-a34d-a16e21a156ba︡
︠1c2bdbde-02e8-4767-a59c-34d930be104d︠
M.inverse()*v
︡b5ae17af-6a14-439a-abf4-7295cc67a88f︡
︠6340168c-5e67-4390-ad5f-2d2b3e89532e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">The Sage way: first create a space with a <dfn class="terminology">user basis</dfn>.</p></div>
︡281793d1-0306-4a30-ab15-b32df6c8f2b2︡
︠0eb25463-6666-4d1a-adcb-38f65fc27c43︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡f51a86fe-9550-4c21-a60e-1461ac17e833︡
︠c28dd14c-fe25-4ee7-a048-e6c48709ee22︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Sage still carries an <dfn class="terminology">echelonized basis</dfn>, in addition to the <dfn class="terminology">user-installed</dfn> basis.</p></div>
︡2e5ac2b0-ebf1-41df-a9e4-1cae1251c30e︡
︠52cad9d9-9c58-4d66-acf4-011bf2e43a84︠
X.basis()
︡8d6584e6-e823-41fa-a8c9-cdad8906e316︡
︠894eed3d-3165-4575-aff1-8ce397d9ebdf︠
X.echelonized_basis()
︡25964838-56ab-4cf3-a1e2-27e1b8982840︡
︠7650da91-2e7c-4a4c-ad5b-f82ead6368ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now ask for a coordinatization, relative to the basis in <code class="code-inline tex2jax_ignore">X</code>, thus exposing Theorem VRRB.</p></div>
︡931e4e9d-fcc7-496b-a541-049323197724︡
︠2b74ac23-a2f6-4a9d-a6e2-7f6139542db4︠
X.coordinates(v)
︡1e092a55-e07e-4727-a596-706e2977da49︡
︠f67ff9a5-e856-46d8-ad22-4a3a853fc1a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Orthonormal Bases</span>
</h2></section></div>
︡a97187a2-c8b1-4e1f-a7f1-94bde3223f3d︡
︠1d68fff9-2c2d-4e1f-ad9f-e33a01d24118︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\text{,}\) collected into the set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡f266b55b-f871-4652-a52c-41f7bf991ea3︡
︠696c0216-d0e5-424b-a5ae-1ff07bf141ff︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡458b28d3-eb4d-4062-abbd-adc9d44c59e5︡
︠82b0dd9b-1866-466c-a828-6c62637b0c4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>
</h6>
<p id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡1c1ddfa7-ab01-4168-aefa-757d8e1f91cd︡
︠0ea1b715-ec1e-4d35-a515-09a773682f9f︠
Q = column_matrix(S)
Q
︡dad7c8ed-ddae-4c72-a1d4-7dd1545bc8a6︡
︠7814fdce-bac5-498c-aba9-f17c3c197e12︠
Q.conjugate_transpose()*Q
︡58b6ca49-9f35-44ce-a178-b6a33df57738︡
︠a905fdf3-6939-4e85-acad-553f87d8c400︠
Q.is_unitary()
︡ca9df8af-c180-4a78-a032-d981818695a9︡
︠574e437f-240b-44b2-adc6-faf7b894e2a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>
</h6>
<p id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡cf00e546-47b5-43f1-a5dd-cc7c434d7302︡
︠cd1de022-67a1-4cd1-ae3e-bfb3c061de4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">A totally random vector with 3 entries.</p></div>
︡01c2ea20-d987-4b44-ad37-ce7723785579︡
︠48b0a9bd-a962-4027-a5fa-db953b8b4e1b︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡75336dc2-a6b1-48c3-a012-aee331ecd3be︡
︠e3426b02-db99-4c25-a027-3c610a3f7022︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡f0533bf3-ede7-46b9-acbc-3e9909348a5b︡
︠c4c18fd7-2b41-42ac-ac77-8a6137b7b411︠
aug = Q.augment(v)
aug.rref()
︡fe5c0ebd-5e8a-4fb5-ab8c-30692a0e1c33︡
︠d313f12a-f788-4183-a73b-36c90f41d5d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡8b4af3c1-eb96-43bf-a722-259ff9e4ac98︡
︠d241d359-534f-4a8a-a9fc-b22412e068d0︠
Q.inverse()*v
︡0a35c091-9e4e-4de6-a875-538889a6a1f7︡
︠20155e5e-ffd4-4db2-a33a-98e106bbd5dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡cfde52ca-1c9f-407a-a3ad-e46c5630205f︡
︠d2fa14dd-ffa9-4ea0-a8ea-6cec843b56cb︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡6ad55ea3-c926-4201-a29f-dfbcc40f055d︡
︠1b7e1cdb-0952-4073-a1ad-17dd391492af︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <code class="code-inline tex2jax_ignore">.inner_product()</code> does not conjugate the entries of either vector, so we use the more careful <code class="code-inline tex2jax_ignore">.hermitian_inner_product()</code> vector method instead.)</p></div>
︡fba7ac37-841d-4614-aa3f-84651ae3f75a︡
︠6451b0ef-8639-43ab-a85e-7d3e2591889e︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡20282e90-e172-4aad-a632-5b0893e256be︡
︠4ef7616f-1409-47b4-a427-77280cbef05a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡fa8e2ff8-f1df-4a4b-ae9d-60598564455a︡
︠f4482672-f64c-46e1-a2da-04a5d3b3709c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡a90f1368-65fa-4269-a386-d8b8e9b9d396︡
︠817e851c-45e1-44f5-a6f5-ed481355ff4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1c09b9ed-5323-4563-aad3-0c044289788c︡

