︠d5e7cece-347a-4f02-a701-2e9421ffcd86︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡95c8d869-7ade-45ce-a84f-97e2b13b0089︡
︠72f3acc1-63c4-4121-a0a5-04de69fa4fbd︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡92f86a52-cc59-407b-a186-78a461d5c258︡
︠ffaf70ad-37a9-41a0-adc8-331e8706dc83︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡482f8a02-83a2-4cbd-ad99-6cc7b5fbbc74︡
︠aaf9fdd3-2df5-4a0e-a5bd-7f038771ef0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡eb6e55c2-9e08-44a8-a304-0741bd83e72e︡
︠3199ffec-17a2-4fec-a81d-d25130ec3c36︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡b685f74e-465e-485d-a4ef-2b27d67b2b85︡
︠23ca8c2c-a620-45a5-a3f3-22f59cb18dd0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section MR</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡3f3fabcc-863b-4686-acb6-0e8f31ce34c0︡
︠4ff8fa3c-7c2a-4793-ae5f-45dd51e1025d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Linear Transformation and some Bases</span>
</h6></section></div>
︡2ad22dc6-932c-4ea5-a19a-0d0ea50961cc︡
︠ee6b199d-f212-4efd-a316-e14e0f408a14︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡703dc465-2674-4863-a5a4-c96077fb7869︡
︠dda0b652-b883-4c1a-af74-43db35231ab8︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡496ea14f-307c-444d-ae34-38713b76e90a︡
︠14372d97-dc85-48d9-a6cd-a05219d9fc20︠
T = linear_transformation(A, side='right')
T
︡745ab884-0518-4aa6-a302-0a26d40bd08f︡
︠0f35afd2-4e85-462f-ad60-07a2d87d34eb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡4ea84482-7c0f-4272-a249-240d7e5fc84a︡
︠388e1d3a-fa70-4a97-acbc-6e06b840719b︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡bd44b61f-01a8-4141-a91d-57b6e7f38741︡
︠2ff73be5-af74-4789-a92b-6722e19d4148︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡3772fbdd-18d8-4c51-a6e3-14b47950792b︡
︠16388246-05ed-4db3-af11-226e6d7bee51︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Matrix Representation, Old Style</span>
</h6></section></div>
︡a67df0f3-6085-4e60-a151-28496b6d75cc︡
︠672e41e4-554d-4a24-ab39-d621f8d664b3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡12a31f5f-3a48-48fb-acaf-67589516b7b7︡
︠aca40b36-b700-4f9f-aa6a-9d1f5b4610ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Outputs on the domain basis first.</p></div>
︡8893cae0-0a71-4a7a-aa10-4bd6b310a318︡
︠191ace5b-e556-46fd-a19f-2eaf46366ea7︠
outputs = [T(b) for b in D]
outputs
︡7b186d6b-950e-4b7e-a988-8a63ab9e20cc︡
︠8489ce73-a09b-4f42-addb-566b9072f93c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡6b0e4ddb-07c9-42be-a58c-0d279b70e7a1︡
︠30c4e11c-c239-4c64-aabd-6ca9344b533f︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡46f0ae1c-aeee-47a4-ac40-9bd44199dec0︡
︠d07d12b3-e62c-44a6-a96b-a0785b9e57c1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Now, coordinate versions of the outputs.</p></div>
︡8a2f7322-708a-4cd4-a36b-e1c59113f6ac︡
︠836a2de4-0558-4026-a45d-04eda8ecbe36︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡ab915ce3-1e96-47a8-aefe-bf2acd2b9e9c︡
︠448d5da4-1b3b-41b5-aa94-843be091c3f6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">And then we pack them into a matrix.</p></div>
︡03a8105b-5768-4283-a73c-bb1f70001c30︡
︠234db5d1-1388-4bb0-ae23-befce7ce8ebb︠
rep = column_matrix(coord)
rep
︡eef2bb89-dac6-4271-a363-6226e0dbf59a︡
︠1881a4d3-dad9-4101-a238-6aa8099e484d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡265b80f5-4d02-4612-a835-1afb205be933︡
︠769d21e1-73e7-4559-a8ed-df7dbad05ca9︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡010af2cd-4302-4b68-a5e6-2c699147294c︡
︠34e4ed6b-baec-4da2-a5f1-b1d2b73ff693︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡2d8117f8-2a21-47fb-aa5b-b1d9391790d3︡
︠400c1241-a6cd-483d-a4d2-f93d3664df5b︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡39b36d6b-f01b-4eae-abeb-dd50b871c511︡
︠04bc82af-d90f-44e9-a297-e65370cf2844︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Nice.</p></div>
︡a586218c-0660-45af-afd8-6cfc07dc6f5b︡
︠4f0d52ee-ff45-40a0-af9d-80a7daea75ac︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">A Matrix Representation, Sage Style</span>
</h6></section></div>
︡1ec2b24a-04a5-49a0-a9a9-72a297c814ec︡
︠0fad16f6-00ab-4645-a6ef-051a7b244492︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡092b7426-a375-4ed9-a437-34d5f511a653︡
︠86db24f4-a981-4f6f-a8a3-0e7e46358dbe︠
T.matrix(side='right')
︡144e072f-cd94-4f8a-ae15-123808f4d719︡
︠52ea1e23-ee08-42f1-ade3-3f5785f79deb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡74e5ff41-33f4-4b24-ad02-0325aab91560︡
︠1d503408-53b5-4777-ab47-e4a0a5a6ecc5︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡dd32e77e-fc1a-4192-a956-03bb460fcfb9︡
︠5979b502-3ff5-4a1e-aca4-3b8e6c47b177︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡bc025c75-fa5e-4000-aeca-2f6aed73435b︡
︠a08b2d7a-3659-4559-a536-0666143888bd︠
rep2 == rep
︡46dd10a8-aeff-4744-a198-79fd00239ac5︡
︠71b5ed59-6075-4ff9-a403-c8cc5cc7062d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">4</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Sneak Preview</span>
</h6></section></div>
︡b9e7ed54-6b4e-404d-aa8e-d56a1c7e4846︡
︠5f047f1c-4788-468c-a335-20a9ab629bae︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡1fe24525-26da-4e33-ab76-0a7a426a405e︡
︠e7eca22c-7525-4f19-a3c0-acb17f3e98ff︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡6e64a06d-de2f-4420-ad5d-efa9128502d0︡
︠14e8999f-66e8-462b-a700-4e0e71006134︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Notice how Sage is conflicted about if <code class="code-inline tex2jax_ignore">S</code> and <code class="code-inline tex2jax_ignore">T</code> are equal or not.</p></div>
︡158fd187-1fd0-4843-a3b3-4f24da6eadfd︡
︠102a00c9-7d85-4e09-a144-5837c112fcff︠
S == T
︡a1fdb0d8-9552-4a42-a457-8bfc2cd3ed0e︡
︠ca0c7cc5-46aa-485e-aa94-22f1e1dc5ca5︠
S.is_equal_function(T)
︡b60b377f-cc57-46dc-a485-8a77c6992f6c︡
︠5135d6d5-591b-4079-adc1-24cac8061358︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡fa93079d-cf7e-4a86-a352-587133939b6f︡
︠36adaa53-822f-40d7-a61d-97509832cde3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡c2a6f415-897b-4878-a0ea-d7138bcbd99c︡
︠0cc2c4dc-7502-48ce-a5a7-e04b8f07ac42︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡04fd7b24-89a8-4c24-aa7f-26f61852f0e4︡

