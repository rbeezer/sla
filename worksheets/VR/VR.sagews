︠ecf4ccb0-c7d8-4088-ad01-981e4ff190e7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡7d37203d-005d-4866-a136-2df3b33b4db3︡
︠4308a38e-19e6-477c-ae8f-4ad4e8714be0︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f340bf34-d4eb-4a53-a74b-7864c4c46104︡
︠1f75f352-8276-4e2c-a190-d0934681ae3a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡25aab9e0-c624-4d16-a920-a01436ab85ab︡
︠517a51d0-2f14-4b86-aec8-8ef78af14374︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡8d607b24-c54d-4af6-a0e2-8618e92ea722︡
︠caf2b7ed-ca30-48df-aede-1642e3b11693︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡85d88906-7c1a-4ca7-ac85-aabfca28b3f5︡
︠68a403e1-a5db-4f95-a65e-c097f512ed6d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section VR</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡2c5d1600-7a54-464e-acb4-b754f5a178fd︡
︠62abfc20-c9b1-4e16-ade2-19a7eac8b31b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Representations</span>
</h6></section></div>
︡17db3c86-d4f8-46ea-adb8-0d1b4050804a︡
︠b5191559-b2eb-4b49-a525-d22fd7f3784b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡201492ae-b519-41de-ab21-0042f1af5179︡
︠da9fe218-1de2-470f-a5b2-7b2be2d812a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <code class="code-inline tex2jax_ignore">algorithm='unimodular'</code> requests a matrix with determinant \(1\text{.}\)</p></div>
︡b8347269-b76a-4ada-aa35-ca1e5f027242︡
︠b0af422a-bd11-48ce-a262-82d91291513a︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡3faefe01-9bfb-4d77-acad-e30bc1e52376︡
︠ea688679-7047-4c1e-a3e9-1cc18926f5a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The columns of <code class="code-inline tex2jax_ignore">A</code> become the “user basis” of a vector space.</p></div>
︡c8131a99-30a8-486a-a698-0b4dcd6f365d︡
︠c16e578e-0bfa-4471-aeeb-7e6cb3922c87︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡a5903e8b-d97c-43b3-a4a2-f106ec97ec47︡
︠4eceffc7-ba02-464e-aa88-c8adf8a80844︠
u = random_vector(QQ, n)
u
︡092c71c3-97e9-494d-a7f6-0cfb9e4374cb︡
︠8c4b9bd5-f6cd-4062-ade2-4fe3a71eb837︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <code class="code-inline tex2jax_ignore">.coordinate_vector()</code> method of the vector space.</p></div>
︡4b497d55-25bf-43c5-a593-8d361dd2c8bf︡
︠00b5922f-7543-447f-aad9-e571b8e9bb26︠
c = V.coordinate_vector(u)
c
︡a365807b-ff04-435c-a3fa-cdf4fbce5798︡
︠e3b58360-e60f-4a44-a673-041081c5f2d8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The inverse linear transformation is also available as the <code class="code-inline tex2jax_ignore">.linear_combination_of_basis()</code> method of the vector space.</p></div>
︡acc51598-68e7-479b-acf2-0071103e5202︡
︠bae7f0c9-8317-4a90-a55f-850f72fa05c0︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡87a6fa7c-30f4-47ad-a7f3-78887fa79ac6︡
︠b5e5bd03-a339-48a3-a623-99b2131bbb67︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">And the automated check:</p></div>
︡11df78d7-c7bf-413a-a49c-835457773229︡
︠a3b73200-ac85-4c98-a7e2-3669ab022445︠
u == round_trip
︡df986cb6-d535-4aff-a26d-5a4b4f752a96︡
︠f668fc5a-32f6-4896-a8cd-628becb51dfa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <code class="code-inline tex2jax_ignore">u</code> relative to the basis <code class="code-inline tex2jax_ignore">B</code> is just a (unique) solution to a linear system.</p></div>
︡4f1a716c-bafb-4185-a802-564e12ac8ca8︡
︠7e798faf-c5ab-41b4-a634-89bc7df2a7f4︠
aug = column_matrix(B + [u])
aug.rref()
︡f7370c6a-c206-4e11-a275-70e3d60c9b48︡
︠04f3bff2-ab4a-423c-a354-8d4701d0e6c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The following stanza will always return <code class="code-inline tex2jax_ignore">True</code> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡fc6ef2ef-49b9-44ec-a012-4af92fbf096c︡
︠c5834853-8ac4-4302-a004-25f2f11a1248︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡e0e73209-5932-4d72-a073-4a94c85e3707︡
︠ff8d7b07-5618-48e0-abf8-e4378f0ee35e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Abstract Vector Spaces</span>
</h6></section></div>
︡b4e315f2-d48e-4d0d-aebc-6a092992786c︡
︠710552a4-588d-466e-a34a-0b4156ae916f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡ed1e361e-a763-44da-a31e-d1a22f9de2f5︡
︠2d23c69e-445a-4897-a2c8-1aaccdb5a979︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-10">In \(P_3\text{,}\) the vector space of polynomials with degree at most \(3\text{,}\) find the vector representation of \(p = x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\) relative to the basis for \(P_3\text{:}\)</p>
<div class="displaymath">
\begin{align*}
B = \{&amp;
5x^{3} + 2x^{2} + x + 1,\,
-8x^{3} - 3x^{2} - x - 2,\\
&amp; 7x^{3} + 4x^{2} + x + 2,\,
-7x^{3} + 3x^{2} + x - 2\}\text{.}
\end{align*}
</div>
<p id="p-11">Hint:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\text{.}\)</p></article></div>
︡ea61d277-0cc5-464f-ae7c-796252f17aaf︡
︠39aab7d2-fefc-4460-a348-0c26e88e9084︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡0cda7924-c12b-4d71-aea6-7a2911290ba8︡
︠fa5d4c67-0283-4d6a-af55-5c086298b946︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12"><code class="code-inline tex2jax_ignore">B</code> is a basis, since <code class="code-inline tex2jax_ignore">A</code> is nonsingular.</p></div>
︡24071548-d5b5-489c-a381-9dea54cfd891︡
︠ec5f4758-02db-4864-a49d-53a4d0890629︠
A.is_singular()
︡805ef965-267f-42f5-a64f-493fd0f6a0dc︡
︠95df4d9a-2b19-4a39-a0ad-0e73d54dced9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Now coordinatize <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡b7f8645f-e7a0-4153-ab6d-96b0a86e62c3︡
︠c8ac0006-0fdb-4ff1-a2b7-04eb484b6ad3︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡dab86b97-196f-456f-a69a-d9fc5349eb3c︡
︠e1699d52-46cb-4612-a68b-15502a463317︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We'll get a coordinatization old-style.</p></div>
︡ff86923e-5851-44c3-a62b-23183337a6ab︡
︠eab70494-3fd8-4124-a487-0ba24e576fe0︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡bcb63cbd-1fce-47e0-ac29-335e59da03ae︡
︠36afdeb8-cc79-4af7-abca-5fdae23bd3e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Let's check to see if this is right and we can recover <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡22ed1bbc-489c-414b-a8f7-3470f6321160︡
︠a8395441-199a-45bf-a14e-9731827c59ec︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡a84d1a16-c3f6-4e51-ad65-c0d015382820︡
︠4c899a4b-00e0-46d5-a8ac-d7cb7d0a6228︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡374b1d55-8667-46c4-ac4f-8264dd2e781a︡
︠04250336-8cce-433b-a8f0-783ec1be0371︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡e760d630-ccc9-4bfc-a78c-804be1da0dd7︡
︠0d0a7b46-c1ce-459f-ac32-ce2d264c2c2c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7298d141-7024-4f8e-af41-1004e2b2fef1︡

