︠2adacd2f-6cce-42a2-a5cc-aeab7adb1b26︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a418fe62-edea-4b05-ad61-9004c7f93055︡
︠7fa98a7e-c5ca-4f7b-a551-6e263ee3714c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6bc155bc-3710-4217-ad6c-fdb14f022746︡
︠4a21c767-4af6-4a28-a2ff-efca11913c98︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3d26fee5-63f5-49a7-a1c7-0b7d59efa2c4︡
︠610fc61f-4e63-4263-a6d5-a6df8e720d46︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡aa7ba41b-45aa-49c0-ac3e-1d5eddd40e14︡
︠4cfc7909-54e0-4f8d-af41-e6f35c120102︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡65f517f2-057f-4667-a46c-5524871aa1ba︡
︠41f371b7-3bda-4a41-a287-eed03584f26b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section CB</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡dadde4e9-c25a-4d0e-ae27-6053189ac8d2︡
︠4bd18b67-529a-4c7b-ab5d-2ce7f008bc19︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h6></section></div>
︡f64c7d8d-4e0e-49c5-a48a-2a701611fde1︡
︠6d7aaf73-cb1d-4aa9-afe2-a1c11e83080e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡96c11718-ad4c-4ae6-a4e5-6873a912c1ad︡
︠044c5546-de42-4bf1-a24f-8b8fe280541f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡2236e9b3-0924-4bd4-adf9-d745738f3d45︡
︠d670c698-9a1b-4ed9-a3b8-c800e746674b︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡d1141ebb-6458-4045-a980-249257aae022︡
︠bf3d45cf-1247-4a5c-a0e4-109a3f2d90eb︠
T = linear_transformation(A, side='right')
T
︡2aa67fb3-ed63-4418-a127-647febe18816︡
︠340ea8d6-cc42-4094-a8a6-f0a7093ebb7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡1b129cb7-3747-4a41-aedb-5dc05ca8b532︡
︠25d48703-e4a3-4b58-ac36-8934a9041ba5︠
D1mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D1 = D1mat.columns()
D1
VD1 = (QQ^n).subspace_with_basis(D1)
#
D2mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D2 = D2mat.columns()
D2
VD2 = (QQ^n).subspace_with_basis(D2)
#
C1mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C1 = C1mat.columns()
C1
VC1 = (QQ^m).subspace_with_basis(C1)
#
C2mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C2 = C2mat.columns()
C2
VC2 = (QQ^m).subspace_with_basis(C2)
︡ecbb1431-7252-4517-adeb-3657bf0b327d︡
︠86a41b85-d073-42c4-aaa3-6e9b65a70d98︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡b2e6602e-5ffc-4319-a8c4-b225e9a80b6a︡
︠42c2833b-29b1-46e2-af6f-322670f180df︠
D1
︡a1164a97-5b10-4d7e-a075-fb712e210a1e︡
︠acfb336d-bb8c-4b64-aa6b-f5677869a64c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now we build two <em class="emphasis">different</em> representations.</p></div>
︡4e84ab70-83b1-4077-a41d-01379aff4a58︡
︠7a6fe0b6-14ac-46a3-aef5-cf7f60a60e05︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡770e7fe3-507f-4cea-a0c9-698e9ff35f25︡
︠5ad58446-8a60-4a3e-a44b-da469e582a84︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡0ded3628-da34-4ad8-a91c-4f79617b9a62︡
︠f6fe4357-b31e-47cb-a06d-dbd5436cef64︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Change of Basis Matrices</span>
</h6></section></div>
︡15b14f49-60c8-4f45-ab4b-82667b9d88df︡
︠df580985-2e6e-4752-ac07-899ff0a9d31b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡3fa87a20-05e6-435b-a62c-ea579584e680︡
︠1bfb4766-76b6-4dfc-a96e-549bc3048fa0︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡fccf706d-7e43-4413-a1aa-f0e9bbdb05ab︡
︠6a729e30-cbf1-4f33-a24d-c4ebe97b5700︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡27baa59e-5694-4798-aabd-8826400bb63c︡
︠76320d79-bdf5-427e-aa1a-893a07b13677︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡3ed61d48-7067-458f-a430-fba26ba1ce84︡
︠5b222406-c872-40db-af1e-f0aa315d31cb︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡517839c4-09c7-4cc5-a7b6-6b715b2b95d5︡
︠1269ba28-f31b-4be8-a054-7cffd5a0046d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Same drill in the codomain.</p></div>
︡97000ca3-4a76-4534-ae3a-2b62b47558ab︡
︠6336443e-879f-4de2-a2d6-cf232d8a3d2d︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡991c0513-49ad-498b-acb9-2795bb235518︡
︠2a137188-4c1f-4ab8-a673-fab8f631a96c︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡1963dd46-6937-49d2-a13a-5240a37e527c︡
︠f955c331-99ac-4149-a45d-eb03cb749c71︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡96aec72f-8b93-48b7-a20d-ff8f25aa9460︡
︠5f60e371-20cc-4348-aa78-867069603f4a︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡0aa7a9a2-ad27-496b-a112-a991afb00f04︡
︠90f47ad2-c8ff-4f95-abb7-e5076a72b71b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Diagonal Representation</span>
</h6></section></div>
︡cbbcf36d-5364-425e-a819-ffe075be7669︡
︠134df405-2588-4abe-a84f-24f146705f6b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡88fd5e16-44bd-4c68-abfd-a21a360b65ad︡
︠13500bf2-136d-4034-a9e3-696839e4459f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">First a matrix representation using a square matrix.</p></div>
︡3b28c24b-45eb-43fe-a78d-ae607aa5efb8︡
︠ee317f4c-b819-4349-a2b1-f6067702df28︠
A = matrix(QQ,
[[ -2,   3, -20,  15,   1,  30,  -5,   17],
 [-27, -38, -30, -50, 268, -73, 210, -273],
 [-12, -24,  -7, -30, 142, -48, 100, -160],
 [ -3, -15,  35, -32,  35, -57,  20,  -71],
 [ -9,  -9, -10, -10,  65, -11,  50,  -59],
 [ -3,  -6, -20,   0,  58,   1,  40,  -55],
 [  3,   0,   5,   0, -10,  -3, -12,    1],
 [  0,   3,   0,   5, -19,  10, -15,   25]])
