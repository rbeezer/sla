︠551bf4ca-29d4-4c3d-aea7-c16786956b72︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡1d829765-19ff-4db2-ab9d-36eae707c734︡
︠94116b9d-0a60-4a4b-adf5-b3cada1e2e55︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡2fa411fa-e054-40f9-acc9-18cd29838a1d︡
︠04ca8db8-7a8c-4e9c-a859-171d537d6f88︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d9c9357f-df96-4c80-a806-12d303681d89︡
︠7b19b25e-beb7-4423-a630-0950b535c3a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡e13fbf21-ddf9-444c-a7a0-8badc52fae35︡
︠617a0392-4704-4148-adc3-e4f82bd5a83d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡eaf64f9e-2e52-4277-ab44-e39dbb890324︡
︠10f06400-23e8-451f-adc4-2b7b8371c75e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SS</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡c6fb7607-63a5-4b06-abe2-f0d7b6b287ad︡
︠67463bc3-236d-481d-aedb-1dce475fae74︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Spaces</span>
</h6></section></div>
︡ceb04eb1-2e48-4bca-a9b7-5c41b98083f0︡
︠7be3b327-4468-4d25-a7b0-f0c327ca85d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\text{.}\)  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡65259e8b-5d0c-46de-ab59-b4a87cf478a5︡
︠f1a2640f-06c0-422e-a0d3-a9741f11489e︠
V = QQ^4
V
︡d808a6db-5d11-4d44-ac41-ffb64c65ead7︡
︠9b094bf1-65e8-47cc-ab81-d808f555a3f8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-2">We can test membership using the word/command <code class="code-inline tex2jax_ignore">in</code>. Try vectors with different numers of slots, and perhaps include the complex number <code class="code-inline tex2jax_ignore">2 + 3*I</code> as an entry.</p></article></div>
︡a84b2861-ad78-45e5-a1ae-3764f594b48a︡
︠c231e594-731f-4c6d-a288-0cf60fc937db︠
︡2ae6bcc5-1493-4359-a172-98e8ee7b8b36︡
︠7606cc38-14da-4700-a118-4b033f1bba7e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h6></section></div>
︡0e4151e8-afd7-4a48-ab6a-3b54e9304fab︡
︠dba2df3b-7db4-4569-ad10-75bc995daac4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡6a00cef0-97d5-4c3b-a60d-77334cd9a747︡
︠ca1caeaa-e42c-4aff-a66f-3d760b3d5d59︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <code class="code-inline tex2jax_ignore">.right_kernel()</code> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <code class="code-inline tex2jax_ignore">basis='pivot'</code> option.</p></div>
︡5146df58-93dc-4f7b-afd2-e0f6701be793︡
︠1e45524a-aee8-4adf-a6dc-8bd8158307a9︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡ab7f0c15-7c35-44d3-a440-0cce4d3d134b︡
︠cf73e800-d7d0-4d1e-a052-16fd44b72cb6︠
A.right_kernel(basis='pivot')
︡8750b48b-4531-4613-a519-730704ccce97︡
︠51fb2afa-640a-467b-a9cd-3403b187d566︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\text{,}\) \(x_5\text{,}\) \(x_6\)).  This is a spanning set for the null space of the matrix \(A\text{.}\)  See Theorem VFSLS and Theorem SSNS.</p></div>
︡cb8b7a66-5cb5-461d-a1b9-efdf280b0d07︡
︠4c3d8a7e-1dbc-432e-a049-92862bf26007︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡743a1c59-b677-43a9-a1ad-b404b20a47a5︡
︠e292dbe2-5a9c-41c6-aae1-8968d1beb056︠
A.solve_right(b)
︡539f57a4-90e3-4c00-a3be-537bc5c73879︡
︠ecc8b2f6-6965-4c36-ac61-bb5271839cc0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡5ad23942-fac6-4089-a650-80cd33fc7883︡
︠9ee601f4-4ff0-46f9-a06e-0efdc21bf837︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Spanning Sets</span>
</h6></section></div>
︡cd5a36c3-a13a-4199-aba0-abe98bc96b2a︡
︠3e798bf5-f962-438c-ad36-ed1d7a843ef5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡9330cccb-1b58-4d90-aa74-151229dad09d︡
︠62093d6f-88be-4097-a13e-544776041e5a︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡bbcc509c-024b-4054-a868-7bcb3423932e︡
︠ee9bafb4-bb6f-4774-abfb-37702a45ed80︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <code class="code-inline tex2jax_ignore">*</code> operator for vector scalar multiplication.</p></article></div>
︡c7e6295d-d094-400c-a5cc-00380525a133︡
︠2fa15dbb-b9b4-4dc5-aa12-6229a3ed99fd︠
︡d1d8325e-e07a-4556-abf8-d5a0f54e3d72︡
︠a547d7a3-683e-4293-a943-129b2816643e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\text{.}\)</p></div>
︡6e4a6220-5999-47c2-ab57-e6982b132776︡
︠6e4a9adc-b254-4cc1-ae86-67dfffb03d8a︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡3f989227-ee93-4250-a448-ab07af750b38︡
︠667fe111-80f2-4328-a46d-d18d92d18dcb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <em class="emphasis">not</em> in the span?  Stay tuned.</p></div>
︡522d10f3-2731-4a74-a2bb-09c875b47413︡
︠f7514724-a4bd-4665-ab91-69a3219d5017︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡31e93305-7aa3-480a-aeb3-f2c95ebec1ed︡
︠82f7b2bb-7361-47e2-a1ce-4c0166f14c23︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡9b5931be-c312-4581-a7ae-6eb701df22b5︡
︠5532f777-6560-4c29-acba-2cc00c36444c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ea21d195-8faf-4071-aa3c-46916ada12f5︡

