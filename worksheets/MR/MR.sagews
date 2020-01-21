︠a49e4119-1952-43d2-ae6d-faaa9f0faf4c︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡7f00d41f-e383-45b0-a8a7-6a104b04ba4f︡
︠6bf7cdbe-ca15-4d71-ae0c-56676a26fd13︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d8fcfc9b-a65c-4c23-ad14-a6a0d1b08be9︡
︠fb1f80b2-b581-4143-a525-9cb4d9599d48︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡73482c9e-e537-465c-aabf-f5bba94f2ed7︡
︠1e14b082-421a-40a6-a528-e419e6f83a26︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡c35e81e1-3334-4d3e-a391-c75e1340c8af︡
︠f7345b54-c870-4d53-ac9d-d54235686210︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡20855d1a-1d39-4d1e-a1d8-ebe3d293af6c︡
︠08c8e26f-d7d0-41b2-afcf-8ba6f889c383︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section MR</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡f9bc29e8-8b05-4c11-ae1d-d998f9182dbb︡
︠0b4c7766-ff1f-45e0-a6c1-3abd3a64282e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation and some Bases</span>
</h6></section></div>
︡3398f1f6-7f59-4ea7-af04-14ec11686918︡
︠85b2db3d-1bc6-45b0-ada0-1b4f761ef780︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡f05b3377-182d-4f89-af54-06f567c76bfe︡
︠bef1a241-95ac-4394-ac9a-0910f88c0e7f︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡d3dc48f9-99f3-452c-aaf6-50070ff9cf73︡
︠e57c2b51-5eb4-4206-afb5-51658658f177︠
T = linear_transformation(A, side='right')
T
︡56cc3e78-0c7b-41ac-a797-de9341aa9ab1︡
︠208eccd4-5d1c-4826-a4a0-c8f5b376d119︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡33ac168f-bdcd-4a50-a09a-1620ce435156︡
︠b8a54bcd-b7a7-454c-a556-f6c2681ac6c1︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡d8a7df39-ce17-456b-a2b1-8b75deee9a56︡
︠c2e79b7c-53a6-4b0d-a728-8b4f02ee0796︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡e68cd184-ed88-4449-a1bb-a37e38116190︡
︠7770442c-90a2-48e6-a201-db55a8dba4d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Representation, Old Style</span>
</h6></section></div>
︡45cb5007-da78-4d06-a427-602b5d428e65︡
︠2bae70f8-7c3f-440f-ab52-3b26783bbba2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡1ddbb5bb-e381-42d2-a297-5c283a065b20︡
︠d3dbf91b-4fed-401a-a243-a90d1371addc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Outputs on the domain basis first.</p></div>
︡db0a7f38-a879-458a-a0be-35742889a267︡
︠f43feae2-28ba-4112-ac1d-a53295b1e535︠
outputs = [T(b) for b in D]
outputs
︡d29128b0-be96-48b7-ab78-92dc5720806c︡
︠54ff5171-22fb-4987-a04e-9e17b7ed77ee︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡4333395a-a7da-4362-aa77-916a8117e9ec︡
︠820b634c-ef3c-4972-ac1a-4aba54b7ba1a︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡79c853ca-fb93-473a-aa0b-4460fc4a3f55︡
︠9ce654a1-e9c8-4d3c-a7ec-321a3067ba71︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now, coordinate versions of the outputs.</p></div>
︡f1ee8332-42c1-4aa4-a713-4555f9660208︡
︠3091f252-5941-4afc-af6d-2a380317929a︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡adb4fa64-dbe2-4d91-a988-7b3b43e6b885︡
︠232e828e-66a4-488d-aa26-2a266694d5c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And then we pack them into a matrix.</p></div>
︡af9dd1f6-06cb-4a54-a8f7-f2118782c589︡
︠b2850570-c869-441e-a8ae-f911b983c594︠
rep = column_matrix(coord)
rep
︡e576a7c2-89af-42e0-a07b-f6407fa0366c︡
︠b412bca8-f21a-4138-a240-d3724f2ef546︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡20a3260d-ef0f-4a13-a347-31ba4f96d9b2︡
︠fd2a1502-2e22-4ec4-a1f8-82a3df265001︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡2fe5a0aa-2d95-4f71-a481-c03741668c68︡
︠d98ce2c8-cf55-445c-a695-765beac50417︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡cf15bf78-837e-49c3-a63d-ba4153b28c6a︡
︠33948540-dc35-4ad2-ae45-cff1154c7d8e︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡8c211a66-a42e-49dc-abc0-1900a16fedd6︡
︠c53e659d-b42e-42bc-af79-08209d2fd0da︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nice.</p></div>
︡79fa7601-4c56-4a82-a67a-f7328d0acdba︡
︠7247dced-d392-494a-acb2-6ba9d27dd3b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Matrix Representation, Sage Style</span>
</h6></section></div>
︡e3a2a7e9-5bcf-4e63-a82e-b995368a45ef︡
︠dc38ed0d-7593-447a-a80c-6b5f08683be1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡bcde4cc5-a3a3-47fb-a17b-ee74e7d5000f︡
︠1cbfa0b7-55a0-492f-a447-f35674e59f59︠
T.matrix(side='right')
︡e65a50a1-7072-4004-af49-73cda4199a9e︡
︠485a2bad-c2d3-44d3-a9d8-34cf26430dd9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡c212c4d7-1a9e-4edc-a279-aae6a0de3db1︡
︠7839a0d7-7e20-4d0e-a925-3c013a1085e4︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡66daf7ac-f2b1-4282-a124-751764185ad4︡
︠f4acea49-73b2-45eb-a7fd-b63dea1027af︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡ba36621a-b8e7-4a35-a6b5-46c74a15a4d5︡
︠490707a1-1690-4d44-a3af-8e646af7f9bd︠
rep2 == rep
︡ff6f7662-7881-4965-ad90-c2e274c6ccf8︡
︠9f80e065-2eeb-4071-a54b-60e53590b6cb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Sneak Preview</span>
</h6></section></div>
︡e6a7697d-f9cd-44c4-a628-1890dd57d0e9︡
︠bd06470b-5f41-4c9e-a0f1-91a318060d7e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡73b7affa-a49f-4668-a577-61914a951929︡
︠8ac32721-1d6b-4cc2-a419-c8a59ff241c7︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡a41783fa-508b-4c47-ae89-7512ab1ae5ba︡
︠c6fee71d-27ea-42bf-aa98-31d547051fbd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Notice how Sage is conflicted about if <code class="code-inline tex2jax_ignore">S</code> and <code class="code-inline tex2jax_ignore">T</code> are equal or not.</p></div>
︡a8497218-040e-4e2a-adc3-605369b7fd6b︡
︠a04fab1c-4204-41f6-abd3-f3446ae11de7︠
S == T
︡998d838a-fccf-40de-a79b-b8efc59b7a96︡
︠22fbf8e8-2d4e-4d5c-acc6-87e77bc063bf︠
S.is_equal_function(T)
︡ae199117-935e-4233-aff0-5784fffb06fb︡
︠59973294-a280-40b3-a4b3-41bd5ac46ca5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡80f18241-7e4f-4f5b-a2a6-6e71ccb9115c︡
︠7ec6f583-7f2b-4f11-aa4b-1aa8b657f695︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡213f7350-7c0a-470b-a9b0-4cae565ae518︡
︠64bace76-c6b0-4d25-aad1-9d7581ed11be︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8123cf13-5d91-4d74-a311-5bed07ef4f1f︡

