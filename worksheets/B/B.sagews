︠5ca8a39a-b37d-4163-a115-effe5b57ba14︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡460efa19-4ccc-49e2-acf3-2e31d9c208d2︡
︠c19df881-1dde-497c-ac4c-f6a387d5add7︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡fa898820-93e7-428f-af43-b39671e47814︡
︠01f9b81d-9b07-433f-a223-5e7f4e1238b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡db6d5257-fe30-4663-a596-9e40e9ffc288︡
︠3ab77c27-56d6-4941-ae6a-5032ac714844︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡c8e7f541-da8a-402f-a205-d66090c121a6︡
︠56e4ee92-06d8-41eb-a10c-7d3decebd0c7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡61e55c3f-e36b-4c89-a79a-3086e63c11de︡
︠8306853b-51eb-4db4-a72e-16e9cd00a217︠
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
<div class="date">Spring 2020</div>
</div>
︡1aa11364-fc6e-4839-acbb-ac296e67f0a0︡
︠8ba2cc63-06f6-447a-ae45-af2c89bf0a0a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Bases</span>
</h6></section></div>
︡a865b211-5275-48cd-a2a1-740a093b8368︡
︠e1147c79-edb5-4232-af6c-0d1172abe3e4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Five “random” vectors, each with 4 entries, collected into a set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡cd5d2daa-6871-4e94-a09a-da8eb006beaa︡
︠36894b6e-5c6c-4d46-a25f-d2960571b3f5︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡e3c6c012-f7e5-44ca-aaff-9c23328a34d3︡
︠9b652264-55b4-4bf0-a6af-63c87fbfaf38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <em class="emphasis">rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡2d4936c9-b1f6-46b6-a610-68430c3bbdbf︡
︠6eca7f04-9b69-42c4-a936-9aeedea0a6e5︠
A = matrix(S)
A
︡5432eb2f-0bb6-45d2-a966-000efddae70d︡
︠d61180da-fd6a-44b8-a65f-c5fd4fa19999︠
A.rref()
︡67078886-374a-4285-aaeb-ab1a859372c0︡
︠c27ca052-78ab-42c3-a872-41e6b7c5a377︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡449b14c7-6400-4f3c-a2c4-505361a3646e︡
︠ca356493-c07c-406f-ad9b-1ec7239c6f1c︠
W = span(S)
B = W.basis()
B
︡ed713d6d-02d7-4eee-aeb7-9d65589e5fe6︡
︠cc43e804-5163-4951-a73d-fda530ece3bd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Construct a <em class="emphasis">random</em> vector, <code class="code-inline tex2jax_ignore">w</code>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <code class="code-inline tex2jax_ignore">W</code> as a span originally.</p>
<p id="p-5">Then use the three <em class="emphasis">basis</em> vectors in <code class="code-inline tex2jax_ignore">B</code> to recreate the vector <code class="code-inline tex2jax_ignore">w</code>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <code class="code-inline tex2jax_ignore">w</code> using a linear combination of a basis of <code class="code-inline tex2jax_ignore">W</code>.</p></article></div>
︡a89fb77c-cdd2-4078-a1eb-fe993ca28864︡
︠50cf0777-4352-4659-ae78-a6630a0ac833︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡d9498410-c631-4896-a18e-a35065b707f3︡
︠bdcf6538-5fe9-4172-a79b-63eb451fc17c︠
w in W
︡52911074-8d47-465e-a9d7-43b3ff80e516︡
︠168a89bf-e4c3-4b38-aac6-20ad39dc9b1a︠
*B[0] + *B[1] + *B[2]
︡121ad938-92c6-4589-ae25-456f298061b7︡
︠cd9e778b-f1ec-4844-a237-88ce7f8ffe1b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Nonsingular Matrices</span>
</h6></section></div>
︡5d9fc164-d66c-42e0-a713-e9bb82b02af3︡
︠651f4d1b-2e28-4a57-abc8-eb2a7ad2bfdb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡33053535-1533-4de8-a495-d81f29a0b609︡
︠13d1916c-671a-4bf8-a441-a1ac1c5bd11d︠
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
︡a2084a9b-6f38-49e8-a23c-4dee9fbfb80d︡
︠5b06340d-f7d3-4f61-a795-4d22bc26cded︠
not M.is_singular()
︡a48aacfa-9f16-421d-a496-9d4c0f9265f5︡
︠2a9b5374-e140-4862-a6bb-d491191ab7fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">A totally random vector with 10 entries:</p></div>
︡d256daa5-e972-4af9-ac64-73914aa545d4︡
︠0a7515fb-ae52-41f2-aab8-f3b84f3e5843︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡d4d4ae99-a48f-479e-a94a-13ecc2c01286︡
︠55a3a424-ed96-4c00-ab94-6b847564587e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\text{.}\)  So the vector <code class="code-inline tex2jax_ignore">v</code> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol class="decimal">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡ed491fe3-3c0c-43dc-a396-7f10395aeb25︡
︠913ea4d8-7048-4d85-a9bf-03e131a8b83e︠
aug = M.augment(v)
aug.rref()
︡edf1b968-2d96-466f-ac0a-b0d910bc975c︡
︠649565fc-d1a6-480d-a7dd-28df2f0ec951︠
M.inverse()*v
︡6b601c50-8322-4ab3-a720-44824b149ede︡
︠f4a54b29-cacf-4d6a-a0dd-02295646be59︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">The Sage way: first create a space with a <dfn class="terminology">user basis</dfn>.</p></div>
︡c4d7a13d-b077-4f5e-aa5c-86ea0315ad3f︡
︠60447f5a-c0a4-48a9-a65f-2d617659bf6f︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡fdf31637-1f8b-4406-ad7b-d983b0a096f0︡
︠5fd42ea6-5c5e-489e-ae76-a5f28b33bc9b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Sage still carries an <dfn class="terminology">echelonized basis</dfn>, in addition to the <dfn class="terminology">user-installed</dfn> basis.</p></div>
︡cfa93d8e-3ea8-4c22-ab1a-1bf1d8c0b7d5︡
︠3a4d47ac-6db0-4673-a934-34f26db2e6ab︠
X.basis()
︡cd60ba85-7e22-4e9a-a22d-65268833b2a6︡
︠e6347eef-45d7-48c0-a2e2-0582b1bf561f︠
X.echelonized_basis()
︡c0604df2-c489-4b06-ab34-e39765815d87︡
︠d5746b16-eea6-4857-ae1b-20fc751076d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now ask for a coordinatization, relative to the basis in <code class="code-inline tex2jax_ignore">X</code>, thus exposing Theorem VRRB.</p></div>
︡eb55fc01-2f0c-4582-ad63-99385bd7b5e9︡
︠5c5a1572-6916-467f-a855-cef065b4c79b︠
X.coordinates(v)
︡0e859ab0-c1ae-4805-a88b-e49d402f4e7e︡
︠a7d2d6c8-79a1-4731-adb9-89e272392889︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Orthonormal Bases</span>
</h6></section></div>
︡62135fa1-71a2-4326-a4f2-e8ccb3fec175︡
︠bd7c1dbb-e3d9-460b-ac5b-f34b0fefeb15︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\text{,}\) collected into the set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡0d289455-049d-4d0e-a9c4-5c7978868619︡
︠b26ea02f-633f-401f-afbc-308b90326b88︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡54ac34c6-4298-42a9-a295-fd589f8c1f8a︡
︠7ef1a257-9aa2-42cc-acf6-1e476d6fa8e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡35127c5d-3e7d-409a-ad59-4788ef55e0ed︡
︠31253a18-756e-4277-ac4d-685e14e7ac78︠
Q = column_matrix(S)
Q
︡9b9c0d62-5e7c-4ca4-a478-2e17d2cb9671︡
︠e1c7ed55-fb37-4702-ab49-4775e48bf217︠
Q.conjugate_transpose()*Q
︡3f9078dc-dd71-45f1-a7b6-0fd85ccd7c08︡
︠438d3f51-b3e3-4532-a6ad-dbcb32700fd0︠
Q.is_unitary()
︡8130f7f5-8b87-4eeb-a056-e21bd5d56d53︡
︠de41e39e-81a1-498f-a494-a77c2510b7d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡bbefcd35-cc76-4d0e-ad48-1ff9b2ec2940︡
︠a0b9f863-e2f6-48d7-a7ac-fcbf562435d8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">A totally random vector with 3 entries.</p></div>
︡578108a7-b99b-4f28-a7a2-39ee945b8816︡
︠16d98e23-6dc0-48c2-a03c-3762506ace3d︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡4442ec10-07ec-4879-aa8d-7b4ed9e44a28︡
︠77dcac8c-d83b-45b3-af6b-ce70d5ab9f6c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡8e45ae23-afce-4b2a-ae11-9d01ed689f7f︡
︠b0ef59e8-c979-472b-a21c-3a93c7020a18︠
aug = Q.augment(v)
aug.rref()
︡9d88de1c-6e5e-47d0-a2f1-f3c96917b11d︡
︠9bb24805-573a-45b7-a6d7-8ca551e6998a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡72624ab5-00d4-4a2f-a29d-a1a470657fff︡
︠a71096b4-bb48-40fb-a024-dc670e863f63︠
Q.inverse()*v
︡e0b0146c-928d-4b8d-a69f-b6b2ec063459︡
︠84934a7a-70d0-4e89-acf2-bb86d63ed622︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡fa79db45-6c63-4c5b-a51b-7c6f346624d5︡
︠7dfe7d9c-3f89-424f-ae90-a0d1005778b5︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡d32c1aaa-6dae-47d2-a6cc-66d37e4d6c51︡
︠1254f6f9-156c-43e9-a646-3bc0f4e31407︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <code class="code-inline tex2jax_ignore">.inner_product()</code> does not conjugate the entries of either vector, so we use the more careful <code class="code-inline tex2jax_ignore">.hermitian_inner_product()</code> vector method instead.)</p></div>
︡629b7826-23b9-4ff7-a95b-f87c9608a2da︡
︠93d3f4b2-ae56-4755-aefa-ae31ac7b42d1︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡c75aa5e6-794d-4fb3-a4a2-f4126bfd7305︡
︠5dcb7715-e9e3-47de-ab29-d1df43b31271︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡7de495ca-ba4a-4db8-ac6a-54c3306e481b︡
︠a898d2e9-da31-441c-acd3-63736a3d985a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡403d9007-ad1e-4e6f-ab2d-e906c6104a8a︡
︠753e2908-0f63-40ca-a323-9b1ec07bf4e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c5d04095-894e-4d4b-a78d-a29c05c80ccf︡

