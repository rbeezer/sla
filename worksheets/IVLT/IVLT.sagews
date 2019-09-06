︠c9f228d9-9379-478d-a6ac-13fbb482d834︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡50d52fe0-8740-41c8-af22-b36be2075d08︡
︠168fbbea-b71f-483b-a02e-3d2990c98178︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡99e289d7-38f5-4878-a48b-3c855261be23︡
︠6cc4e4eb-c24b-48d3-a12c-c585be7103f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡66f3be89-a4cf-405c-a46f-035980702741︡
︠25496ed5-8ad4-48ec-a437-e7a330eda971︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡2a763d50-2dbf-413e-ae82-5690ac189b11︡
︠d3b4ae10-f4db-43ff-a2e7-43ed48a51413︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡5e7031f4-1f9f-4adf-a9fd-030f047aa9fb︡
︠c4935d45-164b-46e8-a577-28b37b8f6285︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section IVLT</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡e4a77f4c-4638-4297-aafe-227d5f9eef17︡
︠5fcf74fc-0434-4d5e-a40d-32fbf5a94985︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Invertible Linear Transformations</span>
</h6></section></div>
︡0e5dec1e-812c-46f1-a442-2842347ddc76︡
︠18575336-1c84-48e4-aa28-c411645e23a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡9c2e3727-d435-48c3-ac76-53b752ba1edb︡
︠878a6c18-3ec7-4444-a81c-f7fae5dafe8d︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡a042aafc-33af-4bf4-af76-b7db1c0f60df︡
︠e7f2aad9-60c1-4070-a578-b3f9f1600c0e︠
T.is_injective(), T.is_surjective()
︡cf5b2f6f-9d06-4e1e-af65-7297b8919ae9︡
︠8a8e6aed-a7ab-4e8c-ac83-205b71413db2︠
T.is_invertible()
︡74d034b1-169c-4175-ae4d-26d825976d42︡
︠fc7cca18-b2e5-4f0c-a4e1-117e9a321af6︠
S = T.inverse()
S
︡cf23cfdd-7905-4ef6-ab35-c4643ff72011︡
︠6e192d8f-a09b-468a-ac3e-10375664e84f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The <code class="code-inline tex2jax_ignore">*</code> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡abec409d-04d9-4f31-aaf5-805b8b2ef074︡
︠02fee4f8-1fce-49c2-ab61-0f26aa2c91c1︠
comp = S*T
comp
︡5d35b19a-9ba6-4a32-acf9-d08f63a9f3ac︡
︠40a855af-04aa-4a4e-ad1d-7ed0e439d3c8︠
comp.is_identity()
︡018aaef4-d088-4b3d-a91e-78c58bac47f1︡
︠0f399d79-249b-4d4f-aae0-8594b205e5dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Defining an Invertible Linear Transformation on Bases</span>
</h6></section></div>
︡6dda667d-f929-45fe-a49c-412e6d072ecf︡
︠c3d9d305-10f3-4943-a78c-4de6b54bc6a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡67b30960-e70d-4ba1-ae1a-b679d2e1ea89︡
︠3e0f2189-1602-43cc-a5be-f656f29e388b︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡1ca2bc34-55b6-47f3-a44e-3348a4a42ecb︡
︠ae741315-77a2-4e21-a266-0aa5259c9bb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Vector spaces with defined user bases.</p></div>
︡755fa62c-ca36-4d28-af4f-54afac439ef4︡
︠569a6418-0d33-4406-adfa-d4f74a39dc8d︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡1d4b8af9-3f76-43b6-aa85-55a4cef08cd0︡
︠9fdea589-fb96-41d2-a87b-dc081d70efcc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <code class="code-inline tex2jax_ignore">D</code>.</p></div>
︡f6bd553d-f298-49b6-ab3d-60979a50b4f8︡
︠0ffbc40f-2f2b-48b6-ae79-cda5530b3bf3︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡3f23af7b-e9a1-443c-ab23-4f1f46251611︡
︠950c8abf-5a90-4be4-a897-be6ddb401562︠
T.is_invertible()
︡7087c017-0719-48d7-ac51-41faed62d784︡
︠9f516128-920b-4c88-a45d-5af54d2a0028︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡5b8adfb0-8528-40f1-a837-6915e6310323︡
︠c7e41c3d-cb2f-443f-a6c2-d2ce8b4bd5ff︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡8b67f843-61f9-404c-a0a8-37bf63baf80e︡
︠789e0974-dd5c-4760-a36a-c92898b43bd3︠
S.is_invertible()
︡94c33cdb-1a97-460e-a745-20f498c4d00a︡
︠3affd3ca-ee47-45b8-a42c-95d99616bf6b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡9a6993c6-eb43-43af-abf2-887520c3783d︡
︠4d8a61e3-8ced-4028-afd7-2509b2a86109︠
comp = S*T
comp.is_identity()
︡f477ee9c-1290-4fa2-a8a0-fc605120992a︡
︠32ea9d83-a964-4a6e-ade8-de43ea51aeac︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡9df87950-c092-4448-a217-ae5f2397446f︡
︠1fc0749d-46de-4913-a244-9f3ee628d7c3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Rank and Nullity</span>
</h6></section></div>
︡6e33eb88-8ce6-4b78-ae9c-33b72ad42acf︡
︠e2d16cde-45b2-4c6a-a454-088cfa6df87b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡76e58415-26ad-4864-a3b9-8b2072befa66︡
︠5ed33575-aab5-474b-ab86-40271a9c886f︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡fcdcf117-7b12-4097-ac4f-3905010ad824︡
︠7105df7e-7e98-4191-a866-8908e19fb77d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡bffb4cbc-b2a4-4bbe-ad45-4ce44d6ec253︡
︠003fc8c7-47af-4c5a-ab2f-07becfb2e743︠
R.image()
︡b54f4171-8b83-4a49-a50c-4030ff0a1e26︡
︠2eb6d074-100a-43bf-ac1f-85fc6eb69d4c︠
R.rank()
︡36afd804-d15d-4b99-aa6a-af09b687d241︡
︠e7897517-ae90-4c59-a600-0af14b8c25f6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡6def6548-df66-4f3b-a99b-9969ba537796︡
︠ef4cfa24-3039-473c-a2c5-e6f4fbf4f6c8︠
R.kernel()
︡da8177c9-bfae-4811-a54e-b24b736785d4︡
︠daf5b6c8-087a-460b-a85f-612bcaf2178e︠
R.nullity()
︡c59bb518-d105-4c75-a70b-76c92841b583︡
︠459d0432-c13c-46f3-ac73-7ea48ddce817︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡c5c53d96-f582-42e2-a6a9-a2856123d1cf︡
︠8855e827-f1d7-44f6-a660-002969a8c799︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡622b7049-74a5-4bf5-a16b-26c502eaab24︡
︠49675d7a-7fe2-44a1-a9c7-5ee13e329edc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡22599b60-5ef4-404e-a2ea-93984d68f06d︡
︠aa8ad385-d2a9-41bf-aef5-e09392403677︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8220cf34-5070-4a8b-a97a-f5a984bd4e3c︡

