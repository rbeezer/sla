︠9ea6052c-d721-427a-a05d-d5582e14e671︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡10fb6009-de1f-4f36-aa4c-711c93ab881f︡
︠9209e79f-17d2-46d5-ad89-afbbc4f6f8f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡8948220c-113f-44ad-a975-325ed13d8357︡
︠5d0963b7-0d84-4dce-ab66-1a87868c4009︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8579eeda-5d8e-415b-a011-62bfa4520931︡
︠16e7b122-ee31-4936-a01a-da5a07dec5f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡8186838a-5798-493c-af3d-a18fb87963f6︡
︠578de007-b6e5-4f78-ab7c-82d019893fd2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡62aef9f0-0b6e-4156-a90d-59f3a1c3b038︡
︠29ad8a68-a741-4656-ace7-a4197cb4f642︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section FS</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡f6c9454b-ee22-4f88-a657-efbf93b47bbc︡
︠ea3a4708-2f65-426d-aac3-2a2dab15f91b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Four Subsets</span>
</h2></section></div>
︡5f5899fa-2298-47bf-a56c-887b61677619︡
︠1686e20e-c216-4b82-abe8-770f2719e9f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1"><code class="code-inline tex2jax_ignore">A</code> is an \(8\times 10\) matrix.</p></div>
︡206a75c8-49a5-4f5e-a10d-984a77180010︡
︠0307e8ca-013b-4621-a442-1ea692daaebc︠
A = matrix(QQ,
[[194, -41,  -899, -396,  49, 112,  874, -355, 1139, -1221],
 [269, -57, -1247, -549,  68, 155, 1212, -492, 1579, -1693],
 [16,   -3,   -73,  -33,   4,  10,   72,  -30,   95,  -101],
 [115, -24,  -532, -235,  29,  67,  518, -211,  676,  -724],
 [ 10,   1,   -37,  -23,   2,  12,   44,  -24,   67,   -65],
 [-59,  13,   275,  120, -15, -33, -266,  107, -345,   371],
 [ 36,  -7,  -165,  -74,   9,  22,  162,  -67,  213,  -227],
 [-20,   4,    92,   41,  -5, -12,  -90,   37, -118,  126]])
