︠37645508-3279-4a3b-afad-52abd63daa48︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0806c6cd-e0f6-4999-a593-3e6da44d2f77︡
︠78f8fceb-9db8-4352-adbb-1e98c3c01e09︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡5815011e-dac8-43fe-a5da-1e9a65e26f17︡
︠87facfbd-e88a-41ca-a027-b354ecadf1c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡8587047c-255b-4067-ab79-22d87b518435︡
︠f3c0594a-2ddc-4db6-adf4-009f65f0a577︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="VR"></section></div>
︡07bc706b-b999-4574-ac54-064a5b05bab3︡
︠2cad81df-d986-42ee-a7a3-bb9f5fa55500︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡82c3f54d-517e-48ac-a717-bc25c856eace︡
︠b51881ed-e3f6-4180-aef1-5ae8fa051efe︠
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
︡da4e3cf1-ae49-4461-a540-79b52b030210︡
︠1fb5ee2d-fcc4-451a-a66e-7d833af4df6f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Vector Representations"><h1 class="heading hide-type" alt="Section 1 Vector Representations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Vector Representations</span>
</h1></header></section></div>
︡07fbddaf-bab7-4e09-a97f-8fd021b1591c︡
︠8137d047-0f2b-471c-a0a3-023e35fe7579︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">It is easy to form vector representations of vectors in \(\mathbb{C}^n\text{.}\)</p></div>
︡10a5886d-06d2-4243-ae5e-261544a4329b︡
︠bbc604f7-1fde-42f3-a5e9-30f453907c31︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We get a nonstandard basis quickly from the columns of a nonsingular matrix.  The keyword <tt class="code-inline tex2jax_ignore">algorithm='unimodular'</tt> requests a matrix with determinant \(1\text{.}\)</p></div>
︡8ec45d84-4a31-4951-acb0-5f05358d60a9︡
︠127d7daf-1fa5-413a-a206-2653b9946f40︠
n = 6
A = random_matrix(QQ, n, algorithm='unimodular', upper_bound=9)
A
︡85303ade-afd4-44e8-af19-54fa7b30fa03︡
︠b99e9d97-c379-48b8-a0aa-90f9b74f8398︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">The columns of <tt class="code-inline tex2jax_ignore">A</tt> become the “user basis” of a vector space.</p></div>
︡74103bec-2a09-4485-ad80-7207bbe0a634︡
︠ea80bcb9-9e49-4881-ad5a-ddce4892848c︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V
︡877172d2-c600-4f99-a16f-b4c8211c3a0c︡
︠694dab07-ecef-4de8-a60f-5b4246363704︠
u = random_vector(QQ, n)
u
︡46d84744-f30d-43ec-ab4c-b98fbd6f3964︡
︠daba3f27-31b4-4fe2-aca7-85114deac242︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <tt class="code-inline tex2jax_ignore">.coordinate_vector()</tt> method of the vector space.</p></div>
︡61d1c11e-95f4-4af2-adbc-442557241e66︡
︠1d8ff400-3963-4d02-a0dd-c22f7769b782︠
c = V.coordinate_vector(u)
c
︡eaf69eb9-fe26-4106-a404-2d64cdb277a0︡
︠98a8f37a-c68f-4caf-a3e0-80de49c0b375︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The inverse linear transformation is also available as the <tt class="code-inline tex2jax_ignore">.linear_combination_of_basis()</tt> method of the vector space.</p></div>
︡30ed9d10-7d70-4d4a-ad79-d09aee3affe6︡
︠52730011-08f8-48cc-a3a4-c7461345d34c︠
round_trip = V.linear_combination_of_basis(c)
round_trip
︡aaf1df1e-1270-4a0d-a637-b0ef602a50ea︡
︠d85ca3bb-1ce9-4d89-aafd-2bd1a31de7ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">And the automated check:</p></div>
︡2c578fa4-bc09-46e2-af91-dbcbc7ee5d64︡
︠a900180c-cb9d-45fb-a7f4-9c068de6c442︠
u == round_trip
︡8fc9fd20-afc3-4d12-a992-d3fe97b8e7c2︡
︠a517e141-1e0e-42df-a569-74c636deeb6b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <tt class="code-inline tex2jax_ignore">u</tt> relative to the basis <tt class="code-inline tex2jax_ignore">B</tt> is just a (unique) solution to a linear system.</p></div>
︡d10f8f1d-03c1-41ee-a135-aaa71ddecb92︡
︠77477c68-a7b6-48d5-a7e8-d837f44d309c︠
aug = column_matrix(B + [u])
aug.rref()
︡30477b4e-4e50-45ed-aa6b-3347b4cf2f0b︡
︠b4b0c3b0-10f7-4056-adfc-930eab36b55c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">The following stanza will always return <tt class="code-inline tex2jax_ignore">True</tt> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p></div>
︡010c1dfd-e1dd-48d2-afb2-b55c3f7762cb︡
︠edcf9ec9-caa9-4837-ab23-de82ac213840︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w
︡43e127ff-1bab-452e-add0-0be9e851a99e︡
︠ae18f40e-31ad-4cf0-abce-bdaa683c9d63︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Abstract Vector Spaces"><h1 class="heading hide-type" alt="Section 2 Abstract Vector Spaces">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Abstract Vector Spaces</span>
</h1></header></section></div>
︡b01d9019-f5b9-4379-a336-2e4c9a5c7f9d︡
︠35e52764-159c-4fd4-a917-03640ff6b665︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p></div>
︡49a2fda5-2bbc-48b9-ac5a-45daaeaa451b︡
︠b5468343-96e4-4270-ab35-58b3252df720︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-10">In \(P_3\text{,}\) the vector space of polynomials with degree at most \(3\text{,}\) find the vector representation of \(p = \left(x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\right)\) relative to the basis for \(P_3\text{:}\)
\begin{align*}
B = \{&amp;
5x^{3} + 2x^{2} + x + 1,\,
-8x^{3} - 3x^{2} - x - 2,\\
&amp; 7x^{3} + 4x^{2} + x + 2,\,
-7x^{3} + 3x^{2} + x - 2\}\text{.}
\end{align*}
</p>
<p id="p-11">Hint:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\text{.}\)</p></article></div>
︡2e674fa8-24f0-4917-a9db-e33966f83ff6︡
︠f1468953-2781-4813-a0a0-c93f3a623912︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B
︡01458ded-1159-42db-a6e6-6afa935068a7︡
︠aa9ff1de-fef4-4821-a38f-afa9a3df437e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12"><tt class="code-inline tex2jax_ignore">B</tt> is a basis, since <tt class="code-inline tex2jax_ignore">A</tt> is nonsingular.</p></div>
︡b285286f-75e7-4a79-acb2-c526fdaccef4︡
︠cb7509d7-95d7-4c7f-a63a-8ffb5e80b5eb︠
A.is_singular()
︡9a60f6ad-e32b-4bf2-aa56-4d639c21cd6a︡
︠8f5f056a-24e5-4fa4-a249-997fd0cf28d8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Now coordinatize <tt class="code-inline tex2jax_ignore">p</tt>.</p></div>
︡368859dc-4002-460d-aa31-4cacc7d87f04︡
︠83b1c1a9-df9e-42ff-afa3-0f0bcc395a96︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p
︡f1ab36cd-fac9-49e9-a8d4-be4b908d9d73︡
︠375e284f-6493-4e21-a7bf-c7e0380b5a9d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We'll get a coordinatization old-style.</p></div>
︡dd53b7bf-6130-4512-a79d-654557d6330c︡
︠0ea615dd-54f9-444a-a7b4-52aa70156587︠
aug = column_matrix(B + [p])
r = aug.rref()
r
︡295cf72d-4724-4078-abe4-f469ee90305c︡
︠776d4656-3ad6-4edd-a78c-b8012efce3c4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Let's check to see if this is right and we can recover <tt class="code-inline tex2jax_ignore">p</tt>.</p></div>
︡f4c510c6-7f05-46e3-a35c-014026f23d5f︡
︠243ea5f6-b76c-4ccb-af01-b02f15607aec︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p
︡901dfb3e-1f58-4b25-a715-8c6ac7f377d5︡
︠5bbd3b1a-740d-4f13-a7cb-1ede759c6219︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡765338f5-37a4-4495-a801-3201086a4dc5︡

