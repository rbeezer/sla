︠1b2b20d7-b7b1-4b6e-ae9a-83a8639ce949︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0553073e-ef59-4010-aef9-97d303690534︡
︠f3a47bba-99af-43a1-a390-d38a69ed3f36︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡42ae61a1-c3b6-43f1-a43a-50dda4692985︡
︠0c7abeb5-f89b-4eca-af0e-a5e839ca2f4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡448cf3ab-9a33-451f-a010-eb6d3a6049f9︡
︠612886db-75fd-4973-afc0-76db7542ee8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡8fba8415-f8be-4546-a942-ac8870dc3cab︡
︠63b1e36f-8674-45d9-ab7d-e1a79176db38︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡79c2ba51-ae82-42df-ab86-9683d155830b︡
︠c758903f-2dda-4f07-afc0-667ea4ffa83a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section VR</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡3f287c8b-bb89-4589-ad76-ddc5b69b6439︡
︠f681f0e8-b934-439c-ac63-241f9d538b8b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Vector Representations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Vector Representations</span>
</h2></section></div>
︡472d92d7-a81e-4d47-a91e-d43e3cb80448︡
︠f9026944-0fd2-4da6-a447-31b60f3c740c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡d06d3d67-176f-4949-a09e-7cf32f26caac︡
︠77dd40bb-8d3e-4cc3-a6cc-44848b3a1f5c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <code class="code-inline tex2jax_ignore">algorithm='unimodular'</code> requests a matrix with determinant \(1\text{.}\)</p></div>
︡cc49a9a5-4227-41f4-a460-0a58ed42862d︡
︠2ea684f2-a45d-4b6c-a0a3-1ad63c48ece1︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡91047997-b3b1-4177-ae71-19cef0b39a07︡
︠ba8ce057-81b3-42cb-a9b3-bcc7bc86f10f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The columns of <code class="code-inline tex2jax_ignore">A</code> become the “user basis” of a vector space.</p></div>
︡9c92882d-faeb-4e07-aaa2-e5fada661672︡
︠61e03786-4803-43f4-abaf-e84d317a880f︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡a7097400-a58b-49bb-ae75-d5e1213abb2c︡
︠bd3c7b07-bbd3-466f-a146-71b53d66722a︠
u = random_vector(QQ, n)
u
︡ee81afdb-7864-4bca-abef-160db4b2b34d︡
︠e3b65662-1da7-4264-ac23-c49d151d7c0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <code class="code-inline tex2jax_ignore">.coordinate_vector()</code> method of the vector space.</p></div>
︡aff565cc-7da2-45c8-aa9a-d5e620b3d30e︡
︠faef044c-1c9b-4ee8-a781-2661d919dfcd︠
c = V.coordinate_vector(u)
c
︡ec7db710-33cd-4ebb-a724-85bf6888157d︡
︠36aa3515-6583-427e-aee1-366e6c7f484c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The inverse linear transformation is also available as the <code class="code-inline tex2jax_ignore">.linear_combination_of_basis()</code> method of the vector space.</p></div>
︡68302764-cd95-40cc-afaa-0e17d74469cb︡
︠6339460b-ad84-4291-af8c-99ab0725b9e8︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡54b9e0fe-bac3-4ffc-a0e5-c7e73fe64a03︡
︠257ef5ff-4aa1-4d90-aaae-f76ee9ed0370︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">And the automated check:</p></div>
︡6a5e9548-492e-4a08-aab3-9ba098a86abe︡
︠a2800255-a9ed-488e-a139-4d4ede776d12︠
u == round_trip
︡bc44c561-a1b9-4f41-ad55-692b8f9f60d8︡
︠2946e1c4-266e-4f52-a128-6918498d9fd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <code class="code-inline tex2jax_ignore">u</code> relative to the basis <code class="code-inline tex2jax_ignore">B</code> is just a (unique) solution to a linear system.</p></div>
︡800c6ed2-309a-4e9f-a1a2-91bba052ee2c︡
︠5ac56244-575e-4148-a152-3f4faef01de3︠
aug = column_matrix(B + [u])
aug.rref()
︡94d5948e-8e5e-4d72-a588-7c8cb3ab3b82︡
︠e26b80f0-e8e3-47bb-a903-280b5bef61bf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The following stanza will always return <code class="code-inline tex2jax_ignore">True</code> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡492a5aa5-b8e9-4c55-a7f6-b2fbd47b4edf︡
︠e190cfa6-45f2-4fb8-a437-beaba7f13400︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡3e2deec9-50e4-43d0-ac24-4e2e9d59f8ef︡
︠91ebfcab-50c4-45f2-a5c5-903ceda479c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Abstract Vector Spaces">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Abstract Vector Spaces</span>
</h2></section></div>
︡9677264c-1ade-4e2e-a17a-61aae988d01a︡
︠5b0d2247-f61c-440e-a216-c887360beec0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡92b9fdc4-4ca6-49e6-a808-ed1754d50b4c︡
︠cde77e54-2a0c-40ab-a72c-f1a08f555519︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-10">In \(P_3\text{,}\) the vector space of polynomials with degree at most \(3\text{,}\) find the vector representation of \(p = x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\) relative to the basis for \(P_3\text{:}\)</p>
\begin{align*}
B = \{&amp;
5x^{3} + 2x^{2} + x + 1,\,
-8x^{3} - 3x^{2} - x - 2,\\
&amp; 7x^{3} + 4x^{2} + x + 2,\,
-7x^{3} + 3x^{2} + x - 2\}\text{.}
\end{align*}
<p id="p-11">Hint:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\text{.}\)</p></article></div>
︡2d714ff9-3234-4f4e-aab1-7b21ca110671︡
︠09e7a36a-dac1-4ec5-ad71-eec109b1ab72︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡d7bcf5f6-0d0d-4ef9-a4c0-5be2cfb70637︡
︠80f4cfac-5a95-4784-a0c1-02cf49e01f74︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12"><code class="code-inline tex2jax_ignore">B</code> is a basis, since <code class="code-inline tex2jax_ignore">A</code> is nonsingular.</p></div>
︡7056425e-fb98-4001-a51d-620325c15d0d︡
︠17e7e294-18fb-410c-a35d-1b01e26b4c84︠
A.is_singular()
︡99c81bba-0c3f-4850-a485-2a13b051bad3︡
︠e7db0f6b-a68d-4603-a65c-c76ea2f03aa1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Now coordinatize <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡e99c49bb-452c-438d-a7f2-3c9aa4ca5040︡
︠13ab0f4b-a91d-4545-a2b5-5f1fac37797b︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡a9f44f49-bf2c-4c81-a1bd-70d9f763fdd6︡
︠9808d581-e301-40ca-a1e6-e67bf735b239︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We'll get a coordinatization old-style.</p></div>
︡9c194efd-fd10-4f1d-aa2b-1128d1017b3a︡
︠4d657b46-934a-434b-a0ee-cf0e8d08e842︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡2909f753-de61-48a5-a4b4-28427d076f0a︡
︠2342c392-660d-4898-aed3-20c73344ba3b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Let's check to see if this is right and we can recover <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡55ea7ad1-c48d-4207-aaf4-e25a99ded890︡
︠4f629ed6-fab7-47d7-ae77-3699022e1f7a︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡0b96d24b-9454-4bd2-a3ca-af03816bf7a7︡
︠44dd1c1b-7a6b-4dcc-addd-db849ce0c39c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ce1ab27c-ef74-4a50-a62d-409d4393366c︡

