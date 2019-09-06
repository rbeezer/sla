︠14411662-fdf4-4e0a-a83d-7a6bf2b00782︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡d971b971-c6fb-4adc-a55f-3ca989c3adb2︡
︠f8c6a7f2-9b88-4736-a49b-4c8f60924400︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6f9363a6-542e-4da2-a3eb-f3882f9c2d02︡
︠d626a8a5-f091-4e7c-a1ab-cae5214bd69d︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡974bdf48-438d-4574-a18f-c5abaddf9b62︡
︠4c28d0ed-541b-4b47-a2ba-2e18ced494f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡93fbccca-a1fc-4ca0-a4dc-e0bf87e6c7ab︡
︠a4e90a6c-51d5-4da0-aeee-ade5c7dbe929︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡4cd36ded-a4e7-49b2-aa91-84e7abf76d18︡
︠65539b17-9bb7-4353-a6fd-78250c1047d6︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section FS</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡04b58519-ca58-429e-a6fe-4676c73d7855︡
︠e59aa1fc-bc70-45a9-a309-15f8bc0f987f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Four Subsets</span>
</h6></section></div>
︡d6470f90-b4c3-441d-ae5e-7637ef3fed76︡
︠c5c1dc06-cca9-40fb-add0-c56fc5ff4ddc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1"><code class="code-inline tex2jax_ignore">A</code> is an \(8\times 10\) matrix.</p></div>
︡4a20bfdb-598f-438e-ae6c-e2142da1dffa︡
︠b34d3fc1-b1b3-41ec-afc2-bb4d07aa8798︠
A = matrix(QQ,
[[194, -41,  -899, -396,  49, 112,  874, -355, 1139, -1221],
 [269, -57, -1247, -549,  68, 155, 1212, -492, 1579, -1693],
 [16,   -3,   -73,  -33,   4,  10,   72,  -30,   95,  -101],
 [115, -24,  -532, -235,  29,  67,  518, -211,  676,  -724],
 [ 10,   1,   -37,  -23,   2,  12,   44,  -24,   67,   -65],
 [-59,  13,   275,  120, -15, -33, -266,  107, -345,   371],
 [ 36,  -7,  -165,  -74,   9,  22,  162,  -67,  213,  -227],
 [-20,   4,    92,   41,  -5, -12,  -90,   37, -118,  126]])
