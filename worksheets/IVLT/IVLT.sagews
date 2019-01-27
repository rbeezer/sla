︠064ece0d-ab79-43ed-a2a5-a1b93be96105︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a1ce08c1-67cd-40fc-ae26-3d8f6bb54165︡
︠6073f7cb-8234-4044-ac27-364b5b700b26︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡1978c6f9-28b6-4dba-a18c-8b3d699d999c︡
︠0a6833f2-c2a7-4873-a39b-0263fdc8b624︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡33f9b2ca-59c0-4057-a491-f936d349cf0f︡
︠d6d52276-fd65-45e3-aa4c-4682a827152d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡bf4947cc-db94-41f3-a597-1ed918230392︡
︠0525f7cb-3a7c-4e8c-a2e5-9f47950b90e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2f8547c1-2fba-4ca3-a8c1-e502d98d41e3︡
︠403c6842-9715-41ef-a47b-56169ef1c42a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section IVLT</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡86bc3157-3ee5-43f4-a34b-e91ffaefcb4e︡
︠5c41972e-e6dd-4c1c-a041-c3ae3a9195ce︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Invertible Linear Transformations</span>
</h2></section></div>
︡32b83406-3fc0-4c82-a996-a5953cfce92b︡
︠75d2e16e-7ad3-4aac-ac35-3ebd3f92c8ce︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡3341622d-197e-4d19-aaec-f1abeea8060d︡
︠440856b8-3c1a-4bfc-a49a-19bc5aaf2b53︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡8a783dff-52b7-4d76-a9b0-4ca08fa2ede4︡
︠06f8f35e-2b1e-42e5-a980-acd4c6478347︠
T.is_injective(), T.is_surjective()
︡85d7ecb4-adfc-4c2a-a1b2-26ffab5f3e27︡
︠5ad32bfd-fabf-4671-a18d-4b33aef0d2e0︠
T.is_invertible()
︡a4a77d37-b226-428d-a396-0d141c20c02b︡
︠0c0b4787-f3a1-4aca-a804-e12053c73986︠
S = T.inverse()
S
︡483447cd-fc19-4db6-a736-c28e3d10559d︡
︠ce603a80-77c8-41a4-a828-feb7ce4eea38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The <code class="code-inline tex2jax_ignore">*</code> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡707e0a88-b0f7-4911-ad93-6811fef4cee0︡
︠760e409c-84d8-4c6a-ad43-1ac3cb1b0dae︠
comp = S*T
comp
︡d14d08e9-57e3-4faa-a98e-d999d55e15cb︡
︠49d97d25-78c5-4bc0-a568-442edf43e68a︠
comp.is_identity()
︡2d3f6bc9-131e-49ca-a921-2754534a620f︡
︠c2c023be-cc2d-4bca-a65d-774dca005625︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Defining an Invertible Linear Transformation on Bases</span>
</h2></section></div>
︡6f82fa6b-938c-4138-ab9e-906ee28e3d56︡
︠3b5ce565-0f88-4b9b-a455-2e59c3b52f28︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡564b2209-8180-4a49-a59e-acd05941e701︡
︠f5831a61-3e3c-4fd1-a83a-7e74fce3dcbd︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡eb36e415-654a-4237-a3ca-e3958826cf37︡
︠c1208159-7bfb-451e-ad5a-84e1969bc6b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Vector spaces with defined user bases.</p></div>
︡e811892d-3a92-45f3-a4c9-f5dd6740316e︡
︠14625ec8-c035-4284-a6d1-fc7dad4ee705︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡51ab40a0-960c-4c34-a192-29fa697b8628︡
︠b7953d6e-ef4f-4b12-a02c-2561fcb673da︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <code class="code-inline tex2jax_ignore">D</code>.</p></div>
︡c825e635-4249-41fa-a40c-031640307b34︡
︠5fd75cd9-12b6-4bd6-a516-21937e4beb62︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡0b1e37a1-0c3c-42e9-a84a-f6c9a47ef596︡
︠8a198513-620a-4e29-a8bd-3b404e4bd417︠
T.is_invertible()
︡a91c3a25-d87d-4360-acfc-a27e3bd77ac9︡
︠272336e6-bce3-4a29-aae8-78be7ea56103︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡b2ad6e44-4003-43a5-ad53-6cc2b3159879︡
︠b2b50145-6856-4b91-a176-4d210e513e9b︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡74d3ae5e-3b78-4222-a349-997ca7af9ed2︡
︠9577815d-0887-41aa-a4ee-e87541df17ee︠
S.is_invertible()
︡a841fc35-94d2-4bfd-a63b-523c88e680d6︡
︠f7f39efc-3911-4bd1-a935-48785f135932︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡02af53e5-02e1-44ae-a532-b8a20f2137b7︡
︠aca5c08b-59e4-4b2e-aa81-c3a66a68ca08︠
comp = S*T
comp.is_identity()
︡1a5c01c9-d22b-46ed-a486-64a1b0b288c8︡
︠1e36a487-d69f-41fe-af46-5bafc6f88804︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡12359e92-568e-469e-a492-aed5eabe2373︡
︠885cdfa7-10da-4f43-ad8c-03be8a839a70︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Rank and Nullity</span>
</h2></section></div>
︡d083c626-d47b-4e6f-a147-e5ba335c7e6e︡
︠e4e77bea-2be9-47cf-a6e4-ed998ddd95b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡4a431cef-60b5-4921-a990-d8d7254f3d5e︡
︠e982cafa-96a5-4b48-add2-dbab3d07c452︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡24bb6756-1fcc-4571-ae4f-01bbce8d651c︡
︠74020795-db59-48b1-a995-8973541d2834︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡4a85c9c6-f924-43a0-a549-ad32086269a9︡
︠df3640f0-7eaa-43e5-a339-de6017989f14︠
R.image()
︡9e4d58d4-9534-4f63-a4a7-e75486b1e510︡
︠aafe7475-91ad-46a3-aafe-1d572dedfd30︠
R.rank()
︡deacd215-7a62-47dc-ab7c-a99f0bde9cbd︡
︠d8b758a6-d114-4492-a149-de26e31c1b9d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡8653dbb8-1993-4ddc-afe1-9c0c2ff4b1f4︡
︠e7a4b806-010a-45d8-a1d7-37333633ae4a︠
R.kernel()
︡331e8c78-37a3-42f1-ab1f-24668acbd7a2︡
︠1e62cef3-73b1-46d0-a882-7b7e1f8eb656︠
R.nullity()
︡864f90d9-44cf-463d-a6b6-931013fa2b07︡
︠19e68865-1aad-4a01-a77c-d00f0230c5cc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡dd5c4d4a-365d-44fe-a575-2553465871e3︡
︠ec13851d-0545-4285-a0ed-602c4729faad︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡d99fd24e-0434-4a6c-a07b-dec0a07d9774︡
︠54df4a18-92dd-4674-a38b-e6aa64ae1359︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡8be5a20c-aae7-474f-ab78-75e1045a37e8︡
︠4324dd6a-8c35-4c4b-a484-57d9ead24a14︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡968ba591-02d3-4797-a2df-7374c5fa834a︡

