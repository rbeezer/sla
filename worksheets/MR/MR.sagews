︠4fde5b42-73d0-43e7-a92a-1daaca792d59︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡ba898e4c-1b0e-4c3d-a4df-efd8993135e9︡
︠f9383b77-8839-47fd-a44a-42a1b4bf5f53︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡84dcc084-81cb-4a4b-a88f-2d2dfd1ac6a1︡
︠a368f387-7183-4d38-a9b0-9edbbd8d8532︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡6e5c640f-c705-4bd8-a364-3f21bef3b79f︡
︠dd97f301-da63-4633-a8d0-0e1874cbeb8f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MR"></section></div>
︡d5c7dcad-e884-4cf7-af85-08321a6e65ae︡
︠5731e0e9-ec17-41d6-a8de-de7109c772c1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡11843752-04f2-4b00-a19e-07c78d154881︡
︠9922d693-9a88-4d38-ad51-b598d25f7a7f︠
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
<div class="date">Fall 2019</div>
</div>
︡b18e364d-ad82-4656-ae2b-0e196fbce365︡
︠316c0a34-8d20-4095-a688-18632d3ea120︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">A Linear Transformation and some Bases</span>
</h6></section></div>
︡752e1294-712a-4124-a79c-fb56e7416e39︡
︠fbf2a053-5d58-486b-ace4-8efd4d58fc73︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\text{.}\)  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p></div>
︡56e4995e-cbb1-4338-aff7-3752590a2f6a︡
︠3c120ab6-8814-4958-a247-98fea48afba5︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A
︡5e17021b-8a3a-4fd0-a7f5-f9df874123cd︡
︠92bb9beb-6659-4147-a1c6-6b03b8bf9d26︠
T = linear_transformation(A, side='right')
T
︡ac857215-d7c2-41e7-a804-f6f0aa86a23c︡
︠9e914135-61d3-43e1-ab71-f68f63af942d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p></div>
︡1bcad0b1-6223-4662-a829-a102176b7009︡
︠d159c3a8-50b7-431e-a590-e32f636dfddf︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D
︡7a1d4e0e-65e1-4d22-ab7c-b60d571b4091︡
︠00c1d1fe-f63e-4700-aac7-78d763e7f388︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C
︡4991b72b-5118-4f99-af46-7be53491b844︡
︠19dab81d-36f4-4ffe-a9f2-f6ddc0152dd7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">A Matrix Representation, Old Style</span>
</h6></section></div>
︡1e1e9c7a-9a19-4f08-ada7-f9ed6ad8005d︡
︠76c9565c-0f71-4862-a03c-7266fd0d50da︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p></div>
︡e51be714-423b-44b1-a6b5-3379976a5cb3︡
︠79884706-b48f-40ca-a236-76ae0467eb39︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Outputs on the domain basis first.</p></div>
︡ea3738f3-ea87-4a94-a4b7-b2e51e975838︡
︠213596e8-ad32-44db-a817-fd9e2acc1254︠
outputs = [T(b) for b in D]
outputs
︡b76edf4b-7f9a-41d7-ad69-566e49816a3b︡
︠ff35d052-cd15-4833-af1a-9600459d6f8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We make a vector space for the codomain, with the desired basis.</p></div>
︡a79ed7e2-abfc-4170-a471-f18f1d4aaba2︡
︠55af3772-91d9-4de1-ad39-f2a72c477f21︠
VC = (QQ^m).subspace_with_basis(C)
VC
︡287c8a3f-cd0a-47e9-a8cd-1b0c3288af7d︡
︠1a586d39-cf7d-4aec-a368-1841584e1ed8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now, coordinate versions of the outputs.</p></div>
︡bf3079ea-3baa-4958-a58f-ea73bdbfbdd8︡
︠59799f28-a544-40d9-a832-71cf58c177e5︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord
︡04e8d87f-1255-4653-a0e6-36705c82d09b︡
︠6af52dea-cfc2-4538-a846-e7c6713f410d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And then we pack them into a matrix.</p></div>
︡d68dbaa9-5792-49e6-a17a-8614d8608a28︡
︠8ff0dab7-40ed-438c-a9a4-32a577dd868a︠
rep = column_matrix(coord)
rep
︡f0ae078c-eddd-4b06-a8a0-ce373af18870︡
︠261c524d-e3bb-416c-a7e6-8b5b2862afa2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p></div>
︡fc909e2e-c117-4d2d-a9ab-0265e9e5b845︡
︠b3244c27-ae8c-455e-a3f8-ffb659f4ebd2︠
VD = (QQ^n).subspace_with_basis(D)
VD
︡1863cb0f-2beb-4741-a670-e60ac63ca278︡
︠590ccd7d-ca8b-450f-a767-75e8fbe3796f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p></div>
︡1c8285ff-3cac-470c-a773-ee9d6985c0f3︡
︠f0f827e2-71e1-4d62-aad9-dc76aef24c23︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out
︡f24fb669-8eb7-408e-a22c-b08362265638︡
︠a3ae2659-fe7b-4583-a4b6-0768adbd3146︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nice.</p></div>
︡9e94dca2-5a0d-4566-a8a1-fa85332f0604︡
︠c936d028-3824-457a-ab05-df05548839e4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">A Matrix Representation, Sage Style</span>
</h6></section></div>
︡ebe12c24-45d6-492e-a4ee-9bea14eac23b︡
︠61643905-d5ab-4b3d-a98c-8187c9ba38c7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p></div>
︡338a8b39-11eb-4caf-aa37-7c9f358e0c7d︡
︠4a0d5988-2aa1-456b-a51e-c8b67eb0dbd4︠
T.matrix(side='right')
︡81e9e327-c516-467d-a1ce-096bfeabf76c︡
︠bfea8cdb-4a05-406d-ad8a-c932531fe064︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them by the same vector space, but each has a different basis.</p></div>
︡d23bcc7a-7c47-424e-af27-9e0d16025e3c︡
︠20e6bb33-5af9-421e-a011-8af871e74467︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2
︡1880f3b2-70c7-49f9-a8fa-97590caf4e4a︡
︠653e5320-5a12-41b1-ab31-5c9a5a709cfe︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Bingo!  This is representation we found above.  A one-liner in Sage.</p></div>
︡753a49d7-a31b-4636-a7ea-9372edc6d62c︡
︠49284622-dd5f-48b3-af31-ac51f4ecab2d︠
rep2 == rep
︡876a0a13-df02-4e9e-a181-33e94dd398fc︡
︠574b1563-8328-4601-a42a-66d4f21d5b54︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Sneak Preview</span>
</h6></section></div>
︡7bcb6e0d-1913-4184-a3c7-e2dc6de8b431︡
︠9ac56337-0502-482a-ad67-45a211009b5c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p></div>
︡ce784eb8-5cd6-4f69-aa3f-174b96c9665b︡
︠21aaae86-7d24-442a-adcd-cd519e768ecd︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat
︡9ff49932-fa02-4e44-a910-7eecf7b7e45a︡
︠1fa134b6-6a06-4dfa-a29b-20a1c99817c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Notice how Sage is conflicted about if <code class="code-inline tex2jax_ignore">S</code> and <code class="code-inline tex2jax_ignore">T</code> are equal or not.</p></div>
︡2e5df81a-f75f-4e2f-a858-488f9582d9a9︡
︠0d85a7eb-2d37-4c1a-acaf-4f8ce1274f1f︠
S == T
︡91c17795-3b26-43f8-aeb3-ef36c27e9cea︡
︠b7c893f2-82eb-492a-a205-6e5951bc059e︠
S.is_equal_function(T)
︡046cdf0c-29f1-4493-aec3-4229c7b84bde︡
︠9e3fb0fb-d25c-4396-a682-ac5d6152a9d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡876b71b7-d892-45cb-ab34-ed03a75f9f97︡
︠71edc6f8-dc06-4e63-aa26-e03f3e69e088︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡7f96d6cc-ea8f-4176-a428-a08e0cd75c7e︡
︠9fdfc44d-3044-46f2-af28-368583377ee0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d80b7dfb-a2ce-472e-a910-247aafed66c5︡

