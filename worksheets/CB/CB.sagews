︠b159428b-d932-4377-a7c1-4c2f553aca07︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡ac806d2e-908c-42b4-aa31-b8de833bd05e︡
︠70bf11d4-0648-4364-a718-8d05b89e37e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡56a15b33-f3a3-4cda-a04b-8d89331c2531︡
︠e978bd3e-121c-45e9-a0fe-b7b40e82ba7f︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c594e422-3444-40a3-a9a2-8694aa32dfd4︡
︠e714559d-4072-4fa6-ac96-5db57bf8deb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡2ad4e397-0d88-4072-a74c-da99f14fa2d5︡
︠90075eae-6ace-43d6-a64a-224bc4c03731︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡cc2d37bd-5282-40cf-a724-147603ad4e47︡
︠0042e899-5fce-41da-a14c-651db116e552︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section CB</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡d53281a1-b017-4e24-a948-6ae78a8917f6︡
︠9ccce4e9-6997-408a-a51e-d89c0168a70a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h6></section></div>
︡e96a65f4-e5d8-4ce0-a632-50aecaf33ab3︡
︠49db4313-8085-4843-a8b6-a075e4fe8393︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡7dc4918a-40ad-4531-a9cd-06e8ccccb4f4︡
︠7624bb53-6a31-4795-a931-6384b4180dcf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡2464910f-5798-4912-aea5-f19765b8dc6a︡
︠b8f2d84e-8952-42e3-a4de-ac0447a0f7c6︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡28e2abae-a37f-459e-a8eb-7987dce7cef9︡
︠42134bff-9921-497b-a70a-373ce19d96b9︠
T = linear_transformation(A, side='right')
T
︡f0b030c2-f6b2-474a-a3ca-df20c125ebba︡
︠5aa0ad16-00cb-4240-ad7c-74ca58b7da38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡483f9eda-5db2-48e6-a8be-5331d9991734︡
︠08d37714-261d-489c-af27-d7b198a21ba5︠
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
︡0aded45e-875a-45e4-a2d6-abe5d7e7af34︡
︠43f11c67-bef1-485f-ad7d-31926694d441︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡9948b651-e00d-4192-a16a-eab7c2d67bac︡
︠c451c081-2622-433b-a652-03ccb8f9f649︠
D1
︡21d83a9b-bb1e-4d52-a9b7-ccb89618f0f4︡
︠a158a923-4ee5-4cca-ae66-5230bc7c46d3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Now we build two <em class="emphasis">different</em> representations.</p></div>
︡b8500f92-2e11-43dd-aec4-5268324af90c︡
︠cb42c416-7448-4586-a372-7d5e580a2f33︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡c0f12c64-2d87-46e0-ad28-0a558ad95f98︡
︠35926bec-f1a8-4817-a9e9-1f364c12562f︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡f5487b46-8373-4c04-a393-ca2016c2928b︡
︠1706f813-ea75-4d46-a27f-54a74be1d736︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Change of Basis Matrices</span>
</h6></section></div>
︡25d3bdbd-1979-4f4d-a565-4c9f3eb209a3︡
︠fc9df4ba-1c48-453d-a394-8e12d4187121︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡41edfe2a-937d-4cc1-aa0a-f880b65cfcd1︡
︠e23c02a2-d364-4131-a2d1-dda5d5c21bff︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡cd10a124-4f8b-449e-a5cc-6990f66b9779︡
︠646841a7-5e7e-49b8-a805-46fd7e4dae52︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡7c6e4afe-25d9-4364-ace5-13c013f51a46︡
︠cb3297d8-6fd3-4919-aed8-3fcffd3f3497︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡b53e8d65-5c53-4ff5-a9d2-202ef1c31f7a︡
︠73fa2778-dd53-4142-a6ef-800ae0ca3dab︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡81e8c1f3-9d1f-4123-a381-3113c049b775︡
︠2f717327-7c58-4b6b-afa3-1d531236bfd2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Same drill in the codomain.</p></div>
︡502d2905-1826-41ec-acd6-0e451675c35a︡
︠5aa87d18-2205-4913-a5e1-ce01417c74fc︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡e579df7f-7928-4fba-a218-3e73fb578dc8︡
︠aae24b1b-b95d-4149-ab7a-4b9bf8750f2c︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡7d75fb10-7d9c-4ab0-a468-fa38521c72ca︡
︠e476972b-7981-453c-a673-e6e2f4401c2d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡711e7b59-6d3f-4f82-abfa-fe1d00151224︡
︠09528ddd-74bb-44a3-a663-05123225748a︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡883eabc8-94d5-4f1f-a286-69b7bfad421c︡
︠ca408fb4-8586-4a87-a9bf-f19b94a32e54︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Diagonal Representation</span>
</h6></section></div>
︡a2ef27fe-c735-4ddd-a578-579e223d65bc︡
︠96e850f5-ecc2-41af-aef6-65df3026d8c9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡4603e63e-b2a8-44b2-a4a2-b078fb9217ae︡
︠0f412276-128c-4ad8-ad22-fd26622f436f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">First a matrix representation using a square matrix.</p></div>
︡27e68090-6a3f-47dd-afaf-1ac412632b79︡
︠a909f9a8-a13d-41aa-ae95-eb0af1d65f2c︠
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
︡8d696531-ed22-4a3c-a526-b02bb2d8828b︡
︠f085afbd-0aa3-4c57-a9a9-0692244fdd25︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡82618004-d1e8-45be-ac58-55ff814c12a3︡
︠726e4ee5-2c71-45cc-a382-ce7be0c3ce57︠
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
︡2da8be6a-396a-4ac7-a7f0-9be17d140e26︡
︠6430cfe3-92c0-4d6c-a4ec-58839f1b31a6︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡70ab07af-b427-45fe-a14d-e956de5ea904︡
︠084a452f-5d37-4587-a4ac-1866f3542fe3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡3ec890ec-f393-4bfc-a236-e4f5be903bf1︡
︠f30bc9ba-5bef-4e9f-aac2-1b7102092352︠
A.eigenvalues()
︡546502fc-d57c-4465-a312-62dd4d04738c︡
︠5d1c32e2-ec76-48cc-ae0e-061e45c49381︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">Some (right) eigenvectors.</p></div>
︡0ef2a249-535d-4ae9-a7da-5e06c5b8a5c2︡
︠7d06fb84-4e8a-4b29-a5a6-ff4060519f76︠
(A - 3).right_kernel(basis='pivot').basis()
︡2e3342ed-73bf-4d62-a7bc-dbb1b1203c0a︡
︠22955d74-ae76-4e5d-a0c8-ca37cf9efdaf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡7d2027ea-c993-4f79-ad86-5409cc86b836︡
︠8b3ab61a-0d3a-4132-ab0a-16f20be91a25︠
T.eigenvalues()
︡0a044ca5-6b3a-455e-a70e-225146c3fed1︡
︠3eb320fc-6689-40df-ae50-d7238795b938︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡b776b97b-6d1e-471c-a601-6e99111a7c3b︡
︠4e2c5e6c-9c9a-4b0c-a87c-9ea37c586c4a︠
S.eigenvectors()
︡798a6e8c-b194-4b45-a8dc-57b0a2cfb2b0︡
︠c3a5d046-cf85-444a-a9c7-61f1194d8004︠
T.eigenvectors()
︡0d7b35b7-c864-4ea8-a945-1a60c8915216︡
︠623ed649-e014-450f-ae93-3ae9bb14c77d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡ddf1cc71-5527-4a77-aa51-d9bc3675b4c2︡
︠1a01bde3-e490-4b48-a3ee-4c708a70f24c︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡56668236-62a0-4364-aba3-9ef0e8a59a8e︡
︠6e4c5cf9-35bd-45e4-aa9e-d3dd3b6e1f8a︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡ee93be0b-7303-4161-a51b-4ee1c2d20f29︡
︠a0833423-fa70-4d86-afe7-a36943c26d18︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">Here is similarity, in disguise.</p></div>
︡6c9f0d32-12c8-4291-a980-0337d8a9b16d︡
︠9d93c910-b228-4b51-adea-efe16ca1562c︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡3cac0761-724a-4aff-acdd-7bd5d41857e8︡
︠415fe564-7d7b-471b-a7e8-4542a16c9b37︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡489a77fd-c6b3-4235-ada3-5f8913b7f533︡
︠d7b613e1-1b8c-4fa0-a48a-8e908a432385︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡75d3cf6a-1759-4444-a59c-f1b9234676a0︡
︠eaa7f8c1-af6f-446a-a705-98c3d6e09bf7︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0e2a6132-3e29-4e70-a9e0-e89ac61a7b67︡

