︠829da855-644a-4664-a5ec-dceb93cf15d7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡569e3478-adde-4845-ac94-970729ae9c47︡
︠39dd802f-8cd6-4b6a-a023-5bb53eeed8a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡febcb3de-36a1-4c57-a66a-ab66194f8182︡
︠370e4c11-a475-463b-ada1-75ddbe7fef16︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡24e322f3-4a8b-4fff-aaca-c4f91b89a69c︡
︠e321c1e7-b22a-4838-aefd-9337325ae934︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡01832450-c03e-4ab2-a3a2-0453b95034a6︡
︠8a71e963-a33d-42e9-a413-717d526b39fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡0887961f-ac2d-4a4b-a39d-60fee414f4ee︡
︠2e6b5027-fc32-4ae7-a610-38126f7846d2︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SS</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡501bc7ce-ecb2-4e50-a5b1-6fa821899c07︡
︠f570137d-269d-4883-a9ef-b5e5d166b03b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Spaces</span>
</h2></section></div>
︡721f322b-f519-42a1-a630-5e54425a81bb︡
︠c3ed2105-d0ae-49d9-ab3c-b9b0df33ac45︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\text{.}\)  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡7186fb8f-050a-44a8-ad5b-a1562255601b︡
︠59defc98-cadd-4527-ad0d-9aef01267868︠
V = QQ^4
V
︡4c21b2e4-abf8-484a-af2a-dc5bb6ddc463︡
︠daffca2a-fd6f-45e4-a0e6-ab307f64c393︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-2">We can test membership using the word/command <code class="code-inline tex2jax_ignore">in</code>. Try vectors with different numers of slots, and perhaps include the complex number <code class="code-inline tex2jax_ignore">2 + 3*I</code> as an entry.</p></article></div>
︡76d76a28-415b-41ba-a5b8-c64f6cfd1b1a︡
︠e80cf661-eb34-474f-a1aa-a61e67a55b16︠
︡50f6dec4-0b04-4079-af83-a2ab113c6878︡
︠fd9e46d0-aeca-42c2-abca-f6d92eb5a2e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h2></section></div>
︡ad03c4a9-5471-4fae-a16a-c509f28a83c6︡
︠5745a0a5-af92-419d-afb3-989a18da35d0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡c2708212-7c21-4f3a-ac36-fde87014a4a8︡
︠46ac73e9-6558-475c-a21f-80c6946b9104︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <code class="code-inline tex2jax_ignore">.right_kernel()</code> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <code class="code-inline tex2jax_ignore">basis='pivot'</code> option.</p></div>
︡95a4127f-ce51-47d7-a3f8-3790d354ee6e︡
︠2f3d440b-4caa-4e17-a546-d8e68c9d08c7︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡6e6acafc-6481-4e62-a6b7-d9fbf8796822︡
︠f8163d12-a862-4959-abc4-29d25dad7059︠
A.right_kernel(basis='pivot')
︡3524c62e-8c6f-4ef5-a7b2-ceca018befb4︡
︠9fac3726-5b2b-4b1b-a087-355ff5170f7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\text{,}\) \(x_5\text{,}\) \(x_6\)).  This is a spanning set for the null space of the matrix \(A\text{.}\)  See Theorem VFSLS and Theorem SSNS.</p></div>
︡41bfdf6f-5cb8-4869-a372-aa70976af7a6︡
︠4f70f5f6-452f-4da5-a6ed-89709170c676︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡db64b59b-be0e-4ee9-a457-1d19eba5b6c2︡
︠d9e3e998-4575-4353-aca8-4b66441fad57︠
A.solve_right(b)
︡030e7f70-7c6f-41a4-a57f-dba42f93f305︡
︠b08bffb6-0336-4240-a7a7-6731b5149089︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡53adfada-1de4-4309-a483-bebef741bd14︡
︠778247c1-2df1-4121-ab79-e28918069c3b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Spanning Sets</span>
</h2></section></div>
︡1a29c619-8467-458a-a731-1249b61ccb9f︡
︠6aa846f6-08a6-400e-ab72-d8422f84c4f5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡460ef55f-b576-4c86-ab3d-d161381bcd0b︡
︠35244199-05f8-4bc0-a174-f45569d75a55︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡59b7ef97-99d9-4185-a2ac-690cf75dea73︡
︠0cdb4bbe-3470-4d99-a2b4-f2d0ed74a5f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <code class="code-inline tex2jax_ignore">*</code> operator for vector scalar multiplication.</p></article></div>
︡9fe6b326-15b8-4682-afbd-3a01aee13972︡
︠a0287db9-4def-4648-a843-68e6a849a821︠
︡ac1c59a1-2fe1-4f46-a7da-b3399d2e6c68︡
︠d05fda87-ca7a-4c6f-a2ec-d90039e5742e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\text{.}\)</p></div>
︡dff2fcd7-4a2b-45f1-a41f-1f910cbe2334︡
︠104133d1-b1be-4d0d-af5f-e7e89f44d781︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡ca20b648-70a3-4f84-ac7a-c51beba308a8︡
︠963c7e2c-7ac2-4eba-a381-d57f05ab8b32︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <em class="emphasis">not</em> in the span?  Stay tuned.</p></div>
︡4d97915c-dd7a-4f56-a98f-a64154700fb3︡
︠2f0c6adc-7b9e-4584-ab2c-bd2ff8468463︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡78385932-6bdf-4938-aefb-aa8d975ede24︡
︠2ac531f7-4522-45c6-aea5-95f22998777a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡b948e8ae-ff32-419e-a888-d2dd406e9e60︡
︠db0be2ee-629f-4e9e-ae3b-80f8a132ae94︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a60a1fdf-d427-4400-a2e4-e74dffe3191b︡

