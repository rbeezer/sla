︠f800b882-a02d-4da9-aa81-739b8fced13f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡9289342b-6db9-4a84-a32c-5a0f59e27c3a︡
︠bcc46f89-af76-481f-ac52-9bc9a2294957︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡304f5bed-59cc-405e-af23-1bfd49073408︡
︠c3903ec2-c1c8-4dce-abb1-fddeb28b9bf9︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3bdcc1b8-379f-407c-af27-025d0009b94b︡
︠a2c56be6-ffac-4bce-afb7-dfbce1b75e61︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡a0366a15-114b-4d07-abf3-3c3f9105863e︡
︠7dfb4666-b77f-425f-aa1f-e4c14534abbe︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡a2cad003-6cbe-4ce3-ab94-b7978ddb277d︡
︠52f2cd2d-199c-475b-aa14-ecb84451f897︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section IVLT</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡5fa51633-44cd-4143-ade4-1d1c660b8041︡
︠8902f192-5d72-4b96-ae65-373549c55459︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Invertible Linear Transformations"><h1 class="heading hide-type" alt="Section 1 Invertible Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Invertible Linear Transformations</span>
</h1></header></section></div>
︡5e36028a-5d7d-4036-a72c-d640c998efd4︡
︠822b93e1-d4f5-4109-a77b-44295e2e70d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡467720a1-1851-4e61-a7d9-32d5b23d1adf︡
︠f2669864-98de-49b4-aa32-4641bf4fd6aa︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡69dcf756-cee9-4d85-a238-57f99a9da645︡
︠1aee6e6c-52b3-4c8b-a1bf-9068af33de91︠
T.is_injective(), T.is_surjective()
︡3bc2a310-f63a-49f3-a50e-59fb29b6d847︡
︠a726ac9b-c910-43bf-a61f-56942ced2b66︠
T.is_invertible()
︡20e47811-3ea5-4ed0-ad42-c986eb2c848f︡
︠baf9f720-86e3-4bd1-aca5-e7f7de2fab43︠
S = T.inverse()
S
︡afda9d1b-da1c-4dc9-ae94-37b3e9119ccd︡
︠f6dd06a1-18b2-449f-ae78-2b0eef8f01cc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The <tt class="code-inline tex2jax_ignore">*</tt> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡eb3b9313-53b1-450a-a5f1-e2de0bd8bea7︡
︠a83d4c16-069b-48fc-a25b-44d12ed078e1︠
comp = S*T
comp
︡09a47e18-51ff-4d7f-aaa4-5e930b1dc86b︡
︠9743cc2d-48f4-47db-a775-bd4504021da8︠
comp.is_identity()
︡84fd8baa-9e38-42a5-ae1d-3da72bc3dd07︡
︠69c67421-fb02-443d-aa1e-75c2ded92a73︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Defining an Invertible Linear Transformation on Bases"><h1 class="heading hide-type" alt="Section 2 Defining an Invertible Linear Transformation on Bases">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Defining an Invertible Linear Transformation on Bases</span>
</h1></header></section></div>
︡2dce3435-5216-4559-a2fb-171d9ec67e1f︡
︠13ce2035-6987-4fdd-a9fd-4045ee4a5b96︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡aba79c8d-2e6a-4658-a4e7-1386964d199a︡
︠035abf63-c822-4398-abd7-3fbc542a143a︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡e4e4ea35-e0e0-421a-abd8-307ecd2f743b︡
︠e2fd6d79-2591-46c3-a080-9b009ddcd500︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Vector spaces with defined user bases.</p></div>
︡0f2fc9d4-309d-410a-a412-4ae5b73940e4︡
︠1e34e0db-40be-4dce-a710-a6a8c60ff40d︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡81cc5ac2-6121-4f0e-ae8f-e269a2fa1ff1︡
︠d8394841-aa2d-4c2e-aa06-ae808327e46d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <tt class="code-inline tex2jax_ignore">D</tt>.</p></div>
︡6359da22-cdcf-4a91-a842-fe17f9a21867︡
︠6dbc7879-b368-4311-a5a5-7949132b534c︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡bb97700e-ab20-4352-a4bc-a36ec71f3637︡
︠2e2c5ac5-870b-4731-aa8c-62fc0c42b78e︠
T.is_invertible()
︡fbd272c4-85b9-403d-a1d5-e48d18a5a5d3︡
︠3ce1e63b-ab15-4418-a236-72affb8913fe︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡63a549b8-5546-4b98-a4bc-a2e42e0a81e7︡
︠f5b9bf36-78cb-4f84-a7cf-3621b40bf8ce︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡fb3a5ea8-5112-4d0a-a286-1bd4d88d385f︡
︠65ba008a-9eca-409b-aab3-1dfe1c6aaa30︠
S.is_invertible()
︡9954365c-1ead-49b7-a563-8717624ddf70︡
︠f0a55dba-ad95-4a21-a277-50f6859d27c9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡7ca120fd-aaa4-4f56-a07e-8df737dd5042︡
︠ace4e04e-ef89-438f-aa96-91389707557a︠
comp = S*T
comp.is_identity()
︡7166656a-35ab-4ed4-ad8d-41f8a90a0507︡
︠f886eeb5-9eb4-4a91-ae7a-ccbc465406a1︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡eaa6085b-efa9-4353-a54b-f07bdc13029b︡
︠475ee674-264c-4f71-a3d5-ed66832a73d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Rank and Nullity"><h1 class="heading hide-type" alt="Section 3 Rank and Nullity">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Rank and Nullity</span>
</h1></header></section></div>
︡f18406a7-bcdf-49d6-ab14-10176ab942c2︡
︠3b4b042b-cd7a-4c17-a3c8-8d895f308835︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡b61f1144-c014-4ae5-a121-aaf344274b07︡
︠0be1a03e-4ff6-4394-a9b7-a62996dcd27e︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡a898938c-2dc1-430b-a896-f3c1d68b26ea︡
︠482d1c1a-9385-45b5-a03e-732350adcd3a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡873b5476-f0a7-46f3-ac06-a7adbfd5d931︡
︠4b976ecd-4bee-435e-a61e-dc5790776519︠
R.image()
︡654fdad9-8257-418d-affe-eca3344bca0e︡
︠46486134-bc70-4488-a187-064ba8fe3c94︠
R.rank()
︡adbf610a-6b7d-4bc5-a4ee-ce419e99dc67︡
︠105cfcd0-73ce-407b-a6c9-4979a174a500︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡c112e1eb-15fd-4405-af62-8bc0461cbc2b︡
︠cfde1bff-7157-4f97-a59e-72943eb4b61d︠
R.kernel()
︡2dcfcebc-d3d3-4add-a227-0a9aec9914f2︡
︠210e1dcd-9a07-4db4-abd6-2e0b9f828a77︠
R.nullity()
︡d98d7ab4-74f8-4bd3-af81-6a07696fbea2︡
︠67cf5490-8048-4905-ac0e-e69ed083f32a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡68128761-7f2c-48bd-ad8d-b734615e5427︡
︠38715320-c685-458d-a270-a82f63f6cb00︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡638e5e17-edd6-433f-a157-1ff3f56ec2ac︡

