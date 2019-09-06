︠837d4060-9d1e-48b0-a3ef-585ca085acd2︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a5623a29-bb7d-4af9-aa27-a8ff4afdf99d︡
︠c43366d8-0848-46e8-af8b-623528015fbf︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d830b979-2826-4084-a97c-4ef84104363f︡
︠51891329-d41f-4a27-afbf-cfdb72d861fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡14b9ddd0-6a57-49fa-a1f5-0b4e6c045654︡
︠80e2e82a-800b-4140-a01c-66ec7847281d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡0aefcd8f-8108-4c1d-ad2f-98685d194416︡
︠22001de9-d6ad-4f7e-ad50-cf937e0985da︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡cfcc0eae-8752-454a-a31f-4efe17d2058e︡
︠f4dc1eab-c232-4586-a0c8-017ff96cc724︠
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
<div class="date">Fall 2019</div>
</div>
︡5182ea19-6dc9-4012-a62e-f2f61f08ccfe︡
︠04097e38-7963-4365-a5d7-4da44c444004︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Spaces</span>
</h6></section></div>
︡e19ea0de-9580-48b7-ae15-6520a7ceb1ec︡
︠5ddec8f9-69ff-4a7a-a26c-7c2acc19bda9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\text{.}\)  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡9f76e3ed-d57c-4414-af4b-cc7e64b8d657︡
︠0f7755b4-39aa-46ec-aae0-5acd9314cfb2︠
V = QQ^4
V
︡6b1e373f-b785-41e4-ae92-efdbc6feabd6︡
︠d42f2566-52de-47fd-acd6-ec6c82270d2e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-2">We can test membership using the word/command <code class="code-inline tex2jax_ignore">in</code>. Try vectors with different numers of slots, and perhaps include the complex number <code class="code-inline tex2jax_ignore">2 + 3*I</code> as an entry.</p></article></div>
︡3025f4b6-a188-4f07-acc5-3b197ac91c74︡
︠bb5d152c-bce3-45d4-aca0-2db472e3c004︠
︡4bfa80fa-db7b-4fd8-a3a3-3c0e081ebdec︡
︠2371d02d-bf83-4a70-a3aa-6e67d60e5bc4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h6></section></div>
︡7e7ff501-2b1b-4ec2-aefd-96cfe96e7ca3︡
︠122821e2-31d4-4cc0-afa0-d479452b4a7f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡d8101310-5513-4aef-aada-bbe24287dd15︡
︠cfeef011-0772-4a10-a9ce-4792ae526307︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <code class="code-inline tex2jax_ignore">.right_kernel()</code> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <code class="code-inline tex2jax_ignore">basis='pivot'</code> option.</p></div>
︡8c77a77c-8730-49e1-aa8d-8c42ff141781︡
︠f0e789ef-5769-4707-a8a0-53ca6c981bf9︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡dfac6254-1ac8-4439-acb3-c179ce566626︡
︠f059ccc2-0ddc-4510-aedb-2ada39890f02︠
A.right_kernel(basis='pivot')
︡5f3b9f75-173e-4490-a47d-0a7e5b8e48d4︡
︠b34eeee5-3fd7-4e20-ae78-b72358ed6363︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\text{,}\) \(x_5\text{,}\) \(x_6\)).  This is a spanning set for the null space of the matrix \(A\text{.}\)  See Theorem VFSLS and Theorem SSNS.</p></div>
︡817c05ae-aed8-45ca-a5a1-d690ae89cec3︡
︠244914fc-3aa0-420c-ac67-e3d7476d13cd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡6f2b9308-032a-444b-a111-80568aee7f23︡
︠d8204b34-4486-4ecb-aaed-b7d1e5bc42c6︠
A.solve_right(b)
︡6af8a44e-8821-4f1e-aabc-773582b4ef6b︡
︠6d55509a-e230-4421-a2cd-f4439d541348︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡fa550b5a-63c9-440b-a637-32c8566ab8ef︡
︠0da63a18-47c1-4012-ac75-3b804d6a8126︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Spanning Sets</span>
</h6></section></div>
︡134c976b-0b3d-4d4f-af06-542e47bb14d4︡
︠af8fb171-d7d0-45a4-a4a5-b09eee5a96e7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡b963815f-2270-43da-a815-dd57b350ef7c︡
︠636c6edb-e0e6-4113-aba5-1736fea4f846︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡5a9b70a5-c96a-4f7c-a337-94ecadb52ae6︡
︠131bf9b9-e734-422b-af6e-6f35ce383621︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <code class="code-inline tex2jax_ignore">*</code> operator for vector scalar multiplication.</p></article></div>
︡d45ff48b-e631-4b64-a75a-6ca92775fbb2︡
︠c9718660-2475-453b-aaa1-50efa07266d2︠
︡9ab0b372-496b-4fce-ab69-cbabb4b27194︡
︠43ff3a3b-d753-434f-a2f6-bc257ea2114b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\text{.}\)</p></div>
︡68e5820b-dd33-4167-a187-733a9a83d952︡
︠4cb31452-f303-4619-ae22-5a694f4d3278︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡4c40f645-9499-47fa-a1ed-337acc91ad31︡
︠57ea8e1c-3a1d-448c-aeab-cde37b01caef︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <em class="emphasis">not</em> in the span?  Stay tuned.</p></div>
︡c47aff81-cccd-4906-a6f0-1be0f6cf7996︡
︠86b00a09-cc68-4af8-a067-082f91551cea︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡370e7197-a541-4df0-a6f7-d000f925e32d︡
︠e54f4c0d-4b39-4c08-ad77-548558f7deaf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡b95089c9-715a-4a1b-a2f2-a562acaa388e︡
︠169cf7ad-707c-480c-a22b-737c1d922f97︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3aec7e41-bb23-48a3-a5d6-15982b6cd8b7︡

