︠e229009e-39cf-465d-a84c-ecdff73200e1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡8c4b54bf-2e8f-4ef5-ab89-765454c97ca5︡
︠e322e879-7970-4850-ad18-79ece41ad878︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡e5b189af-228a-4210-a3f1-b6aa28e43cca︡
︠4bffc786-7b8f-45b1-a5e0-7a6149a3edfa︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡736732fb-9662-46cd-a81c-886eab85e62e︡
︠ac05ce9b-90f2-43fa-a731-ca48b3fb38eb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CB"></section></div>
︡7888e478-0180-43b0-ae23-0fe48a786b15︡
︠79ef1c48-459c-45d8-a6cb-9cb81339b94d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡eb6cb780-0d5a-4ab8-a214-eb0942c7b80f︡
︠6eacb544-551b-4fb7-a8e9-cc5d59f20aa1︠
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
︡9004dba1-ff61-4b6c-a2fb-cb719ca8fb39︡
︠ddad189b-a8b0-4977-a6a6-16287b5244e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 A Linear Transformation, Two Vector Spaces, Four Bases"><h1 class="heading hide-type" alt="Section 1 A Linear Transformation, Two Vector Spaces, Four Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">A Linear Transformation, Two Vector Spaces, Four Bases</span>
</h1></header></section></div>
︡eb598711-3baf-4c47-a4a1-bb8e409a2ef0︡
︠7dbc7449-6750-4724-ae6f-f2a80f8aab89︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\) using a randomly selected matrix. The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p></div>
︡bf77cec1-829d-420f-a7e6-6e81781f2bab︡
︠46bcd8aa-92c2-40f2-af61-5d0de75068b1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p></div>
︡307ec567-ffab-42ab-a4a1-60f7dee3e5ba︡
︠6faee735-f259-4e74-a9cf-b2fa9d8807dc︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A
︡14cb2a35-f284-4c6b-a0f7-0aaf54cdcd4a︡
︠a6e61105-707f-4535-a045-8503457034e7︠
T = linear_transformation(A, side='right')
T
︡f8edefff-560c-4550-ab65-0fa02f6a09fe︡
︠1e6fc5fb-5415-407a-a131-7301421ad13c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The four bases, associated with the two vector spaces.</p></div>
︡f4a646b3-2173-478b-a29e-312337641355︡
︠04abbe17-1389-47f1-a21b-15c380af4c39︠
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
︡23ede9c0-1e49-47b9-a8eb-4001391e85ab︡
︠fcee9c86-d941-43bc-ac4b-88b89f1bd908︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-4">Check out a few of these bases by just asking Sage to display them.</p></article></div>
︡4043ee06-4d08-4e34-ab08-78021a225fc6︡
︠716c45b5-c02c-4910-adc1-63a76b18e78a︠
D1
︡d0b4c0a8-5698-4329-a406-56afe0a09972︡
︠352faf04-76a1-4ee3-a824-e8b8798292b1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now we build two <!--Style me with CSS--><em>different</em> representations.</p></div>
︡4f67f06f-5e5f-4f4e-a3c1-7a9321db46ef︡
︠72fe9ef0-e4e3-44e8-a214-49fdc1e9d30b︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')
︡28e27806-8ea6-42f4-ab16-f5fe3c026e56︡
︠98f7a6fb-d8a8-4ed7-a389-98e972574b5a︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')
︡2f227d97-96f3-4ed1-a61a-fb2e490a1567︡
︠f871bef4-58b4-4c92-ad04-7ffad43ee534︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Change of Basis Matrices"><h1 class="heading hide-type" alt="Section 2 Change of Basis Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Change of Basis Matrices</span>
</h1></header></section></div>
︡c2d34823-d7c8-4c82-af62-3d138f7cd610︡
︠ae372704-bdc7-4690-a886-ac4c0cb789da︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">A natural way to build a change-of-basis matrix in Sage is to adjust the bases for domain and range of the identity linear transformation by supplying an identity matrix to the linear tansformation constructor.</p></div>
︡988c0b40-ffec-4745-a8dd-e8a34a002990︡
︠338cf873-9738-43bc-a83a-622067b67df1︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain
︡d34604e7-88fb-4026-adaa-71c9221d99b9︡
︠a9defd3d-5b64-4666-ad31-8b35557631fe︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat
︡a978865b-4b7a-4fd1-a6b4-830b8510b42b︡
︠2d5a5e1b-a561-405f-a1ca-64e606b17759︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p></div>
︡38682c63-719d-4293-a1bf-c14a841368bb︡
︠2e49765e-acf3-4a1d-ad38-dfa1926a6c32︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1
︡861d0835-6e25-42c6-afaa-8793826fdcc1︡
︠f4801885-ee40-446d-ab68-5ffe28197e53︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Same drill in the codomain.</p></div>
︡05885a0d-0ec4-4f0a-adb1-5005e3d0c5e2︡
︠9f728cc8-ac76-4076-ab51-ca2d011d1d30︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain
︡0cf8e74b-0e78-4580-ab45-d10ff010d2d1︡
︠2ee26caa-8b90-43e9-a3ad-97f97e99e7bc︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat
︡8ea6103b-bb65-4ba3-a4ee-27610ef97e03︡
︠a914f343-efe5-44a0-a8fe-715d36c30310︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p></div>
︡6ba80ab4-da4c-4096-a026-e9747bb3eb70︡
︠cec66c01-1ec6-4ac0-a1c2-7bcf04ab8960︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat
︡92e68429-6472-4a2f-aa4b-db7ab7e627f9︡
︠79b5f4a2-e066-4308-a2bd-e99534d2a09a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 A Diagonal Representation"><h1 class="heading hide-type" alt="Section 3 A Diagonal Representation">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">A Diagonal Representation</span>
</h1></header></section></div>
︡903563a0-580b-4e4c-a778-461dc5297d91︡
︠731b97e3-73b8-4fad-ab14-36a546a6023a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">We specialize to linear transformations with equal domain and codomain.</p></div>
︡3be567c5-a495-4d8f-aa31-f77adc1821a6︡
︠ce2a3910-eb57-412f-a1d3-2dba786919ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">First a matrix representation using a square matrix.</p></div>
︡07921db2-dad2-41f5-a103-5200d8942aed︡
︠6e4015dd-7b75-4e94-a3a5-7f78050aa358︠
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
︡0b74c89a-615d-4736-ab71-0e0861e7b8a1︡
︠0ad8f918-47aa-441e-aad5-ce4d6be52add︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A basis of \(\mathbb{C}^8\text{.}\) And a vector space with this basis.</p></div>
︡be887728-07fa-413c-afe9-5a797e463701︡
︠5c0e5768-f6fe-4101-aef0-74bfe2d380b9︠
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
︡2162fb95-38c3-47e3-a9c3-94843670a015︡
︠947f66bf-cf89-4207-a694-93917d8fd2ff︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')
︡893f9a54-a242-4b62-a3cc-76f177ef6c25︡
︠caef98af-c411-47d7-a904-68a592c82344︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">That's a nice representation!  Where did the basis come from?</p></div>
︡90f8080a-8dfa-4e68-a608-a615ba883ac7︡
︠f58ed97d-40a3-4a89-a2e9-b90cfc774a10︠
A.eigenvalues()
︡216bf346-096a-4c13-a641-0fa0c9c311e3︡
︠1047c3b0-aba0-4662-a9d6-ad55d2f950a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Some (right) eigenvectors.</p></div>
︡3c4741af-14bc-4512-a7a0-d5d3ba5a4baf︡
︠feb45050-075b-43bc-a627-60d348ea236d︠
(A - 3).right_kernel(basis='pivot').basis()
︡25bda1ef-1e76-49a1-a614-e75bba4a46da︡
︠4f0fda0b-a291-493c-abad-085541f8b4f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Eigenvalues are a property of the linear transformation.</p></div>
︡f38036a4-156b-47fe-a3b8-1b160570e24d︡
︠b41444af-8c4f-47cf-a6fa-f050766e651b︠
T.eigenvalues()
︡2df3248d-3198-4004-af64-a64f6c6dbc2d︡
︠85b89dc1-a024-4834-ac2b-0d15c8126df9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p></div>
︡a8e5173d-8ddb-415e-a621-22e48bdae37e︡
︠c16b772a-5b83-46a9-a51b-73e586151f98︠
S.eigenvectors()
︡d6a411b4-c1f4-446e-adcf-93379bea1f9a︡
︠8712b347-7087-45de-a3aa-33e6b72a139b︠
T.eigenvectors()
︡e22f4e39-5aae-42fb-a036-b6a9d600023a︡
︠e2c021f5-a5f4-4313-af27-6de16b77c7a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p></div>
︡182e94f8-a9da-4e1c-a21e-97b78230af84︡
︠fac28577-e11c-4bfd-a81f-6b622f460e58︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity
︡352f7a5e-2403-40c3-ae45-da04d342941e︡
︠c44f4b9a-aceb-4ff7-a3eb-8c6813b555a6︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB
︡46b86f4f-9ec8-49c7-a1f6-c723036c9c13︡
︠35aee0e2-f81c-40b8-a8c7-f9f1cf53be0d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">Here is similarity, in disguise.</p></div>
︡133b21b1-4b96-47a1-a03e-728645698279︡
︠f9c35f50-09ca-4045-a248-1bb92ff897a1︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat
︡1aaed0d2-0ecd-49d1-aef5-7013a439cc17︡
︠1a1725a2-0397-46f4-a376-00e7f927e1e1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ffb17e61-0759-4fb9-a3f1-9018711a80b7︡