A
︡eb0f3e80-881c-447f-a5c3-7e224b425f11︡
︠bfdcf0a7-03f1-4039-af95-30352806b66c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡71c4eb49-25c2-46c6-afcf-5ff942148dae︡
︠92056f0b-8204-4571-ab7d-acd951b76441︠
N = A.extended_echelon_form(subdivide=True)
N
︡3e344a34-6b77-40ce-a285-022dc8e705c5︡
︠60394747-ca24-4131-a059-65b82711f16c︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡6dca701b-7d6a-427e-a373-ce876bf8de93︡
︠b007a87c-3f99-4ab1-a8f9-bb743e026d10︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">And build two bigger pieces.</p></div>
︡1c023bab-7da1-475d-a9dc-2979eb8edecf︡
︠fdb0ffb9-a275-44fb-a188-da25400cfebb︠
B = C.stack(Z)
J = K.stack(L)
︡da89a896-2499-49d9-a4f1-dccf2102df19︡
︠ae428eb1-5d5e-46fc-a04b-118e1af1dd1e︠
B
︡6bdae599-6f6b-4ddb-aadf-5f0ee28d46b5︡
︠4111c076-ad50-493e-a4dc-33c41a6a8b03︠
J
︡0452612d-8cbd-4d50-ac9e-8d152308d84d︡
︠c4216839-6b51-4936-a9f0-88ead0dd9a6d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol class="decimal">
<li id="li-1">Is <code class="code-inline tex2jax_ignore">J</code> nonsingular?</li>
<li id="li-2">How are <code class="code-inline tex2jax_ignore">A</code>, <code class="code-inline tex2jax_ignore">B</code>, and <code class="code-inline tex2jax_ignore">J</code> related?  Observe that the matrix <code class="code-inline tex2jax_ignore">J</code> effectively reproduces the net effect of a sequence of row operations that converts <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>.</li>
</ol></article></div>
︡822a4838-2937-4bcb-a26a-2e209006ea14︡
︠79794c27-4407-4cb4-a7db-20a41342a2cb︠
︡735ed9bf-0f40-471c-ab8a-7bb1fc54ef7b︡
︠afffec99-c981-4af2-a6bb-126c468aa792︠
︡24124ffd-8b60-4d10-af7b-b9e1537ed257︡
︠48b6bf5a-de54-4f25-af2d-bd6aebe6ab8f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <code class="code-inline tex2jax_ignore">b</code>.  The row operations that convert <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <code class="code-inline tex2jax_ignore">B</code>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡2d8e33d9-db83-4f76-a478-1368d44bbe74︡
︠ea1685a6-f817-4c1f-a257-b7a10864312b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <code class="code-inline tex2jax_ignore">b</code> is in the null space of the matrix <code class="code-inline tex2jax_ignore">L</code>.  So consistent systems come from the vectors in the null space of <code class="code-inline tex2jax_ignore">L</code>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡50677ed1-5ca7-4468-a49e-b46566dca1ec︡
︠d4c3b418-6750-4ea7-a6e0-595beb1c7bd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-7">Illustrate the previous discussion with a random choice of the vector <code class="code-inline tex2jax_ignore">b</code> from the null space of <code class="code-inline tex2jax_ignore">L</code>.</p></article></div>
︡8aa5e59f-ef64-405e-a7bd-716dc58e10af︡
︠62a08861-851f-4914-a890-511bee16c366︠
NL = L.right_kernel(basis='pivot')
NL
︡3d9ee265-3fa5-4e47-a3c0-4125d04f612d︡
︠85b1493a-e7a9-4d9d-a5c9-51b7798b8fcb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">We create an arbitrary element of the null space of <code class="code-inline tex2jax_ignore">L</code> with a linear combination.</p></div>
︡c418652a-002a-4af4-a740-0a1c295a4e91︡
︠965bec00-6118-4bb8-af3d-04720ab6405e︠
NLbasis = NL.basis()
︡1f47a33b-4ac6-4382-ac85-9890baa71f76︡
︠d8520063-bbe8-4110-a4d9-a7247de2402c︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡6f5c25d9-9947-4169-a2a7-b4ed86b7807b︡
︠cea2bd78-601b-4831-a16b-8107f8da06b7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9"><code class="code-inline tex2jax_ignore">b</code> will create a consistent system with <code class="code-inline tex2jax_ignore">A</code> as coefficient matrix.</p></div>
︡175ca1a1-902b-4bae-adc4-8568c51a010b︡
︠913fed08-f991-445c-a328-7aed3b355365︠
P = A.augment(b, subdivide=True)
P.rref()
︡f072f60f-ef88-41dd-ad0f-67a55e0835ca︡
︠bba3e99f-88e1-400e-addf-d4779c5a59f2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">The column space of <code class="code-inline tex2jax_ignore">A</code> is equal to the null space of <code class="code-inline tex2jax_ignore">L</code>.  This is part of Theorem FS.</p></div>
︡3bedfc79-b01a-422a-a108-0dd7574b1941︡
︠c7ca5b7d-43d6-4d09-a81a-118e8d5d867d︠
CA = A.column_space()
CA
︡7354da04-8576-4b56-a5d7-fe97d253fea6︡
︠b29066b6-b3c2-4977-a0d5-7c404129527f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Since the vector <code class="code-inline tex2jax_ignore">b</code> leads to a consistent system, we know it is in the column space of <code class="code-inline tex2jax_ignore">A</code>.  But we can check with Sage.</p></div>
︡8212388e-f41b-46b3-aec0-44d851a8bfa2︡
︠f250489d-7828-4394-a771-7b544a6e21ec︠
b in CA
︡4df9e427-2904-424d-a7b5-830d847e3a01︡
︠64e6eca0-4da4-41c8-af44-4c75af92ddce︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sage relies on <dfn class="terminology">echelonized bases</dfn> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡e32d9094-1e1c-4238-ab2d-f796c3665432︡
︠2154ee58-3775-4398-ab5b-9522cf625c68︠
NL.echelonized_basis()
︡e8a3d922-2599-4bc3-a388-f2d24a1ac663︡
︠f5ca893a-c506-4eb3-a1fc-aee80222df94︠
CA == NL
︡289e2286-c4cd-4aa8-adc7-a668e7b19902︡
︠e2b81ea9-47e0-449b-ad77-41eb9d25ecee︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡ec1a428e-cd5b-4ea4-a97b-1ccf76caba69︡
︠955afad8-9a5f-4539-a9d1-4ed1e57b0266︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡bfc1acc8-453a-449e-ae2c-f7bd9920422a︡
︠3c6b5492-fff7-4d1d-a81f-a7157baceb62︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡cae2547f-66e6-4ec8-ac59-bf1d589f57ab︡

