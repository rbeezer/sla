︠266b28db-7e7a-4d4d-a4f7-f07783b3de17︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡f4d5ffed-b6b3-4088-aed7-5c8d40104ee6︡
︠5ea24923-6e92-41aa-a988-1e49b9ac9fa8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡506f2a95-e037-4251-adfa-518ab4360d5b︡
︠5bbbbe64-4458-4c8d-ad6d-8be1695af675︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡2c0e8cce-0126-49ff-a7d5-550367dc1d29︡
︠b1b0b073-7ed3-4394-a24b-766ad29c4238︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡ff9b05b7-8365-479f-abc3-74ade8f744a8︡
︠da7758c1-f445-4abf-a96c-dd07befa63f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡ccb440c0-1c45-42f1-a188-e65ed0ddb41b︡
︠5d801c0e-c2a1-48c1-a9ea-1c07bd89b4dc︠
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
<div class="date">Fall 2019</div>
</div>
︡f2a82c43-a154-43d0-a47f-e9be07c907dd︡
︠4dfe52aa-55cb-49f8-aa40-929519dd2d50︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Vector Representations</span>
</h6></section></div>
︡b9db83d3-e38a-4e29-a7ce-7600c1a9fd74︡
︠d2dbe6fc-adf2-47e5-a152-fc80d527f147︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡52a3e8ad-44b3-4631-ac57-e54751c89c9e︡
︠3f0d3f5d-da18-4d8c-af51-736bacc6563e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <code class="code-inline tex2jax_ignore">algorithm='unimodular'</code> requests a matrix with determinant \(1\text{.}\)</p></div>
︡46e53149-f131-491a-a51f-782e4ca13076︡
︠ebdd01e4-ae6d-4fff-a950-8d9abd76eb66︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡151f2201-6afc-48ec-a772-80f2bbf21ed7︡
︠4fd6ef8e-0f9f-4c1e-a996-b26b41744832︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The columns of <code class="code-inline tex2jax_ignore">A</code> become the “user basis” of a vector space.</p></div>
︡082de1d7-0d69-4d3b-abc5-18874d9b1e45︡
︠15d33c50-45db-4fae-ab6a-1739e7683877︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡d8dbc081-0c6d-4768-a61e-1354c4c3dfb4︡
︠79c4584d-a591-4217-ab79-a8c0d959c298︠
u = random_vector(QQ, n)
u
︡711466da-47fe-482f-a0e7-99059eee8b11︡
︠3935d9cb-4023-4eb6-aeb5-65e7b75a6d58︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <code class="code-inline tex2jax_ignore">.coordinate_vector()</code> method of the vector space.</p></div>
︡f812dfca-a0ad-4399-aa85-ffad665c0b95︡
︠49e5cc58-6080-4eca-a863-d62838e95e5e︠
c = V.coordinate_vector(u)
c
︡3982f4e5-c454-4540-afc7-29d521e0a3ff︡
︠239a58e3-da73-4fc7-a0c3-7fd54f63016f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The inverse linear transformation is also available as the <code class="code-inline tex2jax_ignore">.linear_combination_of_basis()</code> method of the vector space.</p></div>
︡183a2831-c1c3-44b0-acbd-f3cc81cf4c1b︡
︠c23fd680-7423-486f-a83b-62f2f74c7998︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡45b858fe-962b-4aa2-a935-5984c7c133ac︡
︠cf2788f7-69e9-4484-a728-c825ced8f0ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">And the automated check:</p></div>
︡d8a0029f-9087-49d0-ae42-61a87774075c︡
︠135b35ed-57de-4f6c-af41-2a3d3a4ae413︠
u == round_trip
︡1367facd-7244-404b-ac3f-e5a13eb789ca︡
︠ced35dd2-a44f-4953-a427-30ce10cc7564︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <code class="code-inline tex2jax_ignore">u</code> relative to the basis <code class="code-inline tex2jax_ignore">B</code> is just a (unique) solution to a linear system.</p></div>
︡f33d69b4-b58f-4525-a967-0a7d98d545ba︡
︠abdd9464-82a1-42f3-a79a-e9456ee4429f︠
aug = column_matrix(B + [u])
aug.rref()
︡d3ab1408-88a3-49c3-ad3c-725c7ca50e8a︡
︠e6d82fd2-75b1-495e-ac22-8a4e7cb12c0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The following stanza will always return <code class="code-inline tex2jax_ignore">True</code> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡6e247434-7ba2-4d37-abfa-d8527ce2d1ee︡
︠c4ce933d-7a82-4d55-a515-ffd414007e15︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡cea9c4cf-14a9-467f-acc1-1b0f02412b04︡
︠1d2b6f02-e178-4be0-abac-cc8db9f0a2bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Abstract Vector Spaces</span>
</h6></section></div>
︡7c898e88-17a8-4056-a100-ddd6a8f98ac4︡
︠631ecac5-2ddd-45e2-acf3-dc0a3a234bd0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡043120be-6ec4-4b22-aee1-1be261d95143︡
︠24766971-8ef4-42b7-a495-6b14d76b0bd5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
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
︡efa561fe-27c2-4cee-a337-993be035b418︡
︠a0846f55-d8c9-4b88-a9cc-15541454a18b︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡a2b2712d-7f53-491c-a1b9-dce31f86428c︡
︠e2fa56c7-3379-460a-a326-c03b44bcbff4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12"><code class="code-inline tex2jax_ignore">B</code> is a basis, since <code class="code-inline tex2jax_ignore">A</code> is nonsingular.</p></div>
︡be6a8c14-347b-4eeb-a91e-fee29275f34f︡
︠70deb5ac-9e11-49ff-a581-38f2a952f453︠
A.is_singular()
︡3d40bf65-cf3d-41cc-a015-15d178bcaa10︡
︠d4d1581b-ddb0-4acd-a7df-de4a0b2b8d69︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Now coordinatize <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡d4ea6327-f04b-40f8-ae75-d441e4d105e6︡
︠fcad6019-719c-4cac-a483-957d66248296︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡89336a38-3b9d-4867-a4a0-745f2c540d6a︡
︠4f482a26-362d-43a3-abfd-b72164dc9eaf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We'll get a coordinatization old-style.</p></div>
︡9ffd7289-8bfb-4936-ace5-aaccb3190a8a︡
︠a299f1b8-a44a-4fdd-a59c-b37703b2dcc5︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡6680071b-0c04-46f1-a45b-10f88fb4290e︡
︠e75675e9-1e62-43d1-a417-037fc0f84114︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Let's check to see if this is right and we can recover <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡00c573b5-dd43-4f71-a1c3-8c60c20ba5dc︡
︠adc633af-97ce-4bb5-acd2-f6f66c9784c5︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡073cd707-69f2-47be-ad8c-082fe8b804cd︡
︠9c4d9149-9a38-4da4-ac8c-885a8434c388︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡0254fe64-8feb-48c6-ac8e-917ebf2f3f2c︡
︠73ed8ebf-24e1-407d-a636-5d7dc3ce20d5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡c58b219e-0b2f-4d36-aa9a-0f88c4b93d90︡
︠25533ef0-c01f-47be-a62b-b71cb7384566︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f9b5cf3c-ffd0-4f4b-adbe-975a312796d0︡