A
︡25b62f6f-021b-4639-a226-5e19b116c9e5︡
︠10bd7ecd-dd0f-4962-a395-9e4b80d96935︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡f45a2c9f-a6cb-4661-a99a-e383e13caa5d︡
︠f525f428-4df1-4867-a9f0-4e4d23e5f804︠
N = A.extended_echelon_form(subdivide=True)
N
︡60a96ae8-3252-43d9-ab69-cb808a3602f0︡
︠7611f7bd-fef4-4132-abe9-4a4cac6e3602︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡77999804-5035-4549-a7f7-04250d27b5ec︡
︠8641fd9f-2ff5-454a-aeca-6de92f6472a5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">And build two bigger pieces.</p></div>
︡e2c24b0e-b2db-483f-a21c-c89b1ba7029a︡
︠88d4b1fb-faed-4561-a582-25ab0c7b38dd︠
B = C.stack(Z)
J = K.stack(L)
︡2660a119-c14a-4fa1-a00a-32fee0a6ceea︡
︠b1011a33-4f59-4a44-ab55-59857662c20b︠
B
︡dbcddd80-0c05-46ba-aa70-0d9820e83bb3︡
︠78f35c0e-d1ae-471a-a2c1-2ceb41c39ff5︠
J
︡26d293fa-1ccc-4b3d-a55a-78654a60e00d︡
︠53335d64-8815-44d8-a23e-da73fbd6cc6d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol class="decimal">
<li id="li-1">Is <code class="code-inline tex2jax_ignore">J</code> nonsingular?</li>
<li id="li-2">How are <code class="code-inline tex2jax_ignore">A</code>, <code class="code-inline tex2jax_ignore">B</code>, and <code class="code-inline tex2jax_ignore">J</code> related?  Observe that the matrix <code class="code-inline tex2jax_ignore">J</code> effectively reproduces the net effect of a sequence of row operations that converts <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>.</li>
</ol></article></div>
︡9c0df6b6-b3fd-484a-a16e-03877835ef15︡
︠ca2d8243-8f77-4d0b-a812-626ead7d25d4︠
︡b9fd77fb-a8b1-4081-ac03-e665503ce62b︡
︠ad59bc0b-7b43-4d4b-ae0b-2f28579847e6︠
︡28472043-bce0-4fb4-aaa5-6d585a0f2460︡
︠b89f0b04-fb0d-4bf9-a093-6f1b875867cc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <code class="code-inline tex2jax_ignore">b</code>.  The row operations that convert <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <code class="code-inline tex2jax_ignore">B</code>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡874175d7-9c39-4af8-a3f2-75281af625de︡
︠25677dc5-4527-4ec6-a706-97cb0d603861︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <code class="code-inline tex2jax_ignore">b</code> is in the null space of the matrix <code class="code-inline tex2jax_ignore">L</code>.  So consistent systems come from the vectors in the null space of <code class="code-inline tex2jax_ignore">L</code>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡686cfe9b-3e05-45f2-ac62-20afcac2afa1︡
︠0197e868-4964-4fc4-a29b-4bbfa897b466︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-7">Illustrate the previous discussion with a random choice of the vector <code class="code-inline tex2jax_ignore">b</code> from the null space of <code class="code-inline tex2jax_ignore">L</code>.</p></article></div>
︡577ff675-ebf5-40e1-a41a-f56b514e8f3f︡
︠596c9630-b1ca-46d9-a82a-310ad5b14408︠
NL = L.right_kernel(basis='pivot')
NL
︡362a3b06-cc78-46e6-af78-abaa5701945a︡
︠c90e43a5-a612-4f81-a588-d238d9fda910︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">We create an arbitrary element of the null space of <code class="code-inline tex2jax_ignore">L</code> with a linear combination.</p></div>
︡3ea4df88-42e6-45ee-a636-f19396c93735︡
︠8742b224-a778-4dc6-ab3a-22cb56120593︠
NLbasis = NL.basis()
︡b1bf4617-bbe2-44bf-ab72-59525a86c8c6︡
︠c7876de8-4a43-4d8e-ac36-f904c5f4ccd8︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡390b1690-fda3-407b-af3f-639685c7a847︡
︠1711338c-37ad-4bb4-a7a8-61b07463c0c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9"><code class="code-inline tex2jax_ignore">b</code> will create a consistent system with <code class="code-inline tex2jax_ignore">A</code> as coefficient matrix.</p></div>
︡8e8a0bd8-7001-4dbc-a227-a98690a04701︡
︠89f03fb0-8308-45e4-a216-ab032a3da84b︠
P = A.augment(b, subdivide=True)
P.rref()
︡9c49c788-70c8-4927-ad48-4f4426e638f7︡
︠384711fa-a6b6-4f49-a72e-f6d3a0996d25︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">The column space of <code class="code-inline tex2jax_ignore">A</code> is equal to the null space of <code class="code-inline tex2jax_ignore">L</code>.  This is part of Theorem FS.</p></div>
︡55e9d0ac-a535-4b3a-a5ac-3920dd176748︡
︠d9ec3ccd-962d-4ce0-a74b-375682399a1e︠
CA = A.column_space()
CA
︡3e72aaf7-88eb-46aa-a61e-2557beaf74a9︡
︠2e7a1250-9e87-4ae2-a454-28a8f57a5ee0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Since the vector <code class="code-inline tex2jax_ignore">b</code> leads to a consistent system, we know it is in the column space of <code class="code-inline tex2jax_ignore">A</code>.  But we can check with Sage.</p></div>
︡71efcf22-fc08-44a7-a7fd-b155a5b1f10e︡
︠18ff8cfa-ef6e-48b9-a028-dea3358f6807︠
b in CA
︡71f71831-2109-4094-aa97-275da92389c9︡
︠03b0ac8e-eb0f-4408-a9a2-1d96a40c7854︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sage relies on <dfn class="terminology">echelonized bases</dfn> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡267d62af-08a0-47f1-a08c-29ac04001896︡
︠cbd49463-37cd-484d-a945-67f0305306ba︠
NL.echelonized_basis()
︡d85acfe2-219f-4f23-acb7-22e2222753e1︡
︠db935524-8562-4454-a820-052f7519d7db︠
CA == NL
︡9a72ed80-1167-43bd-a830-835b2c046eb3︡
︠94e07cd0-df13-465f-a4d3-45690961ddf8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡09dfa4c8-4975-4deb-ac28-f7e61ff70d40︡
︠55925371-cba3-4182-ac54-55c3bd2b539a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡3e0d1509-6d41-4069-a23f-7844b01ec715︡
︠8f9db7df-f138-4f8f-a4a8-37dd28b074be︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡64e0297f-970d-4ff6-af30-77755ad0b546︡

