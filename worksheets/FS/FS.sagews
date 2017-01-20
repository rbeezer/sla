︠ef1d30e1-4371-4936-ae35-adf5a582dcc4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡4b358667-8baf-4c42-a335-8d373edb0b8c︡
︠fc8321a9-8242-4206-a54a-bc7f4ad25ded︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡aea21d3c-6cfa-4e1b-a560-f2c7111e36c1︡
︠47ffa1cd-d3ad-4e8e-aae5-ae8759868bd4︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d2bc25ef-3c2d-4916-a8b5-d645d9f5071e︡
︠88e25256-e0a7-49ef-a7b1-652e89a22fa2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡22a0402a-61a1-483f-a8ab-a10cf95ac896︡
︠ab95ce5f-8c03-4e97-ae12-9b3a733dd067︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡61306fec-e79f-4b78-a259-4f589dcdbad1︡
︠14245934-62bf-4167-aa9c-3dc9666231c1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CRS</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡3d662c06-068b-46a2-ad4c-a8a610c820ae︡
︠2dc94f54-55be-4118-a4fd-095a07acfdd9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Four Subsets"><h1 class="heading hide-type" alt="Section 1 Four Subsets">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Four Subsets</span>
</h1></header></section></div>
︡cf799c8e-1e4c-4c5e-a5ad-2b6856003fe0︡
︠9a013adc-8ead-4b72-a9cd-6f8c7e38f67d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1"><tt class="code-inline tex2jax_ignore">A</tt> is an \(8\times 10\) matrix.</p></div>
︡71883c20-8bf3-48ba-ab46-8a517dfb5e2d︡
︠b9f322f4-38f2-4b7d-a522-cbd2c50c06a2︠
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
︡36c3ae5a-2832-4bea-a94d-b08825e21e8c︡
︠0c3dfeb5-9edc-409b-aa2f-8ef07255474d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡44a7296d-ffbd-4bc6-a679-6f750f864dd8︡
︠a2d59fff-def9-4ba6-a11d-a7d2dd163631︠
N = A.extended_echelon_form(subdivide=True)
N
︡fe3d3dd2-da1c-44c7-aae9-7915cf2e5648︡
︠847c1b9e-e69f-43dc-aa7b-3f444137f9d4︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡16892a4b-9223-4250-ae08-938e8dfc4f52︡
︠378b0a65-5f88-43ad-a49d-c3152a21661b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">And build two bigger pieces.</p></div>
︡843003a6-9061-489b-a6d5-4a95fbf1d68e︡
︠2125128c-92d0-4359-afb7-402d529546cc︠
B = C.stack(Z)
J = K.stack(L)
︡4ed73f9c-b3e8-432e-ad1a-56a7409d6d32︡
︠9807f469-12cf-4bf1-aad3-429f9ef2c60f︠
B
︡8a8917d8-1fbd-4e6d-a00a-45cd45c488a9︡
︠8230c58a-d998-477f-a48f-fc4ba916daf7︠
J
︡379686b1-09b9-4121-a079-065520e37bd6︡
︠30dd6632-73b2-4cd5-adec-7e3d35d284e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol id="ol-1" style="list-style-type: decimal;">
<li id="li-1">Is <tt class="code-inline tex2jax_ignore">J</tt> nonsingular?</li>
<li id="li-2">How are <tt class="code-inline tex2jax_ignore">A</tt>, <tt class="code-inline tex2jax_ignore">B</tt>, and <tt class="code-inline tex2jax_ignore">J</tt> related?  Observe that the matrix <tt class="code-inline tex2jax_ignore">J</tt> effectively reproduces the net effect of a sequence of row operations that converts <tt class="code-inline tex2jax_ignore">A</tt> to <tt class="code-inline tex2jax_ignore">B</tt>.</li>
</ol></article></div>
︡a168ede1-f55b-4818-adf6-a64d3821ba59︡
︠10b78956-b4c0-4052-a822-ec93accce873︠
︡283d0c75-239f-44a5-a627-91425ff1bda3︡
︠1cb49b01-034a-4384-a8f7-0985bd4aff89︠
︡296ee09f-1a26-456f-a9ef-0e894378e687︡
︠0b069e73-d8d0-4f26-aec5-dd45689d0849︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <tt class="code-inline tex2jax_ignore">b</tt>.  The row operations that convert <tt class="code-inline tex2jax_ignore">A</tt> to <tt class="code-inline tex2jax_ignore">B</tt>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <tt class="code-inline tex2jax_ignore">B</tt>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡f44fbde2-0cbe-4da1-a39d-96adc156f6e3︡
︠0e84e42c-7392-416d-a3a6-03db0ad60cde︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <tt class="code-inline tex2jax_ignore">b</tt> is in the null space of the matrix <tt class="code-inline tex2jax_ignore">L</tt>.  So consistent systems come from the vectors in the null space of <tt class="code-inline tex2jax_ignore">L</tt>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡0dd81bd3-7461-4687-a4b1-ac588525b229︡
︠126eb798-b1c2-423b-aa76-c231ab6c12f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-7">Illustrate the previous discussion with a random choice of the vector <tt class="code-inline tex2jax_ignore">b</tt> from the null space of <tt class="code-inline tex2jax_ignore">L</tt>.</p></article></div>
︡b062f2a9-a5a7-48da-a372-934d4e9bbaea︡
︠eab5cb76-42bf-493c-a464-608aed978426︠
NL = L.right_kernel(basis='pivot')
NL
︡f01a6d5d-3a0f-4993-a5ea-a4a2f9f808d2︡
︠fd3089de-7087-4011-a37f-d1484313c1ba︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">We create an arbitrary element of the null space of <tt class="code-inline tex2jax_ignore">L</tt> with a linear combination.</p></div>
︡4a78bf18-d996-4198-a3cf-291725b39854︡
︠39fa1aa3-38dc-4fe5-a712-64c8ced72607︠
NLbasis = NL.basis()
︡b31be369-7924-4513-ab85-efab7695ebcf︡
︠3824317a-ae3d-439e-a657-b365fec84b41︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡a89dcde4-792b-4654-a4ca-c7e3dd1a665b︡
︠7030dfeb-3546-40bc-a508-fc0dfea1807e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9"><tt class="code-inline tex2jax_ignore">b</tt> will create a consistent system with <tt class="code-inline tex2jax_ignore">A</tt> as coefficient matrix.</p></div>
︡bfeffbee-723c-4947-a597-e93f63d1452c︡
︠4eb2dbec-95fc-4181-a9eb-1c45cb89dcff︠
P = A.augment(b, subdivide=True)
P.rref()
︡93e46bf4-88a7-45cf-a65d-16a6c6240f1f︡
︠fa3de99e-e168-48c4-a729-5400bc7d17c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">The column space of <tt class="code-inline tex2jax_ignore">A</tt> is equal to the null space of <tt class="code-inline tex2jax_ignore">L</tt>.  This is part of Theorem FS.</p></div>
︡7cda9c42-a231-4abd-ae30-88599060e78b︡
︠9f77a03e-3e16-4fc2-ada5-d3e3c83282a0︠
CA = A.column_space()
CA
︡d404ba5f-98da-4ec6-a1a1-6755a1de460e︡
︠7e372e17-dbfa-45e7-acf1-d693c4493904︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Since the vector <tt class="code-inline tex2jax_ignore">b</tt> leads to a consistent system, we know it is in the column space of <tt class="code-inline tex2jax_ignore">A</tt>.  But we can check with Sage.</p></div>
︡872be5a0-c7bc-421b-aadb-cb15eda37dd7︡
︠25e41d9b-d638-436a-ae07-9c3b219c51a2︠
b in CA
︡8c87195a-5218-4b4f-a53f-ddc09f22c746︡
︠9d3154ba-f0c0-4985-a8d9-8b65b04d3047︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sage relies on <em class="terminology">echelonized bases</em> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡7e4af9ea-3eb0-4e48-a4d6-d514bd4fa70f︡
︠e7d32dc1-70f3-40e7-a924-ffa135f759f6︠
NL.echelonized_basis()
︡9dd6103d-2bd1-4eef-a672-b71584b7c01b︡
︠6a941a55-8705-49f3-a95a-b02c6a122d34︠
CA == NL
︡99f3e0e4-56c6-4b55-afeb-a9bc62784a67︡
︠be07b3d9-2165-4ff6-a671-b57fa599aa1b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8d9955c2-fe45-4434-aa9c-c5145b9f5397︡