T = linear_transformation(A, side='right')
T
︡717b2fb6-b6fd-4032-a95e-b45bac2bf0a1︡
︠8220d409-bb0a-480d-aba3-957e02b3da38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡bcaed83d-2e82-4912-a7cd-a522434f629a︡
︠a57534e6-105a-42ec-a558-2fe512862f8b︠
v1 = vector(QQ, [-4,  -6, -1,  7, -2, -4, 1, 0])
v2 = vector(QQ, [ 3, -10, -6, -6, -2,  0, 0, 1])
v3 = vector(QQ, [ 0,  -9, -4, -1, -3, -1, 1, 0])
v4 = vector(QQ, [ 1, -12, -8, -5, -3, -2, 0, 1])
v5 = vector(QQ, [ 0,   3,  2,  2,  1,  0, 0, 0])
v6 = vector(QQ, [ 1,   0,  0, -2,  0,  1, 0, 0])
v7 = vector(QQ, [ 0,   0,  2,  3,  0,  0, 1, 0])
v8 = vector(QQ, [ 3,  -4, -2, -3,  0,  0, 0, 1])
B = [v1, v2, v3, v4, v5, v6, v7, v8]
V = (QQ^8).subspace_with_basis(B)
︡93018456-a66f-419e-ade4-6034657ecad4︡
︠578681be-755e-4568-a436-897ced26ce09︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡361bdad8-85ed-4344-ac88-212ad08f74e7︡
︠e1e0dbaa-33f1-4136-a50e-d2ffdd06c7ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡f9ddab94-6d85-4f99-a5f9-3cc3ca0d0d4b︡
︠84552f1c-479c-4d86-a6d5-012d4f85c931︠
A.eigenvalues()
︡5b6a18a2-4e9e-4b66-a2d3-8e4bc9a5e7e1︡
︠93dfef88-2d7c-4b23-a151-5d0a8c3312b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Some (right) eigenvectors.</p></div>
︡4432311c-9491-4054-a479-5c756f2933ce︡
︠30272684-328d-4492-a8d9-12688c8a6ce2︠
(A - 3).right_kernel(basis='pivot').basis()
︡a23d9642-a853-459d-a81a-23d8c5550b1e︡
︠ec02aa8f-c371-46db-a45d-e80c0d252214︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡1f111cba-b8d3-4a41-a587-27f34f165496︡
︠8a6ac868-2210-45b4-a60d-e35d79c901da︠
T.eigenvalues()
︡865e0176-a99b-4ae7-af58-c3b213cdccfa︡
︠670c60ed-7871-4410-ab05-3d9ffa3b8f88︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡affab5b9-332a-446b-a42b-a58448f8477c︡
︠f2bfc657-08b2-42f8-ae4a-9e0225b2dfa5︠
S.eigenvectors()
︡ba7793df-be76-40a6-a98a-42945c90e708︡
︠cb242c80-b3f3-4afe-a187-cda5101b1f21︠
T.eigenvectors()
︡8fdb307b-03ff-47af-a5c8-d858d68f29e5︡
︠a757288a-48d4-485f-a8bb-083500c90f2f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡4d69592d-3761-4ce6-ab72-67a9dbaa4a97︡
︠9e408a9a-7c2d-4eec-a593-7fb298d432fc︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡a9be9382-e0f0-4dee-aa37-da78c11a54c4︡
︠16ec570e-aefa-4ec8-ad7b-446cd2dfc349︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡850626e2-5804-43f1-abc8-71ddda0bacee︡
︠5746d6cb-8149-4588-a634-fb5c9379f16e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">Here is similarity, in disguise.</p></div>
︡0c5423af-f303-4c6c-a5df-acb08530f215︡
︠01266590-4835-4c0b-a859-8f54fe93e960︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡f721d866-9bfc-40cd-ac52-6e2b22ac595b︡
︠a52c6f5d-6e96-4b93-a868-bc6e890365dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡07133839-5a7e-4028-a3bf-c7c355c583a5︡
︠fbd0f082-9ec1-4dd4-a50f-4d610c6c1ffc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡5f820728-9c76-4e43-a294-1e18f146e65e︡
︠a02d61c5-7286-4811-a03d-84901e90e33b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7dbab1b7-72af-4931-aa44-8c81ca05af9d︡

