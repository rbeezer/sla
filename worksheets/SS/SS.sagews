︠2d099b94-7b4e-47c7-a582-6ef0eb807fc2︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5f059a12-e9e2-476f-aec8-136034bb53b1︡
︠60166a07-df0b-4282-a16e-981085441a8c︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡becd5275-a55a-4073-a28a-12222a87f917︡
︠5d61bb33-1d86-489d-acc6-6d980c383315︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a7308ecc-1daa-4323-a1ff-75d0eec16048︡
︠2387040d-4caf-41ef-ab51-20396b6c284b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡06e9efee-d2b7-42c6-a27b-4ac7322af523︡
︠03afd8eb-6ce1-431e-a935-5801f342d370︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡68408286-ef3d-416e-af02-56a57a8cd6f5︡
︠76eb76e0-dcf0-4907-a807-a6e5b6042ea2︠
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
︡3281ef7c-f48f-4520-aca0-4562b28b6a91︡
︠cd35e146-e4b7-4309-a3c4-409b35db036a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Vector Spaces">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Vector Spaces</span>
</h2></section></div>
︡537886ad-d819-4059-a996-dd778ac56d9c︡
︠8e0f7962-74a8-4dae-a747-d245adf6364d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\text{.}\)  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡3cb3c3c3-537f-4c5a-abcf-2a17fb5f2857︡
︠5841b048-49cb-4991-a45d-3875f71564eb︠
V = QQ^4
V
︡b43f5f0a-8435-40df-a114-f5c7bcec141f︡
︠fd33d93d-3b27-4034-a046-44c0b7c94dd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-2">We can test membership using the word/command <code class="code-inline tex2jax_ignore">in</code>. Try vectors with different numers of slots, and perhaps include the complex number <code class="code-inline tex2jax_ignore">2 + 3*I</code> as an entry.</p></article></div>
︡dd3100a3-eef0-4603-ab08-14de48611bfe︡
︠1dc4ec49-038f-43e0-a790-0b5d9a50b7bb︠
︡6c8206f5-0f88-4fc7-af40-04b525f85bf1︡
︠66de8e57-357c-4e69-a55d-5521b57add5d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Vector Form of Solutions to Homogeneous Systems">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h2></section></div>
︡eb3c9bae-3e4a-4b20-a486-1dc4f7972748︡
︠4238ed49-c771-4223-a37c-9896d9e601d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡927ca6ae-0767-488a-acb1-85a2c8cafcbd︡
︠14f91a0c-904f-48c7-a293-419f458007dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <code class="code-inline tex2jax_ignore">.right_kernel()</code> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <code class="code-inline tex2jax_ignore">basis='pivot'</code> option.</p></div>
︡4e1473e7-f783-4700-af39-27bc7010017d︡
︠dccf042f-b174-45e4-a6d7-f0fbc7be7b0e︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡9ea5db9f-a501-4960-adcd-5ce47ab292e9︡
︠187ce487-32d4-447a-a557-2a31fbbae5dd︠
A.right_kernel(basis='pivot')
︡ef55b3a4-bd68-42b0-ad05-43084f30a257︡
︠f3749283-631d-4c39-ad0a-24d3d2212c38︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\text{,}\) \(x_5\text{,}\) \(x_6\)).  This is a spanning set for the null space of the matrix \(A\text{.}\)  See Theorem VFSLS and Theorem SSNS.</p></div>
︡42cb75ef-953a-430d-acdd-702430751a24︡
︠266e1d40-dd51-4781-a55e-3ce502687729︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡b50232f8-2d57-4ed0-a025-f51eb201a78c︡
︠14126546-e634-4e22-ae24-31a4f66f8171︠
A.solve_right(b)
︡e950bc5f-2466-4849-aa2b-f5daad11d925︡
︠b0e10ad6-a0a1-4735-a0d8-cde98879943c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡aec90d3e-3efd-4f61-a56f-d2cbc444ee81︡
︠a307c040-f8ee-46e4-a73b-60d2ca70e5f7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Spanning Sets">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Spanning Sets</span>
</h2></section></div>
︡7aa71786-77e6-4644-aab7-618444ec5c14︡
︠49ee0068-6d04-4469-a814-0868cbda7279︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡7b35a360-cced-4124-aab6-fce65a234a5b︡
︠4c7722a8-2751-4464-a810-e1cc826a5b4b︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡798e0a0b-3328-446f-a9f1-9d36ab815eca︡
︠933124c3-f071-49b8-a957-ae5e5f9e1fcd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <code class="code-inline tex2jax_ignore">*</code> operator for vector scalar multiplication.</p></article></div>
︡a61d8415-805f-42fb-aa80-23f7147b28af︡
︠64682fd4-455a-4479-af22-f46fc73436de︠
︡643cc5ba-a0ff-4a37-a43a-73fd2c5608dd︡
︠631a0efc-8ad8-4a8c-a2cf-c43c1586c8f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\text{.}\)</p></div>
︡66d80e70-bfb8-4850-a47d-441702d89919︡
︠370100f7-1a7c-42f1-a339-07e1fe4c7e69︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡7917b18a-895f-467e-a8b2-1bafc9e166fc︡
︠f660e116-ca01-4a69-a9e4-b0f60cffd55c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <em class="emphasis">not</em> in the span?  Stay tuned.</p></div>
︡243851a7-8618-48cf-a15e-51f57f17efd4︡
︠cf9f8e13-5a97-4213-a239-08a0d2ff9ee7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016–2017 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡2a6bafac-206c-489d-acb0-5c90c72c7ba5︡
︠6ff9088c-4a9e-44d1-a8e0-866664436a4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3aa24bad-7f71-4dcf-af5e-0d463ba8e123︡

