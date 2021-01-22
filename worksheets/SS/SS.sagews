︠c3559759-3462-4ede-a75d-9c6397d2f337︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e0a364ab-ddf3-40d1-ae56-bf322ca0e942︡
︠022b58f0-4dd3-41e1-a2c7-987caa84a7ef︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡9e1ba749-7875-4c83-aea0-638d03798206︡
︠19535faa-9230-4808-abe3-c575278a01c1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7eac10bc-a4fd-457d-ae3c-1f29540ef1fb︡
︠07df3e9c-6037-4422-af4b-39189fcacb84︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡c8c98f71-ce2f-4571-a876-3a05394f30ac︡
︠47400d08-ec61-4bc9-ad50-48b4dee2d228︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡e6f37007-8f4f-410b-aad0-b1966745927b︡
︠b62aa9ab-13b5-42c5-ae73-e2588c0d1909︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SS</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡5b085b20-6332-496f-af46-3298b25b0750︡
︠0ab131c5-1395-452b-a42f-b525ed7397ae︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Vector Spaces</span>
</h6></section></div>
︡7b93cc49-25cb-4a1d-a660-5157745e7f62︡
︠ded71a35-35bf-4161-afc7-f194908ff0e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\text{.}\)  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡3c4136b7-bfd7-4fed-a0d9-8cb1152a52b3︡
︠8e0df33a-bfa8-4797-a495-e11a33f6e499︠
V = QQ^4
V
︡8178f7c3-273c-40a5-a7ff-cd1e7427b0b4︡
︠a462d699-9b0d-4718-ac87-b54d3c263d7f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">We can test membership using the word/command <code class="code-inline tex2jax_ignore">in</code>. Try vectors with different numers of slots, and perhaps include the complex number <code class="code-inline tex2jax_ignore">2 + 3*I</code> as an entry.</p></article></div>
︡213930fc-a97b-46fc-aec5-58aa5e674a5b︡
︠97dd00e0-d895-4404-a0f1-559ffee6630b︠
︡ea2c73c5-3aec-4f2d-a42c-681f81e684a9︡
︠f9325a52-08ce-45c1-a314-f7c17535cba6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h6></section></div>
︡49f8b421-73a3-42f0-a322-82a441a77631︡
︠d8bc0713-8962-4d82-adc5-048a9cc343a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡480f5166-4f0b-42d4-a4a0-ab525ee1235d︡
︠a95b9ac0-10f1-4c1e-a069-10463a52c751︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">The <code class="code-inline tex2jax_ignore">.right_kernel()</code> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <code class="code-inline tex2jax_ignore">basis='pivot'</code> option.</p></div>
︡50bbb457-4784-4945-a74c-15d6b0002d87︡
︠ee7992ef-9261-47f6-ad7a-98f6fb60c8d5︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡0c375ca3-b462-46e1-acb9-6426b1121ebe︡
︠3ba6302d-4e1b-4079-a245-baae05f27103︠
A.right_kernel(basis='pivot')
︡03eba1bd-f0b0-4cc8-a5fc-bb7598a8a29b︡
︠59f45960-6512-46df-ae3e-be9232beb515︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\text{,}\) \(x_5\text{,}\) \(x_6\)).  This is a spanning set for the null space of the matrix \(A\text{.}\)  See Theorem VFSLS and Theorem SSNS.</p></div>
︡16f1b4a1-5166-44c4-a3b7-176ba9e589b9︡
︠ec0edb28-c7a3-4ee0-a21c-a330edac326e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡c5bc3876-14eb-48ca-a8fc-59f9ae74ba71︡
︠8373fac7-0dcf-494b-a3db-f25fbfd249db︠
A.solve_right(b)
︡a5e19ec5-5d31-4cd6-a813-3058018e4c71︡
︠72763050-6ada-4ca7-a228-669cf9d7724f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡3b1a25b7-5122-4bfd-a22f-b86445e2d641︡
︠58d72fce-71f9-44b8-a1eb-1937e8ddaa4f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Spanning Sets</span>
</h6></section></div>
︡ba781a8d-8ff8-4933-a252-d7c0eb8c836d︡
︠327ab944-6d36-45da-a9f0-bc77d6262b99︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Example ABS from FCLA.</p></div>
︡8cc0779b-b09f-46ec-a17c-1388b5eeb195︡
︠a22629ec-59ce-493d-a645-258be31d1deb︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡28e5f1fd-d47a-431d-a072-5a8e66273442︡
︠07becafc-8c0f-4641-a448-6a3f995b1906︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <code class="code-inline tex2jax_ignore">*</code> operator for vector scalar multiplication.</p></article></div>
︡c0d7ea1e-6aa7-491b-aa60-3db7c41102b0︡
︠9716ef10-d8b8-4f5a-ab00-c3d7b9ccbdf7︠
︡e8effdf1-ed99-469e-a05e-112f9e86b44a︡
︠c33b3282-470d-4167-a06c-f8d27700eb42︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">But not any old vector is in \(W\text{.}\)</p></div>
︡6059b8c4-b0cb-4ee2-a5e8-1e0f087085cc︡
︠82dec979-e2ab-4e89-a1e8-a06b06377bd3︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡866542fb-bee6-4ade-a3ed-c8d23d965023︡
︠4a9a0dcf-98e7-4e85-adc4-a8c8b0547b59︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <em class="emphasis">not</em> in the span?  Stay tuned.</p></div>
︡e9373350-3e92-468a-ab57-f0fc8acef4a4︡
︠d8d00145-183a-4a92-a548-c48c017d061a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡ae28f294-7acb-4574-a7c9-09d85dacaa2b︡
︠4da769af-d2aa-4d01-a17d-b7680c5a805b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡ba951ffc-fde9-47c9-a8e1-699d1a97517a︡
︠26ad3bdf-8847-469f-a383-092328736755︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡28cc6084-f1c4-482e-a866-b7fea2626c9b︡

