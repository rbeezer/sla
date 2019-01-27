︠ad6e4ed9-05be-403c-a79f-af8a5a20b3b7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡954039e1-2f6e-4d61-a9db-98a22fd5f88a︡
︠f20423d1-400a-4ee1-a08f-b2755a52f4a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡faaffd3d-e7df-42ce-a4c6-379bde52057b︡
︠d768655a-3310-424c-a089-7c018dfd0f38︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b0f1957e-0a21-4a46-a75f-0db1e3fe10d4︡
︠047f0228-1872-4a7b-a02c-23ac9c2684d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡7ebedc00-418b-4423-a035-c69732359b96︡
︠304ef1a0-1f2a-4a6d-ae60-337cbafef8a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ed92c846-865a-4001-ade8-e2c5f7fe6e60︡
︠75e08a8c-1127-4b38-ad06-5f9148847e3d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section VR</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡fa3ebb94-7b5a-431d-abee-23eb524e6bd9︡
︠8c4bbf74-4e09-493b-a7e9-61d4c3701dbe︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Representations</span>
</h2></section></div>
︡74bc06c7-b06b-4a0f-a57e-fefc2c09c178︡
︠ffdbbd18-5d8c-492c-a874-67363524ff57︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡75640222-a8f3-4595-a11d-6849e8f0cff2︡
︠777ec80f-bb7b-4fc4-a5e6-35e7fd0fedee︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <code class="code-inline tex2jax_ignore">algorithm='unimodular'</code> requests a matrix with determinant \(1\text{.}\)</p></div>
︡06674205-1b09-4606-ab55-18b00ad19ce8︡
︠aee06237-7528-4f98-a55e-b66666047a06︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡3b51bc4f-3c46-4430-ad95-c4b2b29c7167︡
︠8a3dbf90-ecc2-4216-a3ff-8b44df67bd82︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The columns of <code class="code-inline tex2jax_ignore">A</code> become the “user basis” of a vector space.</p></div>
︡51c8e877-8645-4876-afa6-e3137f2d7ebf︡
︠110eaf71-7f8b-4503-ac0d-2e1428356a41︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡a53b4dbb-f2b7-4e08-a1c8-ff703987ef22︡
︠0d849c15-8173-4854-a170-970184b0c9fe︠
u = random_vector(QQ, n)
u
︡c0c55627-ba83-4e18-a220-3c73df880420︡
︠3f105768-e126-4417-ad3a-e676a462d770︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <code class="code-inline tex2jax_ignore">.coordinate_vector()</code> method of the vector space.</p></div>
︡8a0aa511-df30-4582-ad65-84cfb6429191︡
︠21b3b68d-86cb-4723-a9fa-f8fb7a2bccd6︠
c = V.coordinate_vector(u)
c
︡df79230b-082d-44af-a83f-2371eec199e6︡
︠fb6659a5-4be7-4831-a7b5-7e8e07dd9667︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The inverse linear transformation is also available as the <code class="code-inline tex2jax_ignore">.linear_combination_of_basis()</code> method of the vector space.</p></div>
︡d524c8d6-e22d-49b0-ab3c-0ab98b0589cf︡
︠0a43e0cc-7aea-4775-a828-4320cbbd146d︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡3788b688-2021-4aa9-af2c-87fa7b63878f︡
︠5c7d434d-b7ee-4898-a18b-d12cba81e197︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">And the automated check:</p></div>
︡1e39b8c0-5874-46fd-af15-ae7db284466d︡
︠d7c1079d-8e5f-42cf-afb0-55fc3bfbf415︠
u == round_trip
︡1fdd0d59-be81-4dbe-adb9-d1fde28dd81f︡
︠d3fb1f97-9451-463d-a408-de9dc7f45dd7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <code class="code-inline tex2jax_ignore">u</code> relative to the basis <code class="code-inline tex2jax_ignore">B</code> is just a (unique) solution to a linear system.</p></div>
︡dabd6ddf-463a-489e-a5df-ebe89a08e66c︡
︠d4691d6e-cb5f-46d9-a437-4232acca5b1c︠
aug = column_matrix(B + [u])
aug.rref()
︡7e1e72be-1797-47f4-a148-88acb5870d21︡
︠aa0b87e4-6fbf-473f-ac44-4ccf9741f5f2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The following stanza will always return <code class="code-inline tex2jax_ignore">True</code> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡69c655e3-9435-43a8-a36c-7b94a2cf4b44︡
︠dada120f-6939-4e73-a7ba-425d600204e5︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡8c067197-0f04-49fc-ad77-7b9d80e93ee1︡
︠47e4e557-c67c-4b0c-a8e3-f5e937a11d0f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Abstract Vector Spaces</span>
</h2></section></div>
︡f56d942f-cf64-4c15-a893-c99b2c3ce4af︡
︠394a7efa-dc93-4055-a6ee-9b826af97ed2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡e1b3c31c-de97-429d-a7fb-696ecd9b61a4︡
︠386fb32d-00b9-47e2-a452-0cc7a8444a5e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
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
︡f8757299-09ab-421a-a560-86c4d7c2b1c0︡
︠fc96209b-a945-4576-afcd-f54c92364f71︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡f7d9dfa7-b510-4a77-a074-e79233569950︡
︠a588f689-d3ef-4386-ab9e-f759a8cff695︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12"><code class="code-inline tex2jax_ignore">B</code> is a basis, since <code class="code-inline tex2jax_ignore">A</code> is nonsingular.</p></div>
︡74bfca55-4382-42ca-a974-77cc165d6530︡
︠aa46911f-652f-474b-a2e3-75b32ca7a0de︠
A.is_singular()
︡1795e37f-2e44-4dc9-a9f7-d6c99f637044︡
︠f5c8bab2-9d1e-41ea-aa89-26fff9e5c561︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Now coordinatize <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡9576d208-5a66-4974-a42d-d43d3372947f︡
︠514c72f8-b431-4ac9-af0c-ce10c5347c8f︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡ce11a93a-1fe5-4082-a973-64274ec8345b︡
︠319424d6-ef5c-4465-a70d-a61ce6bbeef4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We'll get a coordinatization old-style.</p></div>
︡a3538886-f765-44bb-a92c-6c2880e3bd2b︡
︠1ce70708-d003-454e-a1e0-d5d0e50c9cab︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡8b7738e3-1c31-4096-afa5-f8bd89296c60︡
︠8ec06f85-3917-4b10-a10b-7042dcc062dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Let's check to see if this is right and we can recover <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡35bf52ee-7278-492a-a94b-5bb9d969acc7︡
︠9fd5f37e-1e08-479b-a13f-c8a828182c5e︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡3ee14d4b-c59c-4d05-a929-8e1364b8cd42︡
︠c80b959d-053a-411b-a7ad-02c25361c3f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡5c9673b1-1c74-4685-a10f-f12c48fb9be8︡
︠c456bca7-eb45-40ae-a5cf-5c088408094f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡21377f42-72db-47d6-a633-59f618a11bb5︡
︠8957aed1-cdbe-4f63-a5e9-4f70063f45f2︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡98bff6dc-7a92-4989-ade7-636e374679c7︡

