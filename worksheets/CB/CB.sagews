︠5fb5412f-6356-43a2-a50c-a4f79d7b741a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡16adceee-d413-4b5d-aeae-a429cc738e89︡
︠89036c14-af9c-4351-a03c-ed117dde16d9︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f62f99bb-d6a7-43dc-a5ef-1dd2e5fc4022︡
︠928c125d-d348-4a85-a7d3-6e041fa1ce2e︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0c1983be-0915-41cd-a73b-baacebb9c87e︡
︠997fab8f-4574-403a-ab69-15c030a82017︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡ba129bd1-b273-4777-a13d-b428559fec0f︡
︠4c95e30c-4bec-4e63-a686-34b5c1b60921︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡86d2bc5c-8a77-476e-aac6-10ad57e1dfbf︡
︠145f61bc-d465-4ceb-aa88-0a8b8e270f6b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CB</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡f8f57663-2379-4847-a4e0-dfb6b35db5d2︡
︠0da02178-59bc-4340-ab8f-c6f7cab18666︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 A Linear Transformation, Two Vector Spaces, Four Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h2></section></div>
︡8733854f-e99a-46de-a787-75d7c928bae1︡
︠1794a1af-089a-4207-a170-8f5562f8aa39︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡c4059b73-b8c4-42e4-aafc-a8c0e22dbc8f︡
︠5446ad11-1dae-41cc-a67c-315f13240e08︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡d6d1c7fe-91b3-4fd0-ac47-979e7b19f170︡
︠a5687306-197d-4d7b-ad3f-4c6ebd9c78ef︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡894f1b21-24ba-4181-ac55-ba228d0297b8︡
︠631b3365-499f-43b7-a58d-a48c60a733ee︠
T = linear_transformation(A, side='right')
T
︡c52d0507-b504-4530-ac99-a3e2043ac6ea︡
︠5bf78fc9-67e6-4c3a-ad03-6b74e8913582︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡0ddf46f1-f69e-4d52-a733-bae3ecc8efe7︡
︠1e5fea5e-b445-431a-a58e-94878744f34e︠
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
︡a5df4caa-a5ee-4a2f-a588-31dc853d930d︡
︠1b3fb8b5-25a1-4353-a3bc-bfd8b6de3714︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡53f92a1d-f43a-4570-a9ac-65b3d69b5d37︡
︠18a11dc3-bb7e-46d5-a770-3d5e035aea81︠
D1
︡1aacbc97-f537-43a5-a91c-94af2b28612e︡
︠348e03aa-bafe-4239-a7ca-46ee51a8909c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now we build two <em class="emphasis">different</em> representations.</p></div>
︡ed17b1b6-c60b-452f-ae9c-9e27c897037a︡
︠0681d438-affa-4b5c-aa36-6c49412e8320︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡d27644a7-d47d-4e32-abe6-2537e7806138︡
︠21b98fe2-7c6e-4952-ac10-2355a4d34358︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡c7981180-4fcb-4e61-a022-1466a1a75fba︡
︠78210338-4770-4367-a46a-77ede9f8048c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Change of Basis Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Change of Basis Matrices</span>
</h2></section></div>
︡ff411454-d9c4-4afb-a241-cb9b974904d9︡
︠0c85ea93-e6db-4b7b-a6a0-86b215a5eaab︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡3b8c066a-a517-41cf-ac39-ccf8e1d86c31︡
︠87c03d7a-7109-4916-a9e9-2b523431caef︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡b6687a5f-5d15-46a7-ac35-661c840c6c64︡
︠c2b3b2e0-13e2-495d-a120-78785fd5c422︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡8f532061-1750-4ae5-a707-870f05fdbb1d︡
︠eac4ef44-06c5-4664-abe4-37c37d96b42d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡217f56ea-af06-456d-a92c-e53b9b832484︡
︠1a69acf9-6987-40dd-ae70-a66e1f9a3beb︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡00679039-9922-4030-ae28-ece5b055b81a︡
︠32aa94ac-d460-4674-a756-f43eaeef3975︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Same drill in the codomain.</p></div>
︡4b7e6030-d054-40cb-a431-a36e10cff097︡
︠5d3dc9ef-abff-4f0b-ab5f-c022e33a33bc︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡a1ade67c-5185-4075-ac2b-cfbe2925458f︡
︠230c1f38-c994-4eac-a47f-f3ea204458ae︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡7c18928c-b454-484f-a487-37a12d2618eb︡
︠6688f1b7-e6b3-4b47-aa80-1c8cea901b90︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡70708613-e099-445e-acf6-c134e1f8203b︡
︠1bb8b4ed-7cd1-4616-a4e6-ba8ff60ef2f2︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡e0e999d7-7544-47b6-ae04-5cfdbe4bc3ec︡
︠6cd466e4-e5a3-4a2e-a00e-56a5363810c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 A Diagonal Representation">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">A Diagonal Representation</span>
</h2></section></div>
︡c2c963f5-7ea1-4143-a054-eba90e037133︡
︠105e9c19-198c-4b90-af96-381e21d25448︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡769d43a6-dc05-48be-a9a8-fd10c41967eb︡
︠f61936ce-d9ad-4e38-adc2-6c07dcbe6264︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">First a matrix representation using a square matrix.</p></div>
︡d5affe6b-c347-403b-a918-b74cf18b0fd6︡
︠3bcdbbc1-784c-405f-abe1-3a97689e49d2︠
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
︡01ecf98b-af4f-4b45-abf3-c3d5a4e432e0︡
︠5e23b1c3-c720-47e5-ac94-067eb22a65d5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡62385ea2-27a5-4723-aded-1f39efc09366︡
︠8d8c5ea0-1d7b-42fd-a6cc-3ec77a64bf71︠
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
︡60efc4e7-5f4c-4a7b-a8e8-41609ebf26fa︡
︠85a656b3-e022-4dda-a958-1aa8b36629d2︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡458ecd58-0383-4660-a0f6-80029b5f289f︡
︠bd43c102-9152-44b8-a5c7-b48c718d1a5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡a09f4504-795d-4ba9-a4f5-bba4716fe7a4︡
︠345c4924-e9e4-46ae-a0ee-5aafe11410cb︠
A.eigenvalues()
︡5f0ac44e-9387-47e2-a6f0-54af4916e26a︡
︠dbae672b-5bed-436c-a5cb-620124a3a951︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Some (right) eigenvectors.</p></div>
︡43cf1364-eb0d-4933-a690-1f22057b824e︡
︠3810733e-82a8-4f3b-a395-3b46d5b50475︠
(A - 3).right_kernel(basis='pivot').basis()
︡2ae4b57e-4f1e-4811-a45b-997d052ca301︡
︠82c767de-61e8-4f69-a1ae-d38508a34574︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡70737da4-c15a-4950-a27a-14ea9f24269a︡
︠b0a2420e-6c0c-4692-a7c9-1edf87eab115︠
T.eigenvalues()
︡cc66ea9e-90b9-4d12-af8f-8ad6a5e9faa1︡
︠f6d5dc06-a975-4347-a630-5ca23471d7b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡8bf61d21-4dbb-43ef-aa42-a9f5c2a338bf︡
︠14a1abec-d2a8-4ed7-ad8b-0350812356b0︠
S.eigenvectors()
︡5c50dfbc-c8f6-41d3-a8bb-4cead7bfa156︡
︠2b37b177-d30d-4a1a-aea6-9e3880040b66︠
T.eigenvectors()
︡1814fc56-33a3-4045-ab2f-2ce55766c612︡
︠c3ae7aad-1e1b-4220-a8d3-7f0656ecca3d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡c007e819-6288-4eaa-af27-3a731d9f969d︡
︠46d5dbef-542d-4d18-a70a-f35677416d70︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡ac78144f-4946-4617-ae98-98cff4635d1d︡
︠eb954aa8-ae1e-4580-ad79-611210684c55︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡a41395e4-d83f-4787-a76f-1c12f236a730︡
︠cd4d1e2f-2086-400f-a785-7928b1ae856b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">Here is similarity, in disguise.</p></div>
︡528a0983-9b32-4132-a0ba-6339bfa6d3b4︡
︠e176b704-a9fe-4b12-ae2d-891c2cbd380f︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡de045cb5-06f0-44b2-a6a4-42d5ef29c52d︡
︠68a813bd-1c73-419f-af02-abc57b035dbc︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c257a6a5-4c2b-4034-af35-2e1f39b4c018︡

