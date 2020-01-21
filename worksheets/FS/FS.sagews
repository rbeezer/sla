︠8a9ce31e-0dcd-4543-ab5c-612cd7c91e7d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0f79c6de-4dc1-4b16-aecb-b2cdfa5c37ab︡
︠4abc3721-67e2-4893-ae80-93361207f4e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f33af721-8897-4a11-ae0a-eae20f417366︡
︠d5910993-b2b4-4966-ab56-5404614b3bf9︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡2cfbd057-309f-4436-aaeb-1401863d1680︡
︠a6c02219-ead6-4ea1-a8de-c07c8242af85︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡62c32e63-75e4-4cdf-ae5c-c2d4e6639021︡
︠6932d603-a889-4d46-ac2c-9ee73dd906a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡70cb3a23-dcc6-469a-ad5d-9ec85f5386a3︡
︠9246d70f-bdc7-4330-ae06-ba482a78e0e8︠
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
<div class="date">Spring 2020</div>
</div>
︡37a8d8fd-8bb4-42f8-a3e9-9a3d2689e6ac︡
︠fd496215-091b-4e3b-a769-0f33d596f8d9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Four Subsets</span>
</h6></section></div>
︡5c795db7-3b14-47f8-a26e-c7efac5424cf︡
︠d1b5b126-8629-4aa9-a2c0-197082cd6e23︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1"><code class="code-inline tex2jax_ignore">A</code> is an \(8\times 10\) matrix.</p></div>
︡e05950a8-73ea-4d94-a7c1-7eafe31a1893︡
︠c741092b-2af0-44ca-a936-ab45a28cda46︠
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
︡e1d22ec5-9ef9-4e35-a9c9-f754c065c4f1︡
︠ad27055c-bfba-48ae-ae3b-822d6fed5b14︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡cc2f3359-009b-4b15-a9f8-47a75173fce1︡
︠1bd4b171-b714-42c5-a865-0bdb22ca6c65︠
N = A.extended_echelon_form(subdivide=True)
N
︡d71bccc4-d7bf-4bec-a173-67e3216fbdc1︡
︠29934601-ae86-4e45-ab5c-eb3cf6d56922︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡a4c480b9-257a-4b6f-a014-dff0cf794d36︡
︠febb24cd-de35-49eb-a8fc-ccccd8b42025︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">And build two bigger pieces.</p></div>
︡7233e57a-3597-4a35-a6b5-382f5f714916︡
︠e981c773-1a8b-423e-a8aa-dd20c8f394cb︠
B = C.stack(Z)
J = K.stack(L)
︡ba44b0b3-4ded-4801-a68b-158354b575a4︡
︠15f69b74-eb1c-499c-aa05-51ae50316a70︠
B
︡f85eeea5-3814-44ae-a15e-6b01962c797e︡
︠a77f56ef-c18d-46d8-a4fe-3593739af137︠
J
︡0de7d4dc-49ec-474a-a089-ecf8f6b91ab4︡
︠2b202050-c9aa-461f-a128-a0498404e2f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol class="decimal">
<li id="li-1">Is <code class="code-inline tex2jax_ignore">J</code> nonsingular?</li>
<li id="li-2">How are <code class="code-inline tex2jax_ignore">A</code>, <code class="code-inline tex2jax_ignore">B</code>, and <code class="code-inline tex2jax_ignore">J</code> related?  Observe that the matrix <code class="code-inline tex2jax_ignore">J</code> effectively reproduces the net effect of a sequence of row operations that converts <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>.</li>
</ol></article></div>
︡61492798-7621-4183-a0a5-946def2f3012︡
︠984e165b-fc11-4e39-a134-7c8da7dc61c8︠
︡461843f9-ee60-4f43-a957-dd46afd8b498︡
︠ddee6316-c042-4047-a4ed-cba025f0db47︠
︡42530b61-2217-452b-ad79-a354479377fc︡
︠e3e36ffd-1203-4955-a42c-ec0414ca8417︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <code class="code-inline tex2jax_ignore">b</code>.  The row operations that convert <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <code class="code-inline tex2jax_ignore">B</code>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡10bf42f4-f06f-43f5-a948-635676a41282︡
︠a9369798-b881-48c1-ae55-6b9c212c53fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <code class="code-inline tex2jax_ignore">b</code> is in the null space of the matrix <code class="code-inline tex2jax_ignore">L</code>.  So consistent systems come from the vectors in the null space of <code class="code-inline tex2jax_ignore">L</code>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡6a790019-9d22-4fbe-a094-6000c21ef62e︡
︠488b29c4-2515-4710-a619-a89a85c94cf6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-7">Illustrate the previous discussion with a random choice of the vector <code class="code-inline tex2jax_ignore">b</code> from the null space of <code class="code-inline tex2jax_ignore">L</code>.</p></article></div>
︡a4f3f2cc-7f18-449a-a40b-ea485cd262e6︡
︠89a8cab8-6287-4bc1-a511-1fc571254882︠
NL = L.right_kernel(basis='pivot')
NL
︡f1b99845-1a79-4236-a387-5a72ff4258bd︡
︠bae748f8-d024-4a57-a080-7eaf0ae4d3c8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">We create an arbitrary element of the null space of <code class="code-inline tex2jax_ignore">L</code> with a linear combination.</p></div>
︡183ff87e-04f3-4998-a191-210d107f5532︡
︠e4a14a9b-8a08-4e91-a7bb-9dd9aea2e072︠
NLbasis = NL.basis()
︡257d7b71-70c8-48a2-aa2d-6ba3552f70ff︡
︠325afd66-ed6a-45f5-a897-5f3028557d67︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡d9933909-ff76-4ad5-af5e-7aeab1216aec︡
︠1c5bf840-24f9-4aa6-a0ab-f16dc1ef2491︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9"><code class="code-inline tex2jax_ignore">b</code> will create a consistent system with <code class="code-inline tex2jax_ignore">A</code> as coefficient matrix.</p></div>
︡1be66efa-e1ee-4b98-a292-d84460640899︡
︠aa481b60-6525-43ee-ac08-fe042758b515︠
P = A.augment(b, subdivide=True)
P.rref()
︡ebf341fa-25f4-4a32-a903-1f124499d5ef︡
︠adba1fb0-ad6a-421d-a5ae-8bdae2f7bcda︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">The column space of <code class="code-inline tex2jax_ignore">A</code> is equal to the null space of <code class="code-inline tex2jax_ignore">L</code>.  This is part of Theorem FS.</p></div>
︡b786296e-a0c1-4af2-a84d-6d948767f13c︡
︠cf4467ec-59d2-4a71-adf6-a534abb03a27︠
CA = A.column_space()
CA
︡7e7b3d31-a8b7-4b6f-ac3e-2e462e2ef591︡
︠c0f3c31f-4b80-4336-a20a-02958b4aa303︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Since the vector <code class="code-inline tex2jax_ignore">b</code> leads to a consistent system, we know it is in the column space of <code class="code-inline tex2jax_ignore">A</code>.  But we can check with Sage.</p></div>
︡5c440171-1cca-4cfd-a21e-d206892d4c04︡
︠0504a062-27fe-41ce-aff0-dc3e2c749c0a︠
b in CA
︡01006b1c-d34d-4269-a168-2445361bbb7c︡
︠57d5830a-0ee5-4b1b-a522-d461a98c437c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sage relies on <dfn class="terminology">echelonized bases</dfn> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡fc3d2b13-5124-47e5-a237-50cb265b2afa︡
︠6e7aca5d-dbf0-4f6e-a591-ce29a5f002af︠
NL.echelonized_basis()
︡d1e4bbe1-8cd8-4cde-aa27-ce6f804815bb︡
︠48d3d8eb-a787-4f44-adf6-5c5cbddf5e41︠
CA == NL
︡a997d60b-2b2a-421e-a7fe-d5a3151f57da︡
︠8841f180-cabf-44d1-a351-127b691787e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡17e58d71-e4b9-43f7-a52c-74fe0671df8c︡
︠5a430d17-e0b9-49f8-a14b-ebfe9041120a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡f643a40c-cec7-4766-a08a-c66c50c91db2︡
︠facf6afb-12cb-411e-a8cd-4d14faa37b90︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c9b98148-d6aa-41cb-af47-c85ed4977131︡

