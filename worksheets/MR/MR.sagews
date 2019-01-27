︠a322dbe9-0db4-4c59-a06f-5efe9819f6b2︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡c56f83a6-db39-400e-aa04-95283c1560c1︡
︠387a8fd3-6bfa-44fa-a29a-730ac46d9de5︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡e1e6c769-ac59-4699-a1c2-c36ce2140b1e︡
︠000f7c7d-61ab-4b15-a421-7e5eb30d808a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f9af81bf-f11a-4ddb-a22e-4ad988d965ae︡
︠2f56dc46-74fa-452b-ae29-4adaaec5ad96︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡cb6223f6-a6a9-410c-acef-53a3e51bab84︡
︠25f872b6-86d2-4ff3-abb2-b15553a6e426︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡94b8d3b9-93f7-46f7-a9a2-b640b93501a3︡
︠8383c567-e0ad-481c-afa7-26d7781ae1c8︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section MR</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡55cd9830-f11a-4f9c-ac97-4cd134a4f96c︡
︠1b1d9b6c-b6ec-40e6-adaf-4ec1006b464b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation and some Bases</span>
</h2></section></div>
︡266440fa-da0b-4719-ade4-d339549b0e15︡
︠94b09f08-ae3a-49ac-a38a-86dcf209e080︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡52512e13-7b1b-46b6-a2fe-d74b34e4ec56︡
︠db92cc1e-0892-430d-a92d-8f5cb819df52︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡63e06ac7-9cf2-4e33-acd5-955e2073a43f︡
︠79359906-0920-4c13-afd0-565b47ccb61e︠
T = linear_transformation(A, side='right')
T
︡6889e22e-838b-435c-a749-8afe54621182︡
︠0eb889bb-83e0-4e25-aaaa-42540b97da85︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡c9371b1c-6905-4af7-a092-be4025bbc865︡
︠d2e1a0dc-d46d-490c-a116-3c48d7e92a28︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡0fbf16ff-2c38-4ad9-a7eb-d272a598ec30︡
︠53003272-1af4-42a1-ac10-7f2f1d5b647a︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡4de5d185-39f3-4e2d-a0ef-16e4601bb8f3︡
︠24009e22-36c2-49a4-a7b3-6ca40042b0ba︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Representation, Old Style</span>
</h2></section></div>
︡4ef4f931-b677-4912-ae8d-2fac4bc8e899︡
︠3d7226b5-86bf-4e50-a039-e5881c3e517f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡bac2cf98-41f0-41d5-a2e8-cce44018e7a6︡
︠75048d32-5745-4753-ac71-54e3823ab225︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Outputs on the domain basis first.</p></div>
︡89b9e361-6c8a-410f-a5c7-62b45479f3c2︡
︠95c4ea84-be14-4934-a981-0e3c391b31ef︠
outputs = [T(b) for b in D]
outputs
︡3740c3a4-7639-4bcc-a054-163537f52261︡
︠1a86a495-91cd-4a8a-a780-ca70fa7ef906︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡b2039b82-124e-40f6-aa6e-a38137ca6c47︡
︠2fa333fc-60ea-4eea-a491-344b67322af6︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡126c5af4-6654-4133-ab8c-cc11778bab59︡
︠27b83123-589b-4daf-a067-d34e4b6d608c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now, coordinate versions of the outputs.</p></div>
︡aa353775-ace4-48cf-a7d5-fa939df0b603︡
︠2bd610d8-6855-4cd1-ab4e-149a738643c5︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡6f046154-9cce-419b-a340-264c0c0934c0︡
︠93f975ad-9496-42bf-aef4-e1a3dbfe5321︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And then we pack them into a matrix.</p></div>
︡3b435c8f-a243-496f-a84e-d3087e37c9ae︡
︠ad9f0ec9-e6c2-4a59-a9ee-7b273967020a︠
rep = column_matrix(coord)
rep
︡0b8aa997-28df-4b74-a412-29e411e79e99︡
︠99424fbd-6d64-4c1b-a15d-4862d74ceea7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡841d65c1-33f9-47ca-a3e0-029656ea2c8d︡
︠3124e8aa-adea-4756-a195-2a7b1d2f75b0︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡3f154fee-a9c8-433e-aa57-f72733452bbe︡
︠ceee32d1-18ad-40e1-af86-78e9f1d370f2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡ec0ca4f8-6001-4e1f-af08-6805107e4ee3︡
︠1d02aa69-3ca3-4e95-ad86-6fe74f7bebad︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡fbafd5a4-fd1a-41f3-a6dc-d3bbb0b2bae6︡
︠7e12ef89-3764-4184-a4e1-0c5c70c338d2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nice.</p></div>
︡e5007f0f-847e-4986-add5-ee14b947c70a︡
︠affa07a0-724e-41d7-a8a5-e930ee9266a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Matrix Representation, Sage Style</span>
</h2></section></div>
︡1460f789-7fcc-4dea-a465-94fd5dcff25a︡
︠a7f18e80-80f5-4dc3-a719-cbeb93852888︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡2201380b-89c7-4e94-a205-cd1a8ae0f197︡
︠ababdd3e-9b76-436f-a790-d5de058f680f︠
T.matrix(side='right')
︡0bba698a-715f-4786-a70f-7d45b4a431d4︡
︠1e0c8760-1d27-4ca0-a220-19d6e9b9efbb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡3c9492cf-3ec6-4590-a6c2-6ec44bef5ce0︡
︠82d17643-5712-4d7b-aee7-146e9a97af48︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡fcbcd231-6898-4a60-a65e-e6344cfe49d8︡
︠1d4da2fd-465d-4e04-ae79-c600a4d93130︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡a4ee2801-557b-426c-a653-0290245fe801︡
︠8a6698fa-a4f1-4f18-ab8d-f8f992de1b62︠
rep2 == rep
︡cfd267b5-1590-4792-af5b-d44dddfbb162︡
︠43116781-da67-4be0-add6-9bbd89a846ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Sneak Preview</span>
</h2></section></div>
︡8eeaf528-7f3e-46ec-a7ca-d5592e2d7631︡
︠1cf07f69-8e9b-4c09-a975-35a9ed80af7e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡09a0a1f1-b7f4-42b4-ac5c-181c20aa14a8︡
︠3a2eac0a-eb1d-4049-a50e-1263f94945ee︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡e29003d0-ebcf-49c4-a215-0387671a1500︡
︠3e2cf20d-3e9f-4e2c-a35d-8501d78e2a32︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Notice how Sage is conflicted about if <code class="code-inline tex2jax_ignore">S</code> and <code class="code-inline tex2jax_ignore">T</code> are equal or not.</p></div>
︡b71d4004-e337-422a-ae5f-ce5df3581735︡
︠9edac1bc-69fa-412c-ab12-be10c141a68e︠
S == T
︡b2c9c8b8-5125-4b38-a8fa-ba8db5ef695e︡
︠7114aed5-6278-473c-a0bb-a75340830ed5︠
S.is_equal_function(T)
︡d46e81c5-738e-4c01-a80d-3a58ea96d95b︡
︠f3f6187e-ef27-4de7-af67-d92220db7a5c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡64f6a1e2-0d12-44f0-abf7-3d16037dee84︡
︠be8b43d2-5e07-4047-a106-944aa4d11c09︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡0c798bc5-e23f-4944-a064-7f8b93065136︡
︠f97a80c4-fb61-453e-a160-fabc4351cb66︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a601081c-c183-43e6-a1fd-2e7dbc10ddc4︡

