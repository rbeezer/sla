︠d0071630-736a-46a4-a133-a09a6776b5f5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡cc6c4837-8abf-4519-a93d-cde684dfb94a︡
︠f176ebe1-37ce-461f-a0b2-d80bf80d7b6c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡56ecdc8b-eb3a-499b-a9a7-c70c2f42cce3︡
︠93970638-2136-4cd0-a87a-f41f04f57b25︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡eb9829f6-1285-4843-a8cb-2cf4cf8b5067︡
︠27edfaf6-9c00-475d-ae3f-ca2304e23be8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡d0fbee6d-5fa6-4f1b-adff-ccaefb3ed69c︡
︠e6cd2bc8-9184-4786-a355-322d128406aa︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡281f53b1-c434-48bc-aee2-4147f5a89be3︡
︠51c612ac-4717-4ba3-a891-be3f5250afb9︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section MR</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡31af8b12-86a9-4e53-a1ec-29b6908f13ec︡
︠c1e70632-9c83-4578-a987-6b111b2aa3e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 A Linear Transformation and some Bases"><h1 class="heading hide-type" alt="Section 1 A Linear Transformation and some Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">A Linear Transformation and some Bases</span>
</h1></header></section></div>
︡0bae3b46-dd36-408d-a926-181293ecd9fc︡
︠207cea72-1504-4c1d-aaaf-0c72f15de36d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡f8d75c1d-f23f-46f0-a4ab-3b8be7d34b7b︡
︠9746ea3f-722b-419b-a2d5-e016cfd9324a︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡ed2340d7-0593-40bc-abea-1cb237110445︡
︠f2225733-f489-4794-a443-e50a731952e9︠
T = linear_transformation(A, side='right')
T
︡7eca0213-507e-49f7-ae3c-1212c96e3b01︡
︠48f02024-385b-46fb-aedf-af1c2e68d93e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡a86a98ac-de42-4ab1-a59f-44f60157920d︡
︠0b565ef0-adef-4f8a-a1e4-1280991e0b11︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡81ce81d8-1850-4758-a277-689e938b1872︡
︠9f46ed7c-694b-4ac1-a3f9-a5244b7d785e︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡bfe05ced-947e-401a-a24a-bffd349a1037︡
︠ef7cfd9e-a222-4024-ab49-5085db966b79︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 A Matrix Representation, Old Style"><h1 class="heading hide-type" alt="Section 2 A Matrix Representation, Old Style">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">A Matrix Representation, Old Style</span>
</h1></header></section></div>
︡259a297b-72e9-44fc-a9a1-201b5e7e5ead︡
︠7d3175ae-1100-4b5f-a7fa-92aadf95ef38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡cb5fcd56-b78c-4732-a7b1-143bf1a86989︡
︠1457414a-8010-4c94-ae0f-0143d357cb04︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Outputs on the domain basis first.</p></div>
︡529aadcf-84fa-44b3-a8a3-8b5cf204ad0b︡
︠15ea088c-7106-4b52-aedd-258727a3c40c︠
outputs = [T(b) for b in D]
outputs
︡022ed276-fe7f-4524-a812-638ebb65e2af︡
︠fb11af41-530c-436f-a8e0-b4333fea5dd0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡ccbee5d2-6367-4f9d-af2c-fd03042fe8cc︡
︠89848695-908f-4789-a58c-1892ba6ea577︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡1f0a381d-ebe7-4b60-a5b8-1c0bec65b0b2︡
︠7d187509-2f41-46f7-a752-f6e01dd8388e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now, coordinate versions of the outputs.</p></div>
︡a0bc8319-c491-46f1-ad76-f7de7ec47fdf︡
︠d80948c6-29bb-4b1b-ace2-3e90d1f96693︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡66b600fc-6162-4d13-a9e2-b1151f718d71︡
︠1d8d48d3-545c-463e-aacc-d7efd0e41729︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And then we pack them into a matrix.</p></div>
︡83710bad-f025-4d88-ab34-70c6096ee750︡
︠0e37f43a-12b4-478d-a030-4b1011a7f8f4︠
rep = column_matrix(coord)
rep
︡802c820b-d2e9-4661-a365-4b05c266a6f9︡
︠a89d4205-de7c-47e3-a81a-e55fb2118b88︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡420e0501-aef2-4b70-ae02-9e8fd31e5aad︡
︠2f02e18e-32d3-459a-a57b-819107416ab0︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡8df90eb8-deba-4213-ac7b-8fd10d95ef09︡
︠f97f28de-1acd-45fe-a9b5-535255febedb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡8d40d78b-5962-46c1-a55d-ab1fd75d60b3︡
︠c4114f9c-ae61-41cd-a323-0ce2cb929f35︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡30951d4a-9f9f-41ac-aeee-1ebf18bba5be︡
︠aee34f09-aa93-4aae-a69c-5ab1aca685b3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nice.</p></div>
︡35219619-0b49-4fe4-ae5d-aa76c2369bc5︡
︠efb01472-e7e2-41d0-a5c5-260addd046c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 A Matrix Representation, Sage Style"><h1 class="heading hide-type" alt="Section 3 A Matrix Representation, Sage Style">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">A Matrix Representation, Sage Style</span>
</h1></header></section></div>
︡baf6b0a3-39b1-4bcf-ab2b-1422fffc033c︡
︠3e735340-6792-494e-a800-425645631664︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡3a3be8e2-8592-4736-a6b7-709c6d2d1348︡
︠872c2041-3d6c-4fe0-a64b-ebc7825a06e4︠
T.matrix(side='right')
︡e7c13e28-0557-4255-a2c9-ea4a2cd77de5︡
︠1dcde0c1-8d6e-4494-a9b0-2ab74d425bf3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡110effec-0697-45d0-a96c-99650b24e80e︡
︠c1fdffce-bd44-4592-a629-2c29135473c7︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡19916802-6b0b-4065-a3c8-cf5f872eba18︡
︠131a4735-aa0b-4611-ac4d-50caf5124dc6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡5e979efc-3974-45e6-a6aa-4fb1ab7bdb8a︡
︠1e8b61a5-edf6-4244-a9bf-30ff29b9495d︠
rep2 == rep
︡37cb22dd-8ba7-41dc-a568-5a84aad542ea︡
︠021ce4fb-176c-4f7a-abd1-32cc7674cb7b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><header title="Section 4 Sneak Preview"><h1 class="heading hide-type" alt="Section 4 Sneak Preview">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Sneak Preview</span>
</h1></header></section></div>
︡67d84bc4-6ebd-4bb5-a563-7a536dad1699︡
︠100f85b5-9245-4ff0-a457-7c1d08aa6c10︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡620629cd-e5f2-4ae2-ab37-2b4495c4f210︡
︠3733e5ca-3b02-4ea1-a065-881dca28f2b0︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡3e7726df-00a0-439b-a491-a2ab0763056b︡
︠59ad0d4d-c4e7-4510-a15a-30cdbd410476︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Notice how Sage is conflicted about if <tt class="code-inline tex2jax_ignore">S</tt> and <tt class="code-inline tex2jax_ignore">T</tt> are equal or not.</p></div>
︡0d0bb18f-e43d-4b9e-aca4-6d43b0002159︡
︠85680198-08d4-459e-a358-7b6cf2c02e17︠
S == T
︡79de2efb-7044-459d-a3d3-c5f31e5ef8c0︡
︠f4ad2cb2-823c-4686-a4c3-8887ba618595︠
S.is_equal_function(T)
︡69916ce1-f632-439b-a9e8-d605dc04d8a7︡
︠553ed68c-caf5-407a-a306-e23d6fdfa3f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a56d433c-007f-4676-a0b6-7a9a80a5048f︡

