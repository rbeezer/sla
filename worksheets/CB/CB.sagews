︠0b878b0d-5a76-413b-aedc-18bef7c8d845︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e416c92c-776e-4d81-a87e-58706782f6b3︡
︠ba8d1563-1da7-4c80-ad17-b6f375a08963︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d2e6ffb6-2c4c-4405-a4d6-b9dbc416590c︡
︠ddeb3eae-5cb9-49f9-ae47-5f02bc6c3c53︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8306e359-2a6d-44fc-ade1-43055c1c858e︡
︠2a730318-3ea9-434d-ab25-734888af537e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡a982d85f-19db-431f-a0d2-646bce47e9b6︡
︠75f07d9d-ca6a-459b-a5a9-81eecbd02cad︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡22322afb-8c5f-46a8-a203-c84a6154170b︡
︠53e85034-cb11-4a7c-a3ac-765b0bc60ee0︠
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
<div class="date">Spring 2020</div>
</div>
︡a338c99f-d5ae-4656-a381-0f75b818e16c︡
︠21059cf2-cc87-4bec-a225-325a713992a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h6></section></div>
︡fc1f2bc1-e8e6-4fa5-acc7-1fa7a28db1f5︡
︠2e23e4fa-6d25-432f-a9eb-00ab74df1811︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡d3ff6d45-8b3b-407d-af0c-a1c4c3993b14︡
︠cf7cfea4-42f7-4dfe-aaff-7903ed787a39︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡f086c856-c99c-416c-a01b-f850c3d3c5ef︡
︠edf64cf9-3b3c-4743-a344-f4d44982d47c︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡35a3ce0b-847b-40f0-a434-92866d0efe26︡
︠a6c4a83a-4beb-47fa-a73e-cd0537245228︠
T = linear_transformation(A, side='right')
T
︡9cf509e3-42f2-4e62-a9e6-7a37f7f2b44d︡
︠dd9c3a51-e94e-4c24-afc3-53d9bd0a0bf4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡8d2295df-6c9b-4a6e-af5a-2ae03ad44df4︡
︠2814aba8-a144-4cea-aaef-40a30dde12c1︠
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
︡6e98343d-cee0-42af-ac5e-bae5df3ae5ca︡
︠639fbc4f-90d8-41f3-a1c8-f72ddfd0ab66︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡6cafc5c0-5612-4e22-a13f-926c04be559b︡
︠c08605cc-6127-4409-a72c-6cfd8f23d797︠
D1
︡358bc818-47a7-4ef8-a87a-4e74bf4e325c︡
︠a8224eb5-7fc2-47b1-af38-a861c2100436︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now we build two <em class="emphasis">different</em> representations.</p></div>
︡0df3f32a-99a6-4c12-ad15-6cddea0fb13e︡
︠74b78bba-6440-4b02-add4-34002fb3e642︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡5c713fce-923d-43ee-a5cc-9f0a039b682a︡
︠a8719a15-8a8b-48ba-a606-2a63566f2d75︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡82df36a5-c2f4-4e8f-a9f0-02b650dcffa7︡
︠42912d8c-24f2-48db-a77a-87d3d33af39a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Change of Basis Matrices</span>
</h6></section></div>
︡bed50f28-c5db-4759-a3d0-d57b84ecfe09︡
︠8b750853-118e-4d03-a630-616ece2aa28a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡b16376bc-ace2-4ab3-ae17-f89565390eb9︡
︠97b0a275-e11c-44c8-a8a9-f928f8e32f1d︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡9b44ce63-4556-4292-aa1d-417696f8917b︡
︠e073432b-761c-4c35-afe7-c28492a8a391︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡f826b7ad-2144-4d17-a306-bd93125ca004︡
︠1fc368a0-6d1a-41fb-a92b-fd981bb77677︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡a967dcf8-d55e-407d-ab10-71e0a0c573cf︡
︠a781e6ee-eb44-494b-a70d-88e79875ef8a︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡e31740d2-fbd3-4f78-abf9-9717eaf50d58︡
︠84b9b0a9-2950-4d57-a606-09e11cc12cf8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Same drill in the codomain.</p></div>
︡57c1171b-1356-443b-ab9c-2960b7d89048︡
︠8af4b0cc-ce02-4445-a00f-c29335b1d422︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡cbcc08dd-4ab4-4cf9-a209-2dcc001b2f04︡
︠2dff9f76-cc08-41d7-aaf8-3250e5001202︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡72f72879-f46f-4c7d-a41c-c5f15e75e98f︡
︠bf1a743e-e224-42eb-af2c-cf1b1798d815︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡7c597cda-bbdd-4ffc-abef-8bea6f108e89︡
︠40699e66-8126-4f25-abd4-a6f90591610e︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡a4e1e8f4-f861-4e53-a311-8b7758de93fa︡
︠2ae1cd9b-1848-4a2d-ae6f-0ea750f3f96f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Diagonal Representation</span>
</h6></section></div>
︡49a2a604-21d6-4a88-a86e-76c2e22e518c︡
︠0c5af01f-5313-49bb-a232-0a8dc70f560e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡21a8ca9d-9f0b-4296-adca-0c58a20a1612︡
︠433fcf95-c34d-4e77-a453-f504da6e5746︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">First a matrix representation using a square matrix.</p></div>
︡98ad86d1-c941-4728-ae7d-1632a1c1f283︡
︠92c4f4bd-677b-49ed-a2c5-fec3074d8301︠
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
︡7a33e389-0f17-4aa5-a8c2-dc19f2040871︡
︠aebd2a1b-41a5-4940-afcd-1aa34a64e7d6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡874457e6-228c-4810-a80d-62706bbc093e︡
︠fb540bbe-1d09-499b-aa1b-78df83b40be3︠
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
︡9dff2fbe-ecbf-4658-a109-d81b7af2efed︡
︠37b37d32-b1f7-406c-a88c-25441cf0fe0d︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡b4567c3b-efce-46d4-a36c-0815d31c30a3︡
︠d572bfff-aee7-4c44-a07a-d73fc02ec5e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡9cb1f71e-6bd4-4299-a7a1-1884754941f3︡
︠7903bfac-e07b-45a5-ae20-f4889fee92f9︠
A.eigenvalues()
︡5625ad55-a462-4fbd-a5af-593e2ce0a739︡
︠1904fb24-0c86-4e81-abec-a45e28a0958c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Some (right) eigenvectors.</p></div>
︡e96fd5a0-aac3-40bc-a27a-e2e401db1609︡
︠3f39e1f9-193e-4d49-a971-4632b348e5ee︠
(A - 3).right_kernel(basis='pivot').basis()
︡f2d3bc4a-5649-451e-afa5-0fc31766f5be︡
︠3b01ece3-74ac-4dfd-abe8-1e7e1958f5db︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡31643501-8853-4432-a2f0-a1e2f0c48c95︡
︠7d6e1932-bcb1-4ff4-a214-2c51f51b9973︠
T.eigenvalues()
︡ff15d3f1-5ae0-4be0-a002-43ea4ef6a802︡
︠cf1d5f14-17f0-47ae-a8af-af299778d21d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡4ed6c25d-6745-47c0-a54b-5fa884f0cd2e︡
︠b6c8d8b2-529a-4716-a86b-4caf43333016︠
S.eigenvectors()
︡ecdb5a40-d926-44a7-aa2e-57bf6f2936a4︡
︠c91a4648-7129-4864-a017-f6ea6498edf8︠
T.eigenvectors()
︡2b1356aa-f1b2-4b49-af4a-6304e797f75f︡
︠f7a1b085-b777-4a3b-a330-d93ee268a6ff︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡5f601209-8c1f-43b3-aef6-ec02bf427f86︡
︠ed65d77e-0fa2-4fdd-a3cc-9b9ae593702f︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡70dd6a5e-96e4-48d2-a61e-2aac581eb9fd︡
︠96d6441a-2b00-4f8e-a1ef-f1a9df2fdd9c︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡a23898cb-2e62-4f5b-ad7a-c6b709629402︡
︠0a543ec0-aef0-40e6-acbd-6841f5a58398︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">Here is similarity, in disguise.</p></div>
︡6a3bf6ab-6495-45a4-ac6f-ad8ee749dcd7︡
︠5429f1f9-c6e6-4c41-a008-0a58940dedab︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡50079f89-95f8-4ccc-aecc-6c7c5005ee28︡
︠a89af2a8-b4eb-4ca8-a884-5f1cb7dccbaf︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡457d060a-fcfd-47b8-af31-49066bd37af2︡
︠93801871-36d2-445e-ac51-dabd119e4193︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡427c285a-a907-4c5d-aa12-bec6cd86cc75︡
︠801970dd-9f8f-4ccf-a9ad-af1b467630bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e4cfd4fa-1999-4866-a701-5b0665cebfe7︡

