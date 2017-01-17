︠c9363937-076c-41ed-a3f7-ef9b0c539f41︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡51b97e2b-632d-4f4b-ac7b-46ae1ba6f454︡
︠6b514d07-87ab-45af-a077-bbe69f24629c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡608b1d82-41af-4cfa-ac01-3cd13616b884︡
︠4e4da6a2-9f44-4f14-a9d4-b11834f4aad2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f214fba9-e492-4983-ad11-2c235684a2e8︡
︠184e5f3b-65ea-46ac-a49e-037eaa18d550︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡669b5fb9-b1e9-4c43-a99d-7a1e8c9a4609︡
︠7601160c-fcee-45b3-a94c-7b69af5399a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡31f431a4-ea0d-4868-ac0c-878e12d667f0︡
︠03207522-91ca-4e50-a610-3a8b89e604d0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SS</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡5e37fad1-d72a-411f-a271-2bbb6455b599︡
︠5f897744-91cc-4bdd-abf5-d209d7d3c986︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Vector Spaces"><h1 class="heading hide-type" alt="Section 1 Vector Spaces">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Vector Spaces</span>
</h1></header></section></div>
︡2e5b7c2b-1ccd-488a-a53a-a1daab18ee17︡
︠4459fd62-87e5-446e-afc2-a6371d235017︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡76cd0ca6-e3dd-4924-a710-ab7d29b5c05e︡
︠8d54b506-cf9a-4c3c-a1be-15992c2d1fe7︠
V = QQ^4
V
︡e753c08c-65c0-4f94-abaf-9c4357085274︡
︠95bf97f2-4671-476a-ab25-ac1f0770fd27︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-2">We can test membership using the word/command <tt class="code-inline tex2jax_ignore">in</tt>. Try vectors with different numers of slots, and perhaps include the complex number <tt class="code-inline tex2jax_ignore">2 + 3*I</tt> as an entry.</p></article></div>
︡1cddb65b-9a10-4b87-a64a-be6ce746743a︡
︠b5693209-d93f-4af7-a15c-b1b2d9920163︠
︡b292cd4c-626a-4109-a92f-5e000ea91ab7︡
︠e6a8965d-2b09-4629-a0bc-01a12afc417f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Vector Form of Solutions to Homogeneous Systems"><h1 class="heading hide-type" alt="Section 2 Vector Form of Solutions to Homogeneous Systems">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h1></header></section></div>
︡8662ef83-dbfd-446f-ae6b-b6c57e07b582︡
︠418b47ad-b78a-45d1-a5c7-07ddd5bdc625︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡97622a9d-7450-4fbe-a00b-7135e0a9d700︡
︠ca72cad5-859d-4588-a488-f09258202073︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <tt class="code-inline tex2jax_ignore">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code-inline tex2jax_ignore">basis='pivot'</tt> option.</p></div>
︡13d96933-fb98-49e1-a13a-a3a450c80e97︡
︠2abf3197-583e-41cd-a2e0-d938d98a189b︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡0b5bb9c4-01c3-40d0-ad0e-ee8266be1d7a︡
︠876e217f-6812-4b10-ace1-bdf3f69a5a8c︠
A.right_kernel(basis='pivot')
︡504be6d6-63e7-46a8-a767-914953fee496︡
︠1e65a5c8-c2ca-4925-a1ab-83ddc20b1f0a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for the null space of the matrix \(A\).  See Theorem VFSLS and Theorem SSNS.</p></div>
︡518c7323-be58-49ea-aef5-a88765961a51︡
︠5b3e7a19-dd82-4511-a000-5a9e1f3b646c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡5b899f3b-9181-44e2-a5e2-64df2ef5a691︡
︠3fcb86bc-14ea-4528-a877-bdb8dd7c323d︠
A.solve_right(b)
︡36c0256d-2810-4272-ab0a-2b7e44bc1fe4︡
︠c2b82ee9-b01d-4145-a405-e215169d2bc1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡083c16a0-f611-4425-a966-f491aa747af3︡
︠bfcfce66-e5df-4712-adb8-3bdcc763cedb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Spanning Sets"><h1 class="heading hide-type" alt="Section 3 Spanning Sets">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Spanning Sets</span>
</h1></header></section></div>
︡19be97cf-eb5c-4bcd-ad99-6c4480cf48d2︡
︠4fbfe57b-4669-4216-afff-95cd95e543e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡52111f69-bbf1-4513-ab12-bb8792c781b6︡
︠30851a58-3043-4294-a556-80108b252a6d︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡0ae90036-867d-4a96-affc-57c7852aa551︡
︠36c10d23-3baa-4843-ae33-a9a712d4d793︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <tt class="code-inline tex2jax_ignore">*</tt> operator for vector scalar multiplication.</p></article></div>
︡9da6fa31-d6c8-404c-a430-7e926b53f2b9︡
︠6560b5ae-6853-4067-adab-e298503a32df︠
︡b341407f-ee83-4189-a964-447eccef7224︡
︠1e760c67-b553-497c-a303-747f24c04326︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\).</p></div>
︡744fa5c1-c762-4bf9-a729-aad290661b93︡
︠118602bc-384a-4af9-a47c-d26b50bc6c7f︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡090901bc-ef43-4af2-a33a-01d6d278ed56︡
︠d6fef0fb-ceb1-4150-a494-e96c03e7cd52︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <!--Style me with CSS--><em>not</em> in the span?  Stay tuned.</p></div>
︡32830830-3fef-4105-a24e-638df91e1db6︡
︠ff982916-a569-4479-a99e-8010e19ffada︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡1caa5d46-3eca-4701-a1ab-f2c13a2d9186︡
︠5ea7292d-312c-44b4-a896-9b2cf727cdab︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡509f7c9a-9cbb-4807-ac80-22c5fbd139fd︡

