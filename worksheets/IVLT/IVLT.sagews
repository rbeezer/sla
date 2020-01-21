︠ac5285af-1f75-4e51-a8b1-ce98974e1990︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e4d36591-5a0c-4ff1-a07d-23cbc52043ad︡
︠4821c875-ac0b-49fa-ab01-8255e1a02f4c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d95fa282-82f8-4e87-a847-ada0282d94ce︡
︠19778290-4233-4a1b-a2a0-a5d45fd7c6c9︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡5e2c5bef-c21f-46c0-a2eb-280fc5fadb0a︡
︠c5939f32-cb95-40ef-a93c-f7c9e95b3b4e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡404d3dc7-f939-4e37-adcb-9c2551fac360︡
︠1a157434-c2df-4bc3-a3a0-e4c1a229dfc3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡0ed14567-a3a8-4264-a69f-67339d5c72b4︡
︠6b33d793-e368-4b9e-a0f8-f603990e5811︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section IVLT</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡c7dfba74-e584-4e4e-ad4d-54367df8b50d︡
︠6d43cfe4-4c9c-4080-af55-db9020e18a79︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Invertible Linear Transformations</span>
</h6></section></div>
︡7e6b13bf-70c1-4cd9-adcf-29bcadd8f626︡
︠f9465691-6012-42ef-abbb-be46bf4873ea︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡9e3e494e-bafc-4d1b-acd7-885df1c3a468︡
︠e072fcb3-a6e9-43ca-ae88-510be0ca36ea︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡fdb7fa3a-ed1d-4749-a232-a83b42b0de7c︡
︠9794e8f1-2df4-4b69-a49c-735be9d99a81︠
T.is_injective(), T.is_surjective()
︡618f6676-8a47-4efe-a847-4bb969243cec︡
︠e4e644db-a66e-4e5e-acd2-41efb59e9cb8︠
T.is_invertible()
︡89d601be-d643-4528-a3f6-638433ac239e︡
︠b27998a5-67ba-4b0d-a44c-aaf3f369f9d9︠
S = T.inverse()
S
︡79bf257c-ae45-4906-a65b-2f623559e53b︡
︠ea5a97f1-3af8-4f99-a6fe-12e741d9bcfe︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The <code class="code-inline tex2jax_ignore">*</code> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡8d8d8248-3823-402c-aa8c-8ae6227fc2bb︡
︠139902c4-afdc-43de-a087-c01a63de3a1e︠
comp = S*T
comp
︡521fc218-7c84-48c2-a7ca-e8a0314007a1︡
︠50470191-a1e2-456e-a7eb-1d3ce7d27d92︠
comp.is_identity()
︡ff247250-4f22-4279-a1f8-c050c37a6f8f︡
︠17f4c671-7b19-4e30-a85f-01062da97080︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Defining an Invertible Linear Transformation on Bases</span>
</h6></section></div>
︡0a8fe455-6c17-460b-a680-6927044aecb7︡
︠cb14bf90-5fd6-4736-a2af-319689bd4a90︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡16c3a734-8836-4fb9-a6d4-515e8e83bde4︡
︠dfb92606-a9ed-4fe9-a947-da8391115df3︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡2c3d5636-cdfb-4bf9-a48d-b684a15c3a92︡
︠ebe1847c-b39b-4f4a-a893-649e930e0399︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Vector spaces with defined user bases.</p></div>
︡58549e81-a453-4f48-a9d1-d36620a2fa58︡
︠4b19fa78-c2c1-45b5-ae53-02679974c6f2︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡f3d0ddb5-5771-48dd-aeb3-1b583f2a3e02︡
︠1f6e04cb-9121-43bf-a1aa-4c6949974c64︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <code class="code-inline tex2jax_ignore">D</code>.</p></div>
︡f74565a2-0443-457e-a498-fd56790014c7︡
︠9cee243c-730b-4763-a5ac-ea9300d11f5d︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡6ea5dca0-8149-4cbf-af1a-c0453561670c︡
︠57bfc8b7-948d-4d59-ad5a-71ac7e1d0841︠
T.is_invertible()
︡498f9574-c194-4e7a-a84f-3b1e78c95d19︡
︠e6365cbd-17fb-4cd2-a666-592679f43415︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡efc262e2-f09f-4b6d-adc3-42c6940883da︡
︠9ba5d17c-37dd-4683-a360-7a231c814152︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡bfd65b7c-8a46-48ae-abe5-b50e92a23f39︡
︠1e9f5ebc-a37f-49fa-a8a8-e6ef481fa5ed︠
S.is_invertible()
︡e0c7f16a-e0e5-4f84-a91f-2f61eb90a359︡
︠149dc9f2-4d22-432b-a8cc-7fce0b9ab4e0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡d047d00d-34b5-47e8-a265-ee5ac665019f︡
︠27f7ed8e-ab25-4193-a9ca-fa8454ababd4︠
comp = S*T
comp.is_identity()
︡afb9696e-81ab-46b5-aa51-44cc9213dbfb︡
︠09bb2259-1eab-4916-aebb-0f0cc9eddc9c︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡8953585b-169c-423d-a829-4284f5dd3aac︡
︠626c5b4b-6620-4343-a0d5-918267835bef︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Rank and Nullity</span>
</h6></section></div>
︡752d1896-30d6-400b-a418-aba2d1964f13︡
︠e8806a80-1c0e-431e-ae50-7fb2293cf8b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡b994a0e3-0001-4e32-ad28-d989ca2f6271︡
︠23bc76c6-9d6a-4f5d-a22f-a09395eb54dd︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡6002d88a-f286-4c7b-a99d-93d376952e90︡
︠c01c2e5a-94c1-4a98-a521-3c510c891a8b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡b4cd1eb6-95b6-465f-aeb2-0ef50f289431︡
︠0e6cb7b7-e5c9-4b3f-ab2b-e2ad8adb27f5︠
R.image()
︡904fc077-86c5-4088-a04a-b2d6060e1351︡
︠9e1eeee6-56c2-4cdb-a4df-f91df2300535︠
R.rank()
︡6d48b26a-9c16-4fd3-aa11-91abe9d29e7d︡
︠3ea866bd-04a1-4a9e-ad40-ee29a0382d69︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡a9851fcc-cc17-4eb1-ad95-e8401e05732d︡
︠dd75294f-61b7-48a3-a98c-f6546737cabe︠
R.kernel()
︡78bede71-dd39-45b4-a85c-553a992c1e6c︡
︠de49d274-4527-4e73-a3f8-f4d2f7c14e0a︠
R.nullity()
︡ad9f661e-b63d-4d25-a055-95a679e4b22b︡
︠dc96c0de-e842-4515-ab2b-0b0a1740bf2d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡bfa45742-53b9-461b-abcd-6c877aebaabc︡
︠86b3b1a0-404f-4aa0-a56d-2dab4153d0e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡d7f9bba6-cf60-4f0b-a062-d807459a96a7︡
︠07f00abb-07b7-48a7-a4ad-6866fbc95500︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡d07c086b-473f-4ec9-a504-37caeb5a5af5︡
︠45872d30-df3e-4eab-afc9-ae2adf0c9d89︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7df051e8-2b76-4a50-a54d-feb19909697f︡

