︠e2106f6a-d53e-4d26-a646-151ca066fa5a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡44d6435a-d200-41d3-a848-f5e029180035︡
︠b7a8eeb4-9969-4a87-ad1b-601413e2ce20︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡4d8e56c1-a6a1-405a-a73b-39b5ec8cf5a1︡
︠5eedd44a-6f01-4006-ab89-6c2211fade08︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f57e3437-e97f-4b7f-a138-a94db6fb0d90︡
︠a1a3158e-ee39-4546-ae9f-0abbd40a96e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡5980c955-843b-4e9f-a579-48403143bea9︡
︠403d0f66-4eb7-4a91-a9e9-331735989463︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡eb31841e-b5d6-4d70-ae1e-8429c5e5d894︡
︠b8ff974a-6f03-46eb-a6cc-5508ecdd1b5b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section FS</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡f13f1d75-8d58-41b6-ac23-8889075e579b︡
︠39d78e4f-4dd9-46e5-ada8-0309c012e7a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Four Subsets">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Four Subsets</span>
</h2></section></div>
︡3d105af9-9376-4cd4-a2af-ab3b5fc61bec︡
︠31951ef0-8840-4f1d-a438-4e379866f81d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1"><code class="code-inline tex2jax_ignore">A</code> is an \(8\times 10\) matrix.</p></div>
︡44fe91d8-2616-4607-a45b-c99f038798fa︡
︠64f53960-2873-4fd4-a629-2e3be3f7a9fa︠
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
︡45f3b2c1-3faa-4298-a70b-1294e88ef27e︡
︠db4cffec-02bb-4de5-a655-178bc634426c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡0374074f-341e-40ec-a552-b6a316a4ae71︡
︠b853c5a1-4d56-4c65-a9ba-b616a2c4773e︠
N = A.extended_echelon_form(subdivide=True)
N
︡9e6e134b-499a-4f61-a5fc-fb311d3e1b54︡
︠ae31d441-09ba-44a0-a50f-2fb50c34a400︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡9aecbc10-d2a8-4de3-ad44-d638c45f904a︡
︠0e4fb0bc-09fb-41ca-a5ae-985d11261c75︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">And build two bigger pieces.</p></div>
︡673b6eb1-bcab-48c8-a222-1cb69c8c3a9a︡
︠f013b827-9e44-4ac1-a2e3-5ff069cf609f︠
B = C.stack(Z)
J = K.stack(L)
︡b9fcdb50-2fe6-4383-a4b2-8017081d77d1︡
︠78a6572a-74a6-4bdf-ae2a-0ba23ab483c5︠
B
︡43efa37c-ee18-45c6-a5b9-fc4ae75abdd8︡
︠32b11558-1473-4ccf-a32a-c171c68104ed︠
J
︡c20831d9-9fd0-42ad-a2df-da14cda5faae︡
︠8708f4ad-d3da-4405-a223-20e34a1ff1aa︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol id="ol-1" style="list-style-type: decimal;">
<li id="li-1">Is <code class="code-inline tex2jax_ignore">J</code> nonsingular?</li>
<li id="li-2">How are <code class="code-inline tex2jax_ignore">A</code>, <code class="code-inline tex2jax_ignore">B</code>, and <code class="code-inline tex2jax_ignore">J</code> related?  Observe that the matrix <code class="code-inline tex2jax_ignore">J</code> effectively reproduces the net effect of a sequence of row operations that converts <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>.</li>
</ol></article></div>
︡f310c046-e1ab-4cfb-a11e-44f283d93dad︡
︠7a08ac8e-360d-42cc-aeee-c32b5af3420f︠
︡0791f4d8-20f3-4e10-abfe-9b1b7767baab︡
︠9a23b279-aaa9-4e8a-ae39-cd5e9d6f419e︠
︡d39f741e-ec98-4571-a055-922f1bc8b1a4︡
︠07897fe8-ec57-45af-a6a5-b48e49a1252c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <code class="code-inline tex2jax_ignore">b</code>.  The row operations that convert <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <code class="code-inline tex2jax_ignore">B</code>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡a333ca2b-3178-49c3-a83e-df25d7f881db︡
︠d8e1bbce-6f0d-489a-ac2d-afcd5a453c70︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <code class="code-inline tex2jax_ignore">b</code> is in the null space of the matrix <code class="code-inline tex2jax_ignore">L</code>.  So consistent systems come from the vectors in the null space of <code class="code-inline tex2jax_ignore">L</code>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡75966512-3723-45ad-af6f-d1fae552a8f1︡
︠9762dd8e-fc62-4fbc-adb3-c95b43096b25︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-7">Illustrate the previous discussion with a random choice of the vector <code class="code-inline tex2jax_ignore">b</code> from the null space of <code class="code-inline tex2jax_ignore">L</code>.</p></article></div>
︡dbc4ea16-812e-432a-a0f6-4cf973d8d34f︡
︠91b55af7-0883-47c6-a2c6-8128aab839b7︠
NL = L.right_kernel(basis='pivot')
NL
︡9485aefa-503e-44aa-aac7-1584d3e9c227︡
︠9cc21600-1614-455e-af0b-71005d446079︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">We create an arbitrary element of the null space of <code class="code-inline tex2jax_ignore">L</code> with a linear combination.</p></div>
︡705436b4-7ca8-40fd-affe-a7fb759b9fb0︡
︠831e8453-9cf3-45f3-a3f3-1aa0526edfe9︠
NLbasis = NL.basis()
︡07d1556a-8f78-43d8-a707-b11527785583︡
︠f9acb021-bb12-4350-abd0-3825e5c6e1c6︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡5b008b1b-cc6e-4fa4-af61-09a2e88ae6ca︡
︠d26d2e84-9500-440a-a8f1-a0a429cb4b11︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9"><code class="code-inline tex2jax_ignore">b</code> will create a consistent system with <code class="code-inline tex2jax_ignore">A</code> as coefficient matrix.</p></div>
︡6f3cc6b5-a5ab-45eb-a07b-11bc5e619adb︡
︠b3ae065b-bf16-4b65-a67c-29de53cb5662︠
P = A.augment(b, subdivide=True)
P.rref()
︡116c0625-2e53-451a-aa71-6aa48075ccc2︡
︠ed44a5bd-bdb0-4001-aab9-c1465c7d239e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">The column space of <code class="code-inline tex2jax_ignore">A</code> is equal to the null space of <code class="code-inline tex2jax_ignore">L</code>.  This is part of Theorem FS.</p></div>
︡68cad6f8-3a5f-4b60-ad1b-6ddb427b0ae9︡
︠8415febe-7f9c-4f43-af14-a81735ab0a6f︠
CA = A.column_space()
CA
︡4e464350-2cfb-49ef-ace1-09a11e7c986f︡
︠7bec13f6-3232-4dc1-ad80-e899aa7260ad︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Since the vector <code class="code-inline tex2jax_ignore">b</code> leads to a consistent system, we know it is in the column space of <code class="code-inline tex2jax_ignore">A</code>.  But we can check with Sage.</p></div>
︡028fea2e-1604-48d0-aab8-aa133ceae4b9︡
︠2cbbca5f-8758-4ce6-ac81-53b77f4593a5︠
b in CA
︡cc187d2d-ca51-4310-aae8-b3c7b37f8123︡
︠6ef76759-523b-447c-a41a-dde959cc95db︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sage relies on <b class="terminology">echelonized bases</b> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡84a8c101-a64e-4186-aed7-9a573a107a55︡
︠6e907518-7ceb-4a04-a0f1-88cd0f82f0c5︠
NL.echelonized_basis()
︡62303b65-3e11-4ab2-aec1-05ac2bcbdcc9︡
︠12c53009-5376-4522-a80e-a144d7fa2c6f︠
CA == NL
︡6723d53d-f917-4f79-a10a-0ab5f9ce3eba︡
︠596d7a2b-2059-4f01-af14-8cdda939447e︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡5d7caf6c-a8df-42df-a3c1-85d628f514a8︡

