︠7c89fc04-bb48-452e-a0ec-8f356b1d83e6︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡d525f21f-6dbb-451e-a31d-09c3f3e0074f︡
︠e1517439-3a6f-45b0-a3f2-0fcd3b02c0a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡08259a9d-3d79-4cd5-ad14-f14cf77f9404︡
︠50c7561f-35cb-4f98-a469-96bd3a5a9ffa︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡34a0c06d-fa3c-4525-ad6c-6031e6c41631︡
︠84c0aba0-cc2c-44e2-a699-0aae816ca07e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡50320ddb-ea80-47ce-a938-332e2a086a9e︡
︠9eec0fae-a882-480f-a792-fd52b8db046a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2091ca07-9af2-4d82-ad0c-f09525d01e47︡
︠977284d8-b63b-4814-aae4-6d503751860c︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section B</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡e936cba9-46f7-4278-a626-b841989e9159︡
︠d331afd4-81b8-48df-a042-70bc144a3db9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Bases"><h1 class="heading hide-type" alt="Section 1 Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Bases</span>
</h1></header></section></div>
︡79caa797-b287-4a14-aa29-c9976aca5f81︡
︠8fa5a4c4-c865-4f06-a4a9-d736e91b37bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Five “random” vectors, each with 4 entries, collected into a set <tt class="code-inline tex2jax_ignore">S</tt>.</p></div>
︡83b29676-a4f0-49e1-a03b-902c7159d908︡
︠59c0b573-c17b-420a-a30d-f9e2654be14f︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡9985a3b2-773e-436f-ae9f-b899bfffbd00︡
︠caa4f58b-7f2b-4e61-ad4a-d037af69e27f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <!--Style me with CSS--><em>rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡339d8931-4a17-45fd-a7c2-1a251d4863ad︡
︠2d1cb95e-b99c-40fb-ad68-0823d402c767︠
A = matrix(S)
A
︡48564009-fb39-4738-a31e-c17f45357fce︡
︠616c7bd7-5c28-46ab-aedc-dae4929c71c3︠
A.rref()
︡f346fc2c-3896-40f1-acef-9b9702aaf1bb︡
︠5bea2e65-aad4-41e4-a2b2-14daced78c84︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡7e069240-8fa5-43b4-a7ef-af47a1678e31︡
︠2b021955-9d54-4390-a71e-7bdc38d9f572︠
W = span(S)
B = W.basis()
B
︡6ad7df02-5a0a-4e43-aeb4-c30af32cc124︡
︠49f20c11-f7b0-4194-a570-a43af3d1fa32︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-4">Construct a <!--Style me with CSS--><em>random</em> vector, <tt class="code-inline tex2jax_ignore">w</tt>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <tt class="code-inline tex2jax_ignore">W</tt> as a span originally.</p>
<p id="p-5">Then use the three <!--Style me with CSS--><em>basis</em> vectors in <tt class="code-inline tex2jax_ignore">B</tt> to recreate the vector <tt class="code-inline tex2jax_ignore">w</tt>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <tt class="code-inline tex2jax_ignore">w</tt> using a linear combination of a basis of <tt class="code-inline tex2jax_ignore">W</tt>.</p></article></div>
︡f8cebcbd-da48-4b62-afba-f5e3fe6d0684︡
︠87c46811-5eca-4770-a97b-3602901fe156︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡5ee224a4-6022-4aaa-aa41-6887b28c16d7︡
︠d36b58f0-d51f-48ba-a36e-4c6d41fce02b︠
w in W
︡8feeb47b-5416-4492-afc8-d154e96d54e8︡
︠078f533d-e82f-4f69-a166-a47f869f3f42︠
*B[0] + *B[1] + *B[2]
︡85904f48-c31f-4205-ac1c-2c0ac915855d︡
︠7d21d702-fd51-4c81-a243-e7fe2b731086︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Nonsingular Matrices"><h1 class="heading hide-type" alt="Section 2 Nonsingular Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Nonsingular Matrices</span>
</h1></header></section></div>
︡e0411181-38e9-49b1-abd5-ebdeafa13c2c︡
︠30c71e9a-fd2e-46ca-a787-c73a5da0edc0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡af077250-c5df-443c-aea4-57b8205c14ae︡
︠54e5c581-5562-44b6-a091-4f8f7b0d7212︠
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
︡067ec335-49ab-4ce7-a2f0-34fc47754f76︡
︠18d86aba-f039-4cf8-a328-36c331aa6fae︠
not M.is_singular()
︡5b624ccf-7c0b-45ca-ae0d-634377412a1c︡
︠868e9cb6-c33c-4e89-a979-6eda14256407︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">A totally random vector with 10 entries:</p></div>
︡08e87853-e161-4d4a-a7d2-040df1217857︡
︠060ff874-c563-4747-a2b5-4ca59a7cbe51︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡6587470b-cc13-4f97-a7c3-d1f8682d4dca︡
︠f3f7b4fb-fc81-4f8b-a607-9d885e18c669︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\).  So the vector <tt class="code-inline tex2jax_ignore">v</tt> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol id="ol-1" style="list-style-type: decimal;">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡05d0d94c-548d-4586-a1e6-88401af32ca8︡
︠6be3bbc0-8141-4fa9-a5b8-c40042b46d00︠
aug = M.augment(v)
aug.rref()
︡66b4a706-798c-4b77-a4d3-c97dab050620︡
︠7972e1af-7280-4e37-a685-95e039c3eca1︠
M.inverse()*v
︡d1a4495e-8d01-4df5-a55d-ae39f62b9083︡
︠154c995f-7ec8-4fa7-a4fc-2ab53ac5656e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">The Sage way: first create a space with a <em class="terminology">user basis</em>.</p></div>
︡983e4d7a-cf89-4784-aed4-b0e65112777d︡
︠61590a77-446d-4ed5-a2c3-6734e96fbd73︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡bd4074af-cf33-4d11-a24d-6a59f3363e4b︡
︠2f8700bb-f8a2-4c74-ada8-b130b24e97dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Sage still carries an <em class="terminology">echelonized basis</em>, in addition to the <em class="terminology">user-installed</em> basis.</p></div>
︡2fdb6db2-9bb4-4d7b-a246-b08e03141abf︡
︠7ef59635-8c04-40eb-ac00-3b0ba1eb5051︠
X.basis()
︡fd0f2955-fe2f-422e-aeef-f1b0c51b07b6︡
︠9b49a63f-c2ee-4201-a0ef-0d1bee0f9175︠
X.echelonized_basis()
︡801cab2d-bf09-4e3a-af49-f47105f0592c︡
︠eadf67b9-5796-4179-ac7e-572c82183616︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now ask for a coordinatization, relative to the basis in <tt class="code-inline tex2jax_ignore">X</tt>, thus exposing Theorem VRRB.</p></div>
︡3000077b-0d39-4351-ad19-b61e391425b3︡
︠bf3cf337-f343-4d88-af5a-901ae4409655︠
X.coordinates(v)
︡904dc41f-b130-4418-ad1d-8ae94de9d7f3︡
︠d9317058-0193-41e5-aab6-8316c64bf23e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Orthonormal Bases"><h1 class="heading hide-type" alt="Section 3 Orthonormal Bases">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Orthonormal Bases</span>
</h1></header></section></div>
︡50882f98-8992-4db0-a25b-9dfa4b087faa︡
︠efa78c71-5fae-4189-a1af-d3dce18eafe4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\), collected into the set <tt class="code-inline tex2jax_ignore">S</tt>.</p></div>
︡9d444d1b-e6b9-44c1-aeec-eb0b8ec0d70b︡
︠c990edef-9d64-46b1-a890-58c534405275︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡e3f74d42-de03-427e-a4f8-4500b35f4a1c︡
︠ff0e74bb-79a7-4cce-aa1e-25436f7beb50︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5>
<p id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡750837cf-348d-4c5a-abfb-a21e57dc3c78︡
︠dfdd7154-0899-466e-a02e-cc0db559286a︠
Q = column_matrix(S)
Q
︡039e11f6-60ff-4956-a768-5256f0c49ecf︡
︠8d31b53b-b9bb-4951-afd7-839d99d5e73b︠
Q.conjugate_transpose()*Q
︡7b8ad4f1-fbbb-4740-a84d-fc189a2700e3︡
︠b5f30d80-e8c9-443e-a4b2-2be348e6fe6e︠
Q.is_unitary()
︡113154ee-5d61-47b4-a5f0-82b76ff46f2c︡
︠d4e15454-3a29-4c94-a1f4-177dedde13d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5>
<p id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡0a8ebe31-36c5-408f-a59e-ab5184e62090︡
︠4abd96bc-8e34-443d-a396-13175ac40f4a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">A totally random vector with 3 entries.</p></div>
︡f94a7d12-a91d-4e51-ab9a-1ad323df7eec︡
︠8d5c7c98-f321-4106-a2cf-ceaa1ddec4da︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡05861f3b-83fb-440c-ab28-af6597376fc3︡
︠ad924a17-6ab6-45f6-a2a9-a591b39ea0d6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡373da78c-fe6a-45ca-abe4-59afa5233c31︡
︠379743fc-feb6-4902-a3c1-82a214847b1b︠
aug = Q.augment(v)
aug.rref()
︡c425c69b-38ae-4e3f-a17c-20ec300b4875︡
︠3495a5c3-10cb-4faf-aeb7-ad88ab9b7d3e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡273cdd1a-13ad-4e97-ae73-521dbb94601a︡
︠f312ff01-9153-4e3c-a624-976b516e6df7︠
Q.inverse()*v
︡7eb91b92-d232-4625-a297-73fee4f43522︡
︠da18433d-50f9-426b-a894-0070e64eb84d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡a17b9ced-94e9-4d0f-a898-d99597be676a︡
︠41bcd58c-3201-4bd2-ab6b-345d9f45ead4︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡5161e367-fa9f-4b5d-ad03-947e11e57c04︡
︠166775be-cb86-4a3b-a81b-caf390576d47︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <tt class="code-inline tex2jax_ignore">.inner_product()</tt> does not conjugate the entries of either vector, so we use the more careful <tt class="code-inline tex2jax_ignore">.hermitian_inner_product()</tt> vector method instead.)</p></div>
︡25d8d5e8-3b3b-41ee-ac7f-83a8739cafae︡
︠7c4551a3-aeee-490d-a8d4-7572ee57bf65︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡ee23475e-bfca-4e6a-abe7-06d78b6d21d9︡
︠075b81be-fa92-47e4-adbb-92bd4a40e671︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡779c21ee-0d99-4007-a5d3-076c5a69b402︡

