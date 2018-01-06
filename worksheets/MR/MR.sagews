︠333a98c0-2b63-4e94-a09b-403d34cc1e8f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡6b395c12-d4d3-47bd-acc6-717beafa719f︡
︠0fa49f0b-2dff-416b-ae38-5a9c68753e6c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d7c8b58b-0a9f-4ab6-a699-ef48ca030327︡
︠00ec8921-52bf-426a-a9c4-3a383f343386︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a8685f27-08ac-47c2-a26e-69991c940d88︡
︠fd885869-5175-4413-addd-859916718fc0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡dce643fb-d5d4-4a16-adf3-a8941aa9c398︡
︠4652da6c-5412-48c4-af93-24bc8d63627f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡bb61e4b5-0092-432f-a718-b4d705479ba0︡
︠b6c27b62-073a-4a6c-a9de-292f0354bf05︠
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
︡0cbce375-58d8-427f-af1c-e451464abf9b︡
︠5971664d-ca69-4391-a293-f7748bbd66cf︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 A Linear Transformation and some Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">A Linear Transformation and some Bases</span>
</h2></section></div>
︡12993f07-dd23-465d-a876-b6d2b6e634c0︡
︠4e2d85c9-da60-4ed5-ab5c-203f3f615962︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡aa1c8a25-40fb-40d8-a68d-3ae6a2513bba︡
︠e5502da5-2f51-4a6e-a2d7-002f7d1de599︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡f7e47112-641c-45b3-a4e0-cf1ee8bf695f︡
︠34719f2b-19f3-455f-a89e-85d94c2fc891︠
T = linear_transformation(A, side='right')
T
︡7c6eefd1-afaa-430f-a289-01feb3ad366d︡
︠7eadd8db-a8a5-42e6-a20e-c10b0bfa9210︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡f9ea6b34-6dc1-43ff-a910-8e299259debe︡
︠eb7d5e88-2f6f-41ae-a14f-1ce4577a049c︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡388b6eaf-7ced-4b08-a91c-93978fff9043︡
︠d8c5324d-1ba0-4960-a102-e9571d61d021︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡3f905d29-b445-44eb-a50b-7e5d57bc98cb︡
︠90a30f13-9c7e-41cc-ad2c-99bf7072c0a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 A Matrix Representation, Old Style">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">A Matrix Representation, Old Style</span>
</h2></section></div>
︡b4968969-cf54-4d71-aa53-6ec2e4256f61︡
︠82528ebe-78ed-4db5-ae5a-1c9ee721d913︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡aa50cee8-c61a-43e6-a8db-2e8cd64f8189︡
︠433a3081-957a-40b9-a636-265a2216198a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Outputs on the domain basis first.</p></div>
︡3dd77080-2159-4b54-a4c8-bef0912a8441︡
︠f7edf6e7-608c-4a42-af9e-74d7569801c5︠
outputs = [T(b) for b in D]
outputs
︡2cc19c77-4e8c-4a21-ad2a-caf914fac0c9︡
︠5f520fe8-726f-4f12-a0e4-bafa30e3ba37︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡4869a799-f0c6-40b7-a2c6-7707147f82ab︡
︠ae418f82-8824-4e30-a56c-bd3c441c49fe︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡5ad9b684-81cb-46ae-a604-2c25879a4d34︡
︠c9e9390b-e8da-4435-a395-7b1a0a2a4678︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now, coordinate versions of the outputs.</p></div>
︡a319d43d-016e-4ba1-a0da-556707121699︡
︠e4d0da50-851f-43d9-a5d7-03d6beed0f3a︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡82f63d18-d9ef-492c-a27a-a8e8e96c66ca︡
︠15c0bfdc-8b66-4bf8-a820-2d8157ab4120︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And then we pack them into a matrix.</p></div>
︡b3684282-f0e5-4795-a028-04596a016528︡
︠6ecc71ef-4d02-437c-a98e-18371922a87d︠
rep = column_matrix(coord)
rep
︡0dcda3f8-3364-459b-a233-04c4bedd1868︡
︠67624063-997f-4dd9-a9fc-d01a4d82b9a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡21893d99-1338-4205-aca5-975b298ac447︡
︠578e0bca-5dd8-4608-acd3-17a72c1b7dfc︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡454c4570-fded-455e-ae1b-133ca59b1091︡
︠dd719b61-c6fa-434f-a221-d340ff68b894︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡97209ccf-e86d-43a1-a2c3-4a79b78203aa︡
︠841a5a61-a490-41db-a207-642ddd55f59a︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡f1e0b3b1-456e-467b-a1ac-900bed93389d︡
︠38e19a54-c9a2-480a-a424-0b4163f07380︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nice.</p></div>
︡0c9fd293-76c2-4853-a3a5-7b0cc7fc86f1︡
︠6fdffb29-eafb-4c80-afbb-4265e3def54f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 A Matrix Representation, Sage Style">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">A Matrix Representation, Sage Style</span>
</h2></section></div>
︡6bf3befd-7d77-483f-a93a-47dbdcfbae0f︡
︠e7adb5ca-348b-4b0f-aa92-5ea298e93884︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡86b24780-2c4a-47fa-a7a4-9f241cc05f9e︡
︠314f486c-889d-430c-ad76-216557217711︠
T.matrix(side='right')
︡642a362a-2b3c-496c-a644-d663bbadd25e︡
︠3b2656c8-1f44-4bda-a83f-c05230eeeb13︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡a5fcb538-d472-493f-a4b3-3848a8997758︡
︠bfeacaff-2d4a-4fdd-af28-3507dbf756ea︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡fa9e4584-5a29-4427-a219-a5ebcc7c3c32︡
︠63df1159-6a48-448a-abac-55131e08a44e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡7a14a260-bcaf-45e8-a0a3-cf9e3ac42786︡
︠50174c9b-c577-45d6-add1-1a0b845487c1︠
rep2 == rep
︡e21096d2-1989-41d6-a7b4-8de987ddc658︡
︠74a943f2-60be-49db-a046-4d337ba496be︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type" alt="Section 4 Sneak Preview">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Sneak Preview</span>
</h2></section></div>
︡e239b8ca-a2a6-4143-ac48-3957cc361cdc︡
︠bcff5a71-5140-4754-ab29-3529df5067d3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡39f384df-631b-4391-a843-1894163779e4︡
︠d2dc5613-5867-4490-a525-83d28e9b5054︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡4262fb81-fe95-46de-a720-cb4aed978f7e︡
︠3c19e057-146b-4ac8-a83b-9f7ea6b3d425︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Notice how Sage is conflicted about if <code class="code-inline tex2jax_ignore">S</code> and <code class="code-inline tex2jax_ignore">T</code> are equal or not.</p></div>
︡3514f055-869e-423a-aacd-66de5841b26e︡
︠7939d392-8292-40b6-ab63-9ca7bfff1b27︠
S == T
︡990c2d0c-08e9-4bf5-a1ab-448fb3fa3055︡
︠7ff8b26b-e64d-40fc-a507-05b956c41047︠
S.is_equal_function(T)
︡6c65427a-e503-4312-af63-77920e9d2bd7︡
︠3219b68e-d967-45e4-a70a-564e05b9ab72︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡4a4540bc-e864-40b3-a423-f8a37a9243eb︡

