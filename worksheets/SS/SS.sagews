︠6eba1824-5d21-4c86-a4b5-88d595015a2b︠
%auto
%hide
load("mathbook-content.css")
load("mathbook-add-on.css")
︡68a13ca6-0f33-400b-a757-cdf929e3a3ed︡
︠f55a7861-f612-4a13-a698-d56ce86dc01b︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡d103b7c2-9b9a-4e3c-a295-a6a139a976a9︡
︠18a2b6a8-8332-4d25-a94e-ef59082a2a0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡325e514f-9d2d-4f0f-a493-38291214c3fd︡
︠a834b9a1-6895-4564-a53c-125a65a2d9be︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SS"></section></div>
︡966ca264-3ccd-4124-a677-39994ffe2c8e︡
︠b141ee44-381f-4522-aa99-1c2b66a55d2e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡bdfffee3-21c4-4126-a3c0-cedf93648c2a︡
︠ae7ae78c-bbd7-4fea-a616-6e54ee743f15︠
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
︡ab32619e-d4ab-4caa-a60c-d7b2b903e43f︡
︠9dbd01e9-0cea-48a4-a315-feca0841b26f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Vector Spaces"><h1 class="heading hide-type" alt="Section 1 Vector Spaces">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Vector Spaces</span>
</h1></header></section></div>
︡2fcddcfc-6f85-4910-ae41-3400f1933469︡
︠489066d5-245b-49fc-a9d1-a15a15ca9fff︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.  This vector space contains vectors with 4 slots, each filled with a rational number.</p></div>
︡83814f72-5a6a-45f9-a196-3479f9eb37a3︡
︠72703bfb-d454-4eb4-a7cd-e01690f8b306︠
V = QQ^4
V
︡678d7c97-86be-4ba9-af26-c16e7ff78aa8︡
︠01f9e767-eeea-4c94-a597-b581301379d1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-1" id="exercise-1"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5></article></a></div>
<div id="hk-exercise-1" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-2">We can test membership using the word/command <tt class="code-inline tex2jax_ignore">in</tt>. Try vectors with different numers of slots, and perhaps include the complex number <tt class="code-inline tex2jax_ignore">2 + 3*I</tt> as an entry.</p></article></div>
</div>
︡2e21819e-97c8-4291-a7fa-ea07c47e7e85︡
︠0a42cc45-bdd8-45f1-a760-25b2c8736e2e︠
︡42985559-a067-49c7-aa3d-b5268fff25e5︡
︠437dbd31-6e1d-45a9-ad5d-a13d8bc7bfca︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Vector Form of Solutions to Homogeneous Systems"><h1 class="heading hide-type" alt="Section 2 Vector Form of Solutions to Homogeneous Systems">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Vector Form of Solutions to Homogeneous Systems</span>
</h1></header></section></div>
︡41dcf992-a00c-4d67-a73c-4ed7b537cf79︡
︠9ba67af1-ca1d-46e4-ad68-aa6722d5aa41︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form.</p></div>
︡4ddf4594-66e8-4357-a82d-0c7749a2f5d3︡
︠6214169b-b01a-485f-afd2-def464e16d64︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">The <tt class="code-inline tex2jax_ignore">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code-inline tex2jax_ignore">basis='pivot'</tt> option.</p></div>
︡1d63189b-34b4-4e49-ae47-016f5c34da14︡
︠f31662e0-d159-454d-af22-723d2996d71f︠
A = matrix(QQ, [[  1,  2, 12,   1,  13,  5,  2],
                [ -2, -3, -21,  0, -13,  2, -5],
                [  1,  3,  15,  4,  28, 25,  0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [  1,  1,   9,  1,   4,  9,  1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡b13c79f5-ad6f-46c3-a4c6-63990b3a2024︡
︠0d53acda-1778-47d5-aa11-08492555f861︠
A.right_kernel(basis='pivot')
︡c6f1aad8-4ffb-4779-ac2b-e232c582b7a1︡
︠86887225-a64a-42c1-ac93-876ca3226da0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for the null space of the matrix \(A\).  See Theorem VFSLS and Theorem SSNS.</p></div>
︡e376bf9d-4349-4e76-a03f-4b7b71f9456e︡
︠551dbcc4-a18f-4a76-a079-0c577d966dcd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p></div>
︡c13defab-35cc-4474-aa8c-488a00797e63︡
︠c25f04eb-f21c-4f53-a30b-f547f486df54︠
A.solve_right(b)
︡317808cf-4b15-470b-ab3b-730ba0026e2b︡
︠35dbdd3a-d76e-4cef-a793-3164c04d3bc6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this vector is the solution when we set each free variable to zero, which is the “other” vector from yesterday that is not part of the linear combination.</p></div>
︡7fb4a92e-4f5a-4e28-ada2-1e372086ec2a︡
︠29aee580-3c09-46eb-afc6-1d44475dd390︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Spanning Sets"><h1 class="heading hide-type" alt="Section 3 Spanning Sets">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Spanning Sets</span>
</h1></header></section></div>
︡db98a7d2-80e8-4956-a543-b610b570253c︡
︠517f9166-4f72-4718-ae6c-12223e8aeb02︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Example ABS from FCLA.</p></div>
︡753f5d1b-46bb-482d-a003-d26059ee4ca4︡
︠f2a32f04-b5a6-4138-ae49-21c8221005da︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1, x2, x3, x4, x5])
W
︡acd4ff30-3e6d-4471-ad65-687309529677︡
︠113e63d9-417a-4fc2-a098-500c41593ffb︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-2" id="exercise-2"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5></article></a></div>
<div id="hk-exercise-2" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-9">Make a “random” linear combination of the five vectors and test for membership (which will be trivially true, repeatedly).  Remember to use the <tt class="code-inline tex2jax_ignore">*</tt> operator for vector scalar multiplication.</p></article></div>
</div>
︡61daf3ed-c2e4-4dd1-a0eb-83c900a6ad5a︡
︠9cb67b95-8686-4b64-ac63-8f748753ef14︠
︡aa05070a-d915-40cb-a491-711e596ad4ae︡
︠8499aa1b-4e45-4452-a09b-21c301c7cac6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">But not any old vector is in \(W\).</p></div>
︡84b2e6c0-20f6-463c-a835-357f8815fd0b︡
︠4800bf67-f88e-4fe2-ab75-1ab9a41ca19a︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡ce3dfec5-5bed-4aec-aca3-2cee58264c8e︡
︠74da1c8e-2da1-4b4f-a71a-b4693b15262a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">It should make sense that arbitrary linear combinations are in the span.  How did we manufacture a vector <!--Style me with CSS--><em>not</em> in the span?  Stay tuned.</p></div>
︡59f241fc-02aa-436f-a3d1-d8542804e3a1︡
︠e0bd3ff2-cf46-498d-a8ba-993fe58ea614︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡7f43d72c-aebf-4557-a2e3-d8d17b70a16b︡
︠02050565-5027-4d27-ac61-fa923b55029f︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f910f266-7b69-423b-aa02-b0d52017519f︡

