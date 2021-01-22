︠f38af31e-bd63-4dd0-a422-f0e88baa4413︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡607fb62c-4dab-4188-a1cb-4cb244dee12f︡
︠590c8b3b-8882-43ab-acb8-7f42186f6509︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡45352b05-68df-4b19-a6d5-e44376be5236︡
︠c8cfdeae-3161-4122-ab9f-0844bbb6a19d︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7563441f-2519-462b-a9d4-8dcc278ee2f7︡
︠afa6dbc8-49c7-4bf2-abec-e90d5b208e1b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="FS"></section></div>
︡0caa286f-0a8d-414c-a3fb-0e41c9cfa4dc︡
︠fd8a8b2e-a383-40a7-acd7-8e5cf26b110f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡d0d6b51d-4b0c-4e17-a6e5-d632334af6bf︡
︠5902fb80-9cca-49bb-a019-5e0913c6dbc9︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section FS</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡b22b517d-209e-4a29-a52b-f8af1b3d219f︡
︠a41c06e7-308d-4e2f-a882-48ae7b9a9cb3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Four Subsets</span>
</h6></section></div>
︡b67d3741-f727-4519-a4a2-6ea1c2d6d729︡
︠aef1b29f-4876-40c8-aa12-c8079c9636e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1"><code class="code-inline tex2jax_ignore">A</code> is an \(8\times 10\) matrix.</p></div>
︡f84f9f13-f6c7-4cc4-a565-73d7a743e7ac︡
︠c9408e0a-100e-47da-ab21-0a4e1f6534cd︠
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
︡0975a03b-b5bb-4429-aedc-0e65d843d87a︡
︠583dded1-9874-44b6-aea4-bb31009537da︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">We get the extended echelon form, along with the natural subdivisions into four submatrices.  We unpack the four submatrices, and stack them in pairs to also get the left and right portions.</p></div>
︡1335003e-2c7a-41b6-a8a1-c5c06d003381︡
︠e951e522-45eb-4ff7-a681-74644d15e586︠
N = A.extended_echelon_form(subdivide=True)
N
︡670b9f1b-1510-4110-a878-afd132e57da0︡
︠4174d03e-c54e-466f-a6e6-f95da9f9e669︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡7aaef7f3-6c9a-4af1-a960-06963402de94︡
︠80f2feaf-20bb-4b6b-acf1-d0767ba7d867︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">And build two bigger pieces.</p></div>
︡ce7b17ab-6dc1-4887-a457-528d908376be︡
︠d8c54edf-a3c6-455f-ac94-4f6ddfd635cf︠
B = C.stack(Z)
J = K.stack(L)
︡3a700ced-b818-4f6d-ae36-276953929d76︡
︠ca14a109-fc20-4416-a2f9-921fc6259c20︠
B
︡2fb33654-f512-4663-ad83-715811f3790a︡
︠92956dbc-2b14-4d8a-a153-4c4a46b493d9︠
J
︡d7c7d358-f841-4c29-a73e-a7af1f5d4e12︡
︠8fa5778c-0854-4917-a38b-123c15c62054︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Verify some of the properties of these matrices, as given in Theorem PEEF.</p>
<ol class="decimal">
<li id="li-1">Is <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">J</code> nonsingular?</li>
<li id="li-2">How are <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">A</code>, <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">B</code>, and <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">J</code> related?  Observe that the matrix <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">J</code> effectively reproduces the net effect of a sequence of row operations that converts <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">A</code> to <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">B</code>.</li>
</ol></article></div>
︡2e3d4b4d-745c-49fe-a127-c49f1b4d27e8︡
︠b16feba2-827e-4f0d-ad10-4e5ed6a14c82︠
︡443b327e-4f0b-4dfc-abde-b2c00a7bbb74︡
︠ec928d4f-b8fc-44cc-a189-03cd4d7b837f︠
︡85c175ec-4a53-46a0-a3b8-dcc99061ce43︡
︠ec9be10c-d572-49ec-a918-2e5f7e0d0cc4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Imagine the equation in the last part of the exercise, but instead replace \(A\) by an augmented matrix of a linear system with a vector of constants <code class="code-inline tex2jax_ignore">b</code>.  The row operations that convert <code class="code-inline tex2jax_ignore">A</code> to <code class="code-inline tex2jax_ignore">B</code>, will also act on the vector of constants.  Will the result be a pivot column (an inconsistent system) or a vector with zeros in all of the same rows as the zero rows of <code class="code-inline tex2jax_ignore">B</code>?  Equivalent question:  is the vector of constants outside the column space, or within the column space?</p></div>
︡0b196fb6-c8b3-4b41-a8e2-0115084064d3︡
︠9dea74a2-b6b6-496b-abea-efbf5c89deeb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">The answer to the first question is that the zeros will occur in the proper entries to avoid a pivot column exactly if <code class="code-inline tex2jax_ignore">b</code> is in the null space of the matrix <code class="code-inline tex2jax_ignore">L</code>.  So consistent systems come from the vectors in the null space of <code class="code-inline tex2jax_ignore">L</code>, and by Theorem CSCS, we know this set of vectors is also the column space.</p></div>
︡2780205c-302e-47c4-a283-d628675e13df︡
︠ef77f974-6a59-49c5-adfe-0c425baa9bd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Illustrate the previous discussion with a random choice of the vector <code class="code-inline tex2jax_ignore">b</code> from the null space of <code class="code-inline tex2jax_ignore">L</code>.</p></article></div>
︡ac6236bb-a160-4afc-a0db-ed730cea7865︡
︠f11535bf-0617-46c6-a2d3-ec15f22eda73︠
NL = L.right_kernel(basis='pivot')
NL
︡0642b877-88d9-4f45-a663-a5fbbfddea85︡
︠e8b2a6b2-d3bb-4daf-a316-6bb5765443fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">We create an arbitrary element of the null space of <code class="code-inline tex2jax_ignore">L</code> with a linear combination.</p></div>
︡8d53009b-37fe-43c9-a2fa-9654bca01f30︡
︠cbe2fe39-a609-4446-ae66-8fce47bf8dec︠
NLbasis = NL.basis()
︡da8cd7a0-0571-4eb5-a5ac-b2c710fcf89d︡
︠578d365e-663d-4729-ad73-9265a76a352d︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡374b571a-5808-468b-af52-2f585ffb930c︡
︠044409c2-42a5-4b0d-a6f3-823eb8db37f4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9"><code class="code-inline tex2jax_ignore">b</code> will create a consistent system with <code class="code-inline tex2jax_ignore">A</code> as coefficient matrix.</p></div>
︡4f884821-a635-4bf5-a955-de80c49a0c1f︡
︠16fae320-4d78-4237-a8dd-eab6b7b41b13︠
P = A.augment(b, subdivide=True)
P.rref()
︡a29ac8df-82d0-4bf3-a380-06bbd628a44b︡
︠7fe19a97-a2a7-4257-a68f-78624396c3b1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">The column space of <code class="code-inline tex2jax_ignore">A</code> is equal to the null space of <code class="code-inline tex2jax_ignore">L</code>.  This is part of Theorem FS.</p></div>
︡f30d5a8e-121c-4a41-a1aa-123757aee72a︡
︠81d8f227-14a2-4047-a261-d740e9897719︠
CA = A.column_space()
CA
︡19bf2a15-13ac-46a1-adc8-faf3aec384a9︡
︠dc28b52d-a404-417f-a34c-b36a6193417f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Since the vector <code class="code-inline tex2jax_ignore">b</code> leads to a consistent system, we know it is in the column space of <code class="code-inline tex2jax_ignore">A</code>.  But we can check with Sage.</p></div>
︡a4bdd73f-4e45-436c-a290-f445fa78ec95︡
︠b49727e5-734b-4971-a59a-69eaed566320︠
b in CA
︡8e526794-d081-4c18-ae72-9db78a5d1c13︡
︠c921c896-d766-4837-a11e-4ac024a81c42︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">Sage relies on <dfn class="terminology">echelonized bases</dfn> to represent infinite sets of vectors and to be able to test vector space equality (which seems pretty amazing at first!).</p></div>
︡f1c239ad-f846-4ed9-a6eb-4350385e16a5︡
︠9976caf7-7efc-44e9-ae48-98bf9e7ec856︠
NL.echelonized_basis()
︡ef066c15-4943-4591-ae76-70e208077d0c︡
︠4fc46217-750c-4965-ab5c-1cd0ed8f5fc6︠
CA == NL
︡c0685ca7-42d5-4f6b-a421-13df4cccb2c8︡
︠889f1fbc-60e3-45ea-a12c-230f34bf172d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡fb69a886-4f63-42c1-add3-af7afafba03c︡
︠d284c2c4-9030-446c-a549-9e9189c75688︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡36bba7e7-c78f-47c6-a42a-eb98c218a7f2︡
︠07c7b1bd-1d22-4795-a323-8a1474c02b22︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3390a416-1244-45bd-aaef-e6afb2382545︡

