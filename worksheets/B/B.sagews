︠944da018-ff13-40b1-a2c6-521a15790f6f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0044de5f-64e8-47f3-a91f-06221378c783︡
︠784bd192-006f-48ee-ac8f-c96eb722fea7︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡2106de77-0877-4706-a6de-597c833a6380︡
︠ba2c10a8-7a1f-4290-a8fd-757f2f26a892︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡95db1ecb-7369-4293-a213-08877b79112b︡
︠f132bf26-efa0-4767-a19a-033aa2db7295︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡d960c10e-8fe2-4f68-a782-1855207fcf26︡
︠4f0a0cc1-b50a-4700-a078-3919e4954656︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡c96d36a0-7658-40c9-a1d0-a0ab9803e493︡
︠a6c1307d-0f45-4842-a150-200cba4cd307︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section B</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡7bd3c144-f433-4ac8-addd-dfdec9806546︡
︠db1afec4-2c96-4f32-a710-5ef3ccd4c3a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Bases</span>
</h6></section></div>
︡a7dc2caf-0cb9-43bd-a53e-58d5ca1aeed9︡
︠071d43ae-3bbe-45e9-a34c-1a5f0292c80a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Five “random” vectors, each with 4 entries, collected into a set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡2123e679-4a40-499e-a3d2-0ed5ed87f400︡
︠f211507d-9c7e-4c08-ab45-d44a9282a77a︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡76c9729f-f3b7-4188-aa3c-f103ca64c0b4︡
︠b2a8b1b5-1a8c-42a5-ab48-7398752d9fe4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <em class="emphasis">rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡3a7e23fd-9181-4dac-a260-bd445b989388︡
︠7c2fa43a-2cba-4e95-aacb-b79fbfa58380︠
A = matrix(S)
A
︡c0de0723-250d-4ff7-a593-15aa46aeb224︡
︠2e40c57f-8949-4748-aea2-1b7c6c20ae2d︠
A.rref()
︡25c759dd-867d-4fe2-a8cc-be83aefdf9c2︡
︠7f837dc4-b5a2-4291-a52e-1dca079f5891︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡b0033710-bc55-4f8f-a0d1-efeaae23e7c7︡
︠8789bc0c-cb91-418a-a088-277021f45eb1︠
W = span(S)
B = W.basis()
B
︡549ed4ae-06a9-48b2-a2cb-ae22f44f89d4︡
︠b394168b-582f-42aa-a4d7-0852b56f5f92︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-4">Construct a <em class="emphasis">random</em> vector, <code class="code-inline tex2jax_ignore">w</code>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <code class="code-inline tex2jax_ignore">W</code> as a span originally.</p>
<p id="p-5">Then use the three <em class="emphasis">basis</em> vectors in <code class="code-inline tex2jax_ignore">B</code> to recreate the vector <code class="code-inline tex2jax_ignore">w</code>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <code class="code-inline tex2jax_ignore">w</code> using a linear combination of a basis of <code class="code-inline tex2jax_ignore">W</code>.</p></article></div>
︡446d8840-3996-48b0-a30e-a06031691b9a︡
︠dde4a6cf-7f80-461b-a64c-5edcf0e5af03︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡ad181cfe-b6e4-4645-a2b9-f07cc7dac8ac︡
︠c49ddb9c-9528-499c-aeb7-8a707474f3ca︠
w in W
︡f9e96b50-8f5a-47f3-a3ef-a692617e6613︡
︠00cfa2bf-33e9-4e58-a297-14eb64cd2344︠
*B[0] + *B[1] + *B[2]
︡65425f40-e84c-4122-aa5b-16ff264f4729︡
︠b8f0a4ff-5e79-4b9c-ad31-95894b09a40d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Nonsingular Matrices</span>
</h6></section></div>
︡dc6cd01c-06b8-4f61-ac35-dda67f178cc9︡
︠995f6208-f1eb-49e1-aba5-082beaa012dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡c6726e57-6484-4f23-a1ed-6e6994345472︡
︠1399507a-8df1-42f3-a501-3609fae3f476︠
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
︡69a02f09-a87a-49aa-adfa-f310c1ab49fc︡
︠055a67a6-15f9-4f93-a973-46666381fcbe︠
not M.is_singular()
︡8c4e6a61-1760-416a-a501-858fbe33020c︡
︠19857f0d-0157-426e-adce-e446405846a4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">A totally random vector with 10 entries:</p></div>
︡2beb15a2-3b38-426f-a14b-0204954fd958︡
︠d83b451f-74ab-4cd2-ace6-8e9832d82b18︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡3e17a5cb-440f-40dc-a29b-9192ad585736︡
︠f651ef6a-bbfb-4af8-a722-2b3cde936ea9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\text{.}\)  So the vector <code class="code-inline tex2jax_ignore">v</code> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol class="decimal">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡4a09ce92-95e9-4098-a91b-b46f04da7392︡
︠dede89d1-c76a-4074-a905-4c9abaf956de︠
aug = M.augment(v)
aug.rref()
︡8ac594e7-6aed-45e4-a985-fc297d3678c4︡
︠75f3b88a-fe4e-4bac-af45-5317d850fc9c︠
M.inverse()*v
︡10104c8c-68ab-4656-a35a-8bea2b38c255︡
︠e6606adf-6471-40e7-a61d-0a8e4ba736a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">The Sage way: first create a space with a <dfn class="terminology">user basis</dfn>.</p></div>
︡b8f296c6-53ad-45ab-ac1d-a1720cea310e︡
︠bc7ae01b-76f1-435c-af1d-ccf4e00ca4eb︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡298946a5-21c2-4307-aff9-dc5c04c0074f︡
︠369b0e2a-44b0-47e0-aee0-7ccd9c16c2d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Sage still carries an <dfn class="terminology">echelonized basis</dfn>, in addition to the <dfn class="terminology">user-installed</dfn> basis.</p></div>
︡117bc79e-2d3e-4dad-ae9b-e18be17f7425︡
︠536ce348-1754-453f-a228-e196c8847f8a︠
X.basis()
︡5ddcacff-516a-46be-a5d0-eb172efa27aa︡
︠108fc2cc-11e7-4c43-ab90-c8cdfecf9e74︠
X.echelonized_basis()
︡98428155-d67c-4e40-a1fa-2b2f92e51749︡
︠be200a15-0fc7-4bbb-abdb-5f68f0ad6c4a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now ask for a coordinatization, relative to the basis in <code class="code-inline tex2jax_ignore">X</code>, thus exposing Theorem VRRB.</p></div>
︡50970a21-f21c-4ac8-a685-1e5864811ed6︡
︠9372a7cc-9cfa-4997-a1ff-61db94025102︠
X.coordinates(v)
︡895fc069-d05d-4bf6-a206-278f31333954︡
︠bde1ca23-3f49-4c08-a328-a5025349682c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Orthonormal Bases</span>
</h6></section></div>
︡ce9af642-a81f-41ef-aa21-3c73fc635db7︡
︠97622596-73f9-4218-a1ba-3e6b15788d54︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\text{,}\) collected into the set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡5ecb1e1a-58e4-4215-aa30-47fb210a997f︡
︠dcd98f79-ad28-414a-a7ee-8357e89e228a︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡267f0ff8-895a-426f-adde-b611d096fc97︡
︠6bddbdda-564b-4161-a04f-ef500309af64︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">3</span>.</h6>
<p id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡7c05ab28-68eb-43f2-a5f6-5e5be6ff09f6︡
︠e63ebdae-6174-4cb3-ae13-461a200101bf︠
Q = column_matrix(S)
Q
︡796a7182-0e37-43f3-a6d4-a2bcddddedf9︡
︠d6331b5a-d591-4dc0-a13e-5d119ee6cd4b︠
Q.conjugate_transpose()*Q
︡712a536a-e307-44e3-a5f6-45456d354029︡
︠b9be401a-bfeb-473a-aa8a-1df52636b87d︠
Q.is_unitary()
︡137d1bd3-6824-44a8-af41-95e8b1fe7a7e︡
︠891f62b4-62d9-4613-ae17-0ade29f287cf︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">4</span>.</h6>
<p id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡55874fa0-3020-4992-ac83-48d270b623df︡
︠234bb9a5-9d6c-4e06-a0df-41713e2e5513︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">A totally random vector with 3 entries.</p></div>
︡4468f219-7b7e-485f-ae6c-ead5c14f0a42︡
︠d8641563-fef7-4c7d-ab64-84e6ab7fa79e︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡a770b861-c6fb-4dc2-ab89-f0ed689e8461︡
︠208a0437-5fd5-4ab2-ad6a-65b532ed0617︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡8371e851-0b0d-40a9-a38f-ef5948c25d86︡
︠40ac1847-a52a-4335-ac6d-b4c0e19a3f7c︠
aug = Q.augment(v)
aug.rref()
︡6bc17e9c-5417-4e4a-a411-2c5ed3f7d365︡
︠fd0ce8a8-50c7-48bc-a2fd-31a907d0fb46︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡0331f19a-9fa5-4620-a250-092a222031b7︡
︠7babcac6-565f-4cc2-adf7-df10942c46df︠
Q.inverse()*v
︡d5b8173d-e844-4800-aadf-2bf3b87e5b43︡
︠b296badf-8c7c-40fd-a0ab-0c6ff2760d25︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡0d893431-3bdb-48db-a5d5-0d17d1957a2a︡
︠0278bbdf-c0aa-4c27-a785-c83df0e95637︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡13a8c549-41af-4b62-a3da-893c72d6b3df︡
︠be257fbb-80c2-4f89-a2b6-c40f182efe1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <code class="code-inline tex2jax_ignore">.inner_product()</code> does not conjugate the entries of either vector, so we use the more careful <code class="code-inline tex2jax_ignore">.hermitian_inner_product()</code> vector method instead.)</p></div>
︡dca022fd-e7ea-4ae2-a40e-ad2bd33f22e3︡
︠fb0ab3cb-1a2f-45dd-a81e-6cb978db8fe6︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡3d247e73-99ec-4939-a7bb-5281bf98b289︡
︠9b7bfe97-2301-4f94-a900-463c7fc17840︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡2db98b82-2a63-4c5d-a0ee-13450c4ddc51︡
︠c7f71839-b541-4906-a605-528a796b647b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡6435b4de-d841-4ae1-a052-6a5e4c7a8de0︡
︠4b027213-e965-429e-a6bf-9c8240dbaedc︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡927a4ed5-1bf7-4010-ae7c-e1973d7091f6︡

