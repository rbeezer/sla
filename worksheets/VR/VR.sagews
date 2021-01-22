︠f452e749-9465-4a33-a1ce-eb2c6db10e31︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡036555d9-e6d5-4c78-a094-e70046df8edc︡
︠fef634b0-e97b-4f43-a75c-c34c48327c05︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡803867c2-8ac0-46b4-aa29-6fdbc1304bc4︡
︠1544dbc9-d449-44b5-a958-3c70742b4670︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b850d3b9-c9e1-433d-a8d2-00e806c31098︡
︠74679eaa-8a60-4d7f-afdd-1ae9a38171d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡3469c076-a011-40e8-a0e6-df0b9bf1c63a︡
︠86fffbf7-2a74-4b83-a481-a60b1a60c37f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡d05cf48f-cb94-4f5c-a295-34b4fde5da85︡
︠a55f254b-417e-4564-a29e-7c2312107eb0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section VR</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡456948e9-43ab-4202-a72b-5a88d9aea2d5︡
︠21a8bf1a-86e3-4103-a475-fd085d10cb2a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Vector Representations</span>
</h6></section></div>
︡05bbd7af-135f-477f-aab7-0b513be4bb0e︡
︠5131c187-09a5-481d-a8c8-0d35e60dbc8c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡aeeefbf7-2f1d-45ae-a23b-b39e9859515e︡
︠e0ccec7d-4ad5-473f-a652-106bff35896e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <code class="code-inline tex2jax_ignore">algorithm='unimodular'</code> requests a matrix with determinant \(1\text{.}\)</p></div>
︡85f51e18-b539-4aac-aa02-c133d3208baf︡
︠a2497679-f3e2-4d9c-aa4c-c1e04b36cc16︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡cb91507d-9618-48e2-a586-15705cc92864︡
︠f208359b-3314-4ba2-aefb-411c278e0b77︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">The columns of <code class="code-inline tex2jax_ignore">A</code> become the “user basis” of a vector space.</p></div>
︡f69ffd59-88ca-4c85-af65-bb6c884175ce︡
︠cc55c432-dcaa-4672-ac79-13480c14e89a︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡657bb40f-6eb1-4829-abe0-404884598312︡
︠e8754395-2f3e-40c0-aa7f-bbff37380cc2︠
u = random_vector(QQ, n)
u
︡eab5ff99-4b98-49a4-aa4b-9f68ea0220ef︡
︠3c9e29eb-227c-4b16-afba-a5a1d8beaee9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <code class="code-inline tex2jax_ignore">.coordinate_vector()</code> method of the vector space.</p></div>
︡d257170f-332a-4fdb-a6c7-17cb9a448f37︡
︠80ad7b58-a8bc-43ba-af17-63f3e8d2d610︠
c = V.coordinate_vector(u)
c
︡ea08783d-0e5c-4b88-a58a-cedc1c4fe160︡
︠14a2c2a0-fbe5-489e-a1e6-bb49765c64dc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">The inverse linear transformation is also available as the <code class="code-inline tex2jax_ignore">.linear_combination_of_basis()</code> method of the vector space.</p></div>
︡5f0f1d1c-d18c-4605-a424-ae0f776d3c11︡
︠86096277-e497-41f8-a64a-bf8bef24c60e︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡79482aaa-29eb-400b-a860-22fadda02773︡
︠5fca7f41-97b8-43b8-af3f-f61e0fcb0e27︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">And the automated check:</p></div>
︡186e2dd7-f7ea-4f26-a819-80fae09ab99e︡
︠1a678856-05ee-4fe0-a561-fe2f80f2bbc4︠
u == round_trip
︡adf0589a-f9fd-48fb-a951-a50d49d4c9f8︡
︠ea5daa54-54e5-4265-adfa-fa00749585e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <code class="code-inline tex2jax_ignore">u</code> relative to the basis <code class="code-inline tex2jax_ignore">B</code> is just a (unique) solution to a linear system.</p></div>
︡ec23ade0-2440-4977-ae47-941949dee64d︡
︠f2a26505-529a-4321-aa15-1a934ed2cb80︠
aug = column_matrix(B + [u])
aug.rref()
︡9824a89b-eee7-491a-aacb-0d6a1a8ed5a5︡
︠54e88912-4f12-46a3-a140-c4d3ffe7dbc8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">The following stanza will always return <code class="code-inline tex2jax_ignore">True</code> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡12cfa59c-7db8-4022-a437-40c23b123fef︡
︠7f14fc99-8064-4976-abb9-30af2eb40e4f︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡dbfffec8-759e-4926-afe2-9123151ca2ae︡
︠18a079f4-279b-462e-ac2c-fcd1ff71b135︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Abstract Vector Spaces</span>
</h6></section></div>
︡05da6535-96d3-4236-a008-cf4a149964aa︡
︠abf755d9-b7f8-4a1b-a02c-9ebe9d226971︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡31c39186-b4ea-4c8c-a89e-42d006d393c0︡
︠40203b2c-2d00-48c9-a552-3951a687a1a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-10">In \(P_3\text{,}\) the vector space of polynomials with degree at most \(3\text{,}\) find the vector representation of \(p = x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\) relative to the basis for \(P_3\text{:}\)</p>
<div xmlns:svg="http://www.w3.org/2000/svg" class="displaymath">
\begin{align*}
B = \{&amp;
5x^{3} + 2x^{2} + x + 1,\,
-8x^{3} - 3x^{2} - x - 2,\\
&amp; 7x^{3} + 4x^{2} + x + 2,\,
-7x^{3} + 3x^{2} + x - 2\}\text{.}
\end{align*}
</div>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Hint:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\text{.}\)</p></article></div>
︡2f740a03-7207-4394-ade9-f2353dbc55e0︡
︠d0f45ff5-2683-4ecc-a29b-c9d0e1ead30b︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡4dc32131-7680-4a6c-a696-26ff7e058e99︡
︠ad661885-afb3-4f69-acd3-2fa1e10f78d1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12"><code class="code-inline tex2jax_ignore">B</code> is a basis, since <code class="code-inline tex2jax_ignore">A</code> is nonsingular.</p></div>
︡17f8e016-6b61-4e68-a825-c54662772fff︡
︠017f960b-d663-4859-a0dc-591908c7fe7e︠
A.is_singular()
︡e7066ac6-59cc-4d41-a64e-2a8438cf0bd7︡
︠abfa155e-ca78-465d-a8b2-6ecf208ef9ad︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">Now coordinatize <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡049ffa54-91f1-4a66-a8e1-b507438d176c︡
︠560e609c-52e4-438b-a919-bceb43ec0046︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡c9dd74e0-132f-4868-a309-cb6b7af6607b︡
︠74442c90-da30-4ab6-a2e6-cb227ac60378︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">We'll get a coordinatization old-style.</p></div>
︡fec33e0c-fd72-4d2e-a44d-a18d3070774e︡
︠03cc70b7-ca54-4d26-ac6b-91d2e0251ad5︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡8d95a155-820e-46e0-ada7-94966779d83b︡
︠eb870395-8189-40f8-a1c2-8662cd9467d9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Let's check to see if this is right and we can recover <code class="code-inline tex2jax_ignore">p</code>.</p></div>
︡2b5a35dc-b6e3-40e2-a8ff-b861a3f475b4︡
︠ed038396-05de-49ed-ac6c-c2524f534d8f︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡17d1b654-d5aa-4339-a00f-dc22e6249712︡
︠629444a9-97e3-4227-ab27-b04d33467dd8︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡03b980e3-97b8-4bea-a39d-b5d030376a53︡
︠357ff0fd-395e-411c-ac56-91c71f747efd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡222a22a2-fdc5-4cd7-a8ac-f3dbbea33212︡
︠15175ea1-87b7-48ea-a577-888708ddbfd5︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8fa96f80-107c-480a-a262-aea25bb38726︡

