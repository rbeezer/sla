︠0004792f-2d96-428c-a753-6347fcd094d5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5d661df3-d217-483f-a5b5-828d98a784b5︡
︠913075e7-9c9a-432e-a37a-8fc1d597d1b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡75aa6104-9902-4344-a28b-c0b828ec0beb︡
︠451e0700-c99c-4cd1-a0f9-cba84c1281d6︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d1cf0d61-d2a7-4f74-a174-a404c41e7af4︡
︠334eaf5c-6002-48ca-acbe-da99c7044ed5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡a19ef3e4-0450-46ec-a1b8-f83820024512︡
︠ab43a378-87dd-474b-a456-c5f0e10f3544︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡8e0c2a09-3900-4674-a2ba-98f89e9addf1︡
︠180252d5-b0ec-4153-a67f-008092e2ccfb︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CB</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡d13d4901-ec1d-4823-ac8a-c9b5a4787357︡
︠e2920db1-eadf-4862-ab2b-6f514f6b8ded︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h2></section></div>
︡5d0e01bc-2960-49f6-aca9-818d3cd97575︡
︠3c33a355-f7f6-4785-ae40-7c1fa4b7e3c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡802c4cf9-2e01-448a-aa6e-bdbdc518c0b9︡
︠64980e5f-78e8-4930-a3e7-295d6238a086︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡9fa38b1d-b859-41fd-a23b-964e4b073b7c︡
︠11bb4376-12f7-4b07-a92b-4b19a55ac864︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡57503a4a-06cf-4e8f-a511-06d1077524d8︡
︠830e4388-d8fa-48d2-a734-93a65aec010e︠
T = linear_transformation(A, side='right')
T
︡a91a75df-eb8d-450b-a78e-b22698174195︡
︠03f1d66a-656f-42bf-ae38-dfaf5377bc94︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡2971b572-0e76-4da1-ad84-6530494c108a︡
︠5a4dcf24-1228-4802-aadb-e40255b92cab︠
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
︡7f5bd2bf-6c28-45b8-a856-34a460a2acf4︡
︠764d21fd-15a4-4eff-a775-ea99f0992351︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡8d7cb9ea-7001-45f0-a568-a534f248c6c1︡
︠74ff1a90-5015-4265-a3bc-b51ea01e9d45︠
D1
︡fc9ecb95-be6c-4483-a9be-57465e77c041︡
︠53ef2abb-f6a6-43ef-a67b-5c29378af5a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now we build two <em class="emphasis">different</em> representations.</p></div>
︡707509fb-5f2f-455d-a5c5-0112b4a4f999︡
︠d1a46ae6-5457-43bd-a109-61b837debc75︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡64609db7-30b9-48f4-a615-077b0a2d9e90︡
︠405a0e8b-6bc2-4451-a9b2-fca67a1a7a91︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡bd1072ff-e6bb-4800-a99c-c986f011b9c4︡
︠a71c89e8-9ce4-4764-a80e-5c7e37e49ad5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Change of Basis Matrices</span>
</h2></section></div>
︡e8cf4593-d2fb-4771-ac02-a6f242a374d4︡
︠9bc6b1b4-4874-43ec-a5ac-85278793a077︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡50227e32-28ba-4ce9-a844-5d9842fe5afc︡
︠14d4742a-7532-4ff1-a886-ce3677975e15︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡b2a961e9-c5ef-47ee-a877-e451bc943f34︡
︠4f7e8e06-7cb6-4b35-aabd-1a16cc351754︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡ca338c29-295e-4001-a6ad-3c74341692df︡
︠7a9bd27f-ba90-49a1-aa0c-83808b492ec0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡d4a6f787-7310-44bb-a56b-1eeae653081c︡
︠8e0240ad-7209-4354-aeab-9c9868fcbf4c︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡cdadffea-c5cd-4ff3-a4ed-f7a9001fdcf2︡
︠9cf39f38-90e6-4ed6-a124-f2c9bcacc79b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Same drill in the codomain.</p></div>
︡9288618a-91a7-4885-aea8-39af25cd284b︡
︠4eec75ef-f81a-4093-a68d-eb78a9d7700b︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡b4aa11f0-0f81-499b-acf3-ade169b30230︡
︠ef58a7a9-7a80-4c29-a7e8-b969ac350374︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡464aee28-8931-4a03-a482-d3b3c50fb033︡
︠58993875-00f4-4194-a4ec-7bf2ec8fc4f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡7581ec96-1a61-4e8b-a2d9-f44f63bf2832︡
︠8b71c6d6-df03-40ec-ab19-41d904cb3e47︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡1c28dfeb-5ca5-4fb4-ac66-5b7248714af8︡
︠20459248-da48-4043-a50a-b6538acfb0ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Diagonal Representation</span>
</h2></section></div>
︡8dcd2607-ee13-4627-aa78-43ea77537042︡
︠ccf8a1ea-9d8b-40fd-a8a5-1f8f907f3ef7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡1c404f23-ab13-4612-a4ad-9bc2a6225514︡
︠d2122615-9b0a-4e7c-a1c6-f51b8c1ae600︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">First a matrix representation using a square matrix.</p></div>
︡bd2c0522-acdb-47c3-a4ef-ad5c9d8a7707︡
︠7c5a96fc-8a86-4503-a941-8efea8b333b4︠
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
︡b201d97c-5f7e-45ce-a863-ae29cc2805cb︡
︠98ea9b30-890f-485c-a6e2-a81c2e9469a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡53b3e5e1-56b6-463b-a2aa-54260549ab34︡
︠e88ab6fa-8513-4b76-a7a1-1f545599f342︠
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
︡83b1e67d-1032-44e9-ab63-c721b8751796︡
︠91a538cb-6db9-4ff8-a8ae-c66f82707970︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡f1296622-19fc-42ec-ab77-a4e0362b7a4e︡
︠b3fed540-8597-42c6-af7e-612516c413e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡1990876c-7e10-464d-ac34-a96df83bc5eb︡
︠bf540db6-935b-44bf-a182-53cc0b446095︠
A.eigenvalues()
︡c44195f5-b881-43dc-a3e4-647308e4c556︡
︠b1bf3442-a0b3-41f0-ae2e-382bb23a700c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Some (right) eigenvectors.</p></div>
︡7be2b270-4210-452f-a511-35a606941051︡
︠dcdcf8e7-8399-43fc-a24e-483ff458878e︠
(A - 3).right_kernel(basis='pivot').basis()
︡86b62ae0-274c-417b-aea0-df80e744fdb8︡
︠b4f6a118-2406-402e-ab08-bd74e6b3ab16︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡4da43455-d89e-4fa0-ad51-51ed5d310dd1︡
︠32ee623c-8052-4f4c-af12-073f49c8bd59︠
T.eigenvalues()
︡e9bd82fb-f8b4-4ab9-a6ab-8b2ca757f045︡
︠a3f50780-278e-4c29-a593-01f3daa31a46︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡fe9e4a5c-a842-4615-af7f-3802bec62d06︡
︠305df975-61da-443c-aa23-95ba8694db2e︠
S.eigenvectors()
︡26e73d1a-37c0-4213-aeb6-15cdf448914b︡
︠061ed4ce-ff6c-4f8d-a379-a9f66eba74cc︠
T.eigenvectors()
︡fc21b057-f575-417e-afb5-85e8c5780ecd︡
︠bc9dd5d3-dd94-42ac-a0a7-63d4baa22a1f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡7cb19967-d346-4871-a58b-defa3a4dc78e︡
︠6fa214b7-c9b1-4f48-a091-c6fb1266f2d8︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡047b6802-0cbc-4da0-a6ba-7807319979c5︡
︠1d999f29-225d-4f38-afa3-a1ba9fc294c6︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡9d327d29-64cb-41bf-a9b9-d5b9048c7203︡
︠891cc89e-1f3d-4b49-abe5-4ca05b5e7c08︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">Here is similarity, in disguise.</p></div>
︡f9205e9e-dae0-48a5-a154-6a01a5c044c4︡
︠ccded3d6-2a01-4b9b-a0a1-51b526be6f33︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡4ff2ed5b-3864-491d-a428-6791db89af8d︡
︠2dd2fbf5-73dd-486f-a5b1-d197372b0da9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡bd68f53f-ab27-48be-a709-9eb35ea8aa65︡
︠412a91fd-1a84-421f-a080-a2e6545fcfa2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡4e469d89-b934-4e65-ad6e-d10c760c6dc1︡
︠1d6dc7a3-8862-4f59-a461-816963d71421︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡93e00b7b-ef34-423a-ac81-d134a97808d2︡

