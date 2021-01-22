︠75371ec2-e6ff-44a9-a98d-522c2f5950e5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡36a7dc59-f40e-4358-ace1-a43c15c7f17e︡
︠6a4112d7-cdbd-4bf2-a4c1-565937efed15︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡c7009137-9044-4d04-a040-1a773ae2ac0b︡
︠2c32dc40-4d18-42e8-a6fd-718e8b97d44e︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f6a387fc-83a9-4cc8-a537-2a8b9063847c︡
︠e4303202-5344-4891-a2c5-ceafbea7f444︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡32973ca3-ef63-44fc-a518-be75d247a3cf︡
︠801174e1-7d1e-405e-adbf-66edcc014a50︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡9d0bf80e-97cb-46c1-a4ad-4043d1fe2398︡
︠4365e5de-4760-42dd-a327-1775a56a49dd︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section B</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡12077fd4-d1b4-41e1-ae24-63be863f088d︡
︠5a06175e-c308-4716-a908-e6b944f84f0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Bases</span>
</h6></section></div>
︡d66dc851-7157-4ad8-a068-85e4e29ebdeb︡
︠ac11ad9f-f014-47b1-a0c8-95e89cb3b61a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">Five “random” vectors, each with 4 entries, collected into a set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡1b62d007-0072-44fd-a60a-f9fd19acc62e︡
︠04a67777-e776-49c6-a736-1300129bf622︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡426e9d60-548d-4b19-a19d-8a09b1b5dabf︡
︠c023fb15-c6a4-4356-ad7f-bfab85d4abe6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <em class="emphasis">rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡bb6df690-c666-4bac-a183-133bfc0c0b8f︡
︠13a719ea-aa10-41cb-ade3-1f64b61b216b︠
A = matrix(S)
A
︡08eaff4d-af8b-4f97-ab65-e855d0becef3︡
︠9fb8ab7f-91e1-4deb-a4a1-a8a0e71a6e95︠
A.rref()
︡135db092-f24e-441d-af67-110b1e329912︡
︠f2540049-34b8-4209-aff0-7017c2605f96︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡2898c981-3c5f-448f-ae8f-ef0f6c2cc8c6︡
︠fee96b3f-c6c2-460a-a5f3-4d25d9105e91︠
W = span(S)
B = W.basis()
B
︡490326f6-6bc2-4e22-a982-cd0e2e84ed28︡
︠f71fb46a-ac66-4e49-a1d2-39f3821060e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Construct a <em class="emphasis">random</em> vector, <code class="code-inline tex2jax_ignore">w</code>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <code class="code-inline tex2jax_ignore">W</code> as a span originally.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Then use the three <em class="emphasis">basis</em> vectors in <code class="code-inline tex2jax_ignore">B</code> to recreate the vector <code class="code-inline tex2jax_ignore">w</code>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <code class="code-inline tex2jax_ignore">w</code> using a linear combination of a basis of <code class="code-inline tex2jax_ignore">W</code>.</p></article></div>
︡9e0adce4-680c-4ff0-a90e-b48b81da23b0︡
︠c4edec9d-0051-4c51-ade1-b9634e519754︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡7296f739-549b-4560-a63e-8f8f3de8f7f4︡
︠c675d6d0-024a-4da0-ad14-c9359627e1ed︠
w in W
︡6a4d024d-25f7-4fd1-a0b2-47c7c6efdc1b︡
︠a76f571a-43f4-4af2-acfd-f45cc22a1f73︠
*B[0] + *B[1] + *B[2]
︡b2b210a2-af6a-440a-a6d9-3de99bbc5dcd︡
︠08fbb1c5-3749-418a-abe8-5254cff7b557︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Nonsingular Matrices</span>
</h6></section></div>
︡35f31b4d-0754-416d-ab2c-48f9db8c2328︡
︠b5db8f6d-d742-4b69-a92c-5654f2f8f2c1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡a778308a-d512-47d8-a06a-cb01004f9325︡
︠5ddd50dd-ab3b-4da8-a6bf-07a19b2dbb1d︠
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
︡07ad40e2-e8d1-44bc-ad17-c2f639267d28︡
︠a2f5046f-6473-46ce-a290-a52ac53ecabe︠
not M.is_singular()
︡3512b271-1d59-41c5-affe-f9323f77d418︡
︠24e4796e-a7b0-41cc-a6cc-4c68ea7615b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">A totally random vector with 10 entries:</p></div>
︡dd7c2e58-c008-4015-ad72-acf04eac4b1f︡
︠eed5bf40-8109-491a-aff2-29e1a3f4f400︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡3ef14a18-baac-433d-ad3d-057e611651a5︡
︠1e40f9b1-26bc-42e0-a0c3-dc94a05c6bd0︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\text{.}\)  So the vector <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">v</code> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol class="decimal">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡1fe60efb-f11b-4e39-ae35-211b5cbb9167︡
︠2770d7fd-2ef3-49d7-a3ba-9dcb8174d163︠
aug = M.augment(v)
aug.rref()
︡98b09979-6976-4d13-a45e-fecb95d19b30︡
︠fc8ad244-bbe3-41c5-a41a-309fc24a4e57︠
M.inverse()*v
︡e447f1a4-65f5-4902-ae53-9833806daab0︡
︠2956148b-8f08-44a9-a69e-927d50ebd968︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">The Sage way: first create a space with a <dfn class="terminology">user basis</dfn>.</p></div>
︡a82ff348-ed7f-45ba-ae23-dc55ab58722e︡
︠ac7db60f-efc5-4f21-a914-ce023ae836b6︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡452b2e23-e03b-462d-a8ce-c9dcb07a9b04︡
︠15a30d22-0033-4ba6-a922-7eb5b7532fe2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Sage still carries an <dfn class="terminology">echelonized basis</dfn>, in addition to the <dfn class="terminology">user-installed</dfn> basis.</p></div>
︡407e48b6-bc6e-4029-a6bb-93a586de9fe8︡
︠12891c2d-2da9-4cab-a517-0bbb041d3bc1︠
X.basis()
︡3e4b857a-2a7c-4337-af89-69425466291f︡
︠b4ef0647-1728-445c-ab45-4be9e3d4a0ec︠
X.echelonized_basis()
︡091e815c-964b-4e81-aa46-f92e20204c02︡
︠90caf4b4-15a5-409e-a242-84ba2db5df1e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Now ask for a coordinatization, relative to the basis in <code class="code-inline tex2jax_ignore">X</code>, thus exposing Theorem VRRB.</p></div>
︡2bfe5e31-246d-4a76-a89a-a2e6d0385187︡
︠0b3fa8dd-9010-4db7-a341-de3b40c882a1︠
X.coordinates(v)
︡aacd9667-3075-4051-a785-864c29df261d︡
︠7c73a191-9d11-4316-a58e-a15fe78b6b18︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Orthonormal Bases</span>
</h6></section></div>
︡8950cf16-0b41-4c72-a2cb-17d67bd073b9︡
︠b3213f05-611a-43d2-a5ff-107f6eb4e28a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\text{,}\) collected into the set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡c4de51e5-7478-4fa6-a105-11681d7c15e9︡
︠0add93f7-87bf-40ba-a6da-cec27d0e9148︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡b4392cc2-4590-45ab-af08-ac76fe4fdd11︡
︠6c696963-bb85-4bef-a7e0-f8c6fb53a21c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡479a1f38-3f3c-44ea-a469-4511c1c24746︡
︠38ec3fc7-8f6b-4bba-a6f0-f46153215799︠
Q = column_matrix(S)
Q
︡dd2ba6b6-d364-4f2f-a98f-973f882ba824︡
︠1f24bca6-37a9-4c9b-ab24-bcbfc47ff272︠
Q.conjugate_transpose()*Q
︡7819dd67-39fe-43b7-af7a-327f134923c9︡
︠5427df43-78d6-4602-aefa-92c02e368695︠
Q.is_unitary()
︡ff92761b-a947-4fa8-a297-c2a93c8720dc︡
︠5dcff360-f093-489e-a0c8-89a22efb51b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡e1fa1ed7-fc79-4003-ae1f-6981cb0b65d2︡
︠8b485573-c704-4005-a4f6-460c7c878fd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">A totally random vector with 3 entries.</p></div>
︡1616e7c6-b9db-4dec-a32c-962a3a7c1fbf︡
︠6d584400-ab98-4777-a4aa-0402e4c51e5d︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡dca34f84-f309-4b70-a2bb-dbfede2a448a︡
︠166b9aa1-fa4f-4306-a332-e0deebc1515d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡b6312dcd-fc84-4bb5-a2f8-4e92c8e9a3a0︡
︠16758934-721f-47ca-acfa-538e6574e189︠
aug = Q.augment(v)
aug.rref()
︡1af80723-ca6d-49da-a499-eed7d3c58a71︡
︠49b32cb4-f8e6-4683-a0dd-abc729bff396︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡4df011cd-6c65-42cd-a5cb-376fe99988d2︡
︠e20e220f-f6b5-4be2-a94f-476b645fee7b︠
Q.inverse()*v
︡16d15045-f3bb-497a-ac1e-b6511c67b453︡
︠f6ac8fdc-5c00-48a8-a269-11f631398eee︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡2d4cacc7-9149-42d3-ab09-51b47f6a9f97︡
︠dc528ff5-787c-4199-a549-e9aae2a5d346︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡a12f3bf2-16b8-43c1-ac16-6001be354198︡
︠83aa3e62-189c-40c8-a29a-80a91675bc64︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <code class="code-inline tex2jax_ignore">.inner_product()</code> does not conjugate the entries of either vector, so we use the more careful <code class="code-inline tex2jax_ignore">.hermitian_inner_product()</code> vector method instead.)</p></div>
︡4e8e9bd0-ee88-4a85-a2be-d4f8d0e56a1c︡
︠f5a84441-42fd-4aa5-a0d1-ea5e22e184b9︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡1bfc3407-65a6-4250-a85d-948f2a10b957︡
︠37223564-dc97-42cc-a341-0e58d73f8f8e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡7c59e8f5-dd26-4452-a087-295722f5175a︡
︠6c6b6545-b12d-4873-aa7c-1a561791da92︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡5ffbb51f-ac1d-4a94-ae4c-a56fc875a503︡
︠273dac4a-8ce3-45bf-ad02-53dde7e5a6a2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3ca6952e-fbae-4e0a-aeea-03ee1d5f206c︡

