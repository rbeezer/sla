︠c755ef23-fe4a-48d5-afab-c92c48f1b785︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡45d9ab8c-e8b2-4230-a83a-3f46c9fbaa23︡
︠068df288-e609-493d-a9b1-4f085d159cfc︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f027d296-b8dc-4260-a0fb-14a2c0fe59b5︡
︠5a5823bb-a747-437d-a37d-f81aaebad048︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡693c250d-1a46-418d-afc4-ccce67d22b36︡
︠09dc2f77-8ffd-4e6f-a695-b71513bd46e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡af28b473-cf2c-4d13-ad8c-334485743ca1︡
︠5507dcc5-f952-4524-a80c-53f988f0c2c7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡31c39af5-ffe5-4248-a6d8-22c2c4ab47d0︡
︠e02b4b63-063f-4b54-a3c1-ce381fcba138︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section LT</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡1184dcf4-00a4-405a-a496-5559e68b23c5︡
︠bd742501-9113-4619-a063-6b9b471d240e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡9cc10e61-0f32-4394-ad9a-0f59ba0d7318︡
︠2a4ec5d2-6d2a-4f63-a43d-e4c4d8ee5526︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡d4113d70-0de3-48e9-ab2d-81155fd3d38f︡
︠964b779f-8ad6-4d55-a708-5996fe5d130a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Creation via Symbolic Functions</span>
</h6></section></div>
︡3a0768ef-7694-4d79-a2ea-b344a3200431︡
︠e6cfe27c-1e3b-4312-ad41-8f5c3ff6f0a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Start with a symbolic function.</p></div>
︡299e870f-41e8-4d2a-affe-18e642548543︡
︠87c255a5-5f73-4746-a246-05efb210796c︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡ce3918eb-d3a4-4729-ad4d-45224e56fcf5︡
︠9c3c6544-028b-47fd-a0d2-d2804cea3d73︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Then specify the domain and codomain.  We need to be careful about how <code class="code-inline tex2jax_ignore">T</code> prints, Sage likes rows.</p></div>
︡20f6d6b2-ac43-47b2-a5c0-7a2fa7c91f69︡
︠29a2078c-939e-460a-a956-9d0cdb3a459b︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡fc59f618-3bbc-492c-a3b2-a50a1d657bb1︡
︠7bdc5d36-5610-42b2-afee-193135fab657︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">At a most basic level, <code class="code-inline tex2jax_ignore">T</code> behaves as a function.</p></div>
︡7c25972c-d83f-485a-ab59-a62d86370ee6︡
︠5528bcfd-9d6c-4cf2-a7b7-15e33696ea5c︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡0b233d03-b901-46d0-a85b-060e9353a4ef︡
︠0fa22e02-1bc2-4c20-adb5-9bb9a5d09748︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡75728a08-d249-451c-a5e7-a7361ecfe573︡
︠ee851102-9d4e-479f-a3fe-b95f07dc6b2d︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡f0c76d86-f244-40be-a0fd-eb74a7b74236︡
︠027cada3-3a67-4f73-ad72-b6d3a8b6ff93︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Creation via Matrices</span>
</h6></section></div>
︡596c50a0-3eaa-4691-a979-c3fa79220219︡
︠672c48ce-80c3-4a2d-acc5-589430e52e84︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <code class="code-inline tex2jax_ignore">side='right'</code> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡7ecaa037-fc7c-4f2f-adeb-234c87c6df55︡
︠4d307e1a-506c-4d6f-ac3e-761c2a3f00f5︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡53394a75-5c6b-4932-a906-77c94f37f48e︡
︠ae2d767f-cdb2-4956-abe6-16eef2e2ad72︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <code class="code-inline tex2jax_ignore">S</code> is not new, it is exactly the linear transformation <code class="code-inline tex2jax_ignore">T</code> above.</p></div>
︡c10ee856-7243-45d9-ab87-2ae08d360e47︡
︠1082f7a5-e272-45cf-ae88-6a24bb2f22d6︠
S == T
︡9e62069b-b8d2-4a3e-aa27-2914dd00c229︡
︠8c8fe968-4101-43b4-a256-970bcd8de5f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Again, notice how <code class="code-inline tex2jax_ignore">S</code> prints — the matrix representation is the transpose of what we like to use.  This does not <em class="emphasis">change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡f8d78b0e-44f5-4631-ab66-20e2cb058ea8︡
︠f90c1982-7c77-42da-a391-ab18ed3e2cdd︠
A, S
︡4c7598e1-a6e2-4d00-a849-ae5b639a2c7f︡
︠9cc01590-7375-4646-a6da-f795308cab91︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Creation via Values on a Basis</span>
</h6></section></div>
︡b2d73fdc-0507-4b6c-a1c9-cc15155a105b︡
︠20d08006-c0bc-4773-a48f-e5bfbd41761c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡14df5605-cd58-4adf-ad18-cfe8f954bcbd︡
︠9d16c6dc-b9a1-424e-a210-befa6f3c3e9e︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡b2bd9836-5f0f-4023-af54-012fb9ef52ee︡
︠0a1b7a4b-09b0-48b3-abb9-0ba2b6ca52c4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">That's right — same function again.</p></div>
︡0ce285cd-1c6c-4de8-a0a3-aaf5dbb951b1︡
︠6ce4f7ab-4b8b-4759-af64-31e36ce25441︠
R == T
︡6ae4edc9-9141-4cc7-a6ce-af0836419a6e︡
︠cc8b079d-02f5-44b1-ac1d-bcdb512a2b49︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">We can check how this construction works.</p></div>
︡9152c6a6-3b82-40de-a290-04cdf1e2b1e0︡
︠a82faf65-590d-4c1a-aa34-b3871890a429︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡5c17cb62-1bc1-4992-a445-8f916aafa54d︡
︠eaaf17b8-9c46-4ddf-af24-5a3fca96a4be︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡199b8a23-3cf7-43d5-a3d8-723a1f4b5e01︡
︠d2b6e311-75e7-4c14-a251-ac4d76cc22b2︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡485ff331-4a62-4224-a759-8f5ddd4a96d4︡
︠91de0c24-d6e3-4916-ad8c-61cce9924291︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡73341413-8fa7-4338-a900-671230cd300c︡
︠2705c19d-51cf-4803-a1a4-10b32f3fd70d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡42547251-fb3c-4bbc-aec6-3e7e1ae59bc9︡
︠90bf531b-5068-4d24-aa01-14f831217cd4︠
R(u3), L(u3)
︡56516a57-5a8c-435e-a70f-8138a6ad8295︡
︠6ecb0255-9bf1-4727-a5a8-43a7c4e6269b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">This code should consistently return <code class="code-inline tex2jax_ignore">False</code>.</p></div>
︡cfa9aab0-f5bf-4731-af8c-7df25b6328ab︡
︠46bef68b-6812-4796-a98e-50c521095320︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡f67a561e-2764-4aed-a076-fd7c29d33375︡
︠36ca1212-04a7-4955-a66c-d6942bd0f136︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Basic Properties</span>
</h6></section></div>
︡67c32e54-159b-4d21-a287-e5d8a0470394︡
︠9fc63e58-36ec-42be-a3d7-bcd94799f9c8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Illustrations with <code class="code-inline tex2jax_ignore">T</code>.</p></div>
︡e68acb91-4c83-49ae-a7ec-f99d3e4c7463︡
︠d4a5f618-8651-49eb-a869-453e26c733c9︠
T.domain()
︡79e1fd81-607b-420a-ad90-7e6bc91814bd︡
︠e36d46bc-71df-4df0-a7c9-747ef371c868︠
T.codomain()
︡54bc1f3c-cae9-49b8-aa25-3aab99f0ab81︡
︠4e5fb7fe-4b93-443e-add1-20ccc56b616f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">A defining property, so always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡2bd8a909-7450-4894-a671-89256ead90e0︡
︠01bd9679-0ee5-4f6f-a3d6-5507a6653f62︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡063c4c2c-63a5-48ab-a8e9-e4efc952f926︡
︠c2dff1c1-d358-48d3-a362-c56b425a5547︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">A defining property, so also always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡b09809ac-b800-418e-a4c4-799e4d0a75fb︡
︠dbc73c0e-9b69-4b71-aacd-e3781b526d75︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡9515c42c-2b78-4530-a7dc-5bfc407a2e7a︡
︠41f57b99-8c5f-45a3-a520-17c1302ba592︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡fd4f2bbc-538a-43e5-a637-75e37249dfe6︡
︠2e46e619-26db-4109-a77d-ff3e2a074d63︠
R+S
︡4818fff0-9276-4e87-a80f-5fe9d14d88bf︡
︠bf8d87c8-86bf-4c98-a418-377214352bed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡b9d375a3-e2a9-4262-aab4-3fca1df42100︡
︠ebace129-50cf-49f6-ac91-1d0d71a76d96︠
12*T
︡d7174096-9e66-4d05-a3df-5ec6b476be34︡
︠41c59062-700d-46ed-ac2a-b798d5c5b83f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡d81aeab4-d24e-40bc-ae7e-8362c379931d︡
︠3f54a3f5-7c7c-4a87-a76e-5f2b1ef979c9︠
P = R + L
P
︡609b43e4-9601-42b9-a92f-88eb3f9381c5︡
︠b255ea9d-f240-436b-ac0d-b96a49aed20a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-21">As we can see…</p></div>
︡8cde1b9a-98dd-4803-a4d4-19d7311dff00︡
︠99c67d20-8b95-4816-ac63-07ddf0f1ef1e︠
Q = L + R
Q.is_equal_function(P)
︡fa7b1f93-f1e9-477b-ae31-149e19f0adfb︡
︠be63a723-b24a-4bc1-a7a5-8c91baaab58b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em class="emphasis">same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡14a87409-8bcc-4579-a7e4-c7058b036c9f︡
︠8b323a73-4ff0-4c48-a6c7-a8eae76eada4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡c2ff52ad-6ed5-4f9a-a7f6-f9ed4c4bbf86︡
︠34824e5e-bbd8-40d2-aa52-04cf10c5b744︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-23">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡d886ad5f-c0a9-49b7-ac6c-f60b62c287ac︡
︠490762c6-0e05-441e-a10b-5d72bea90c43︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡38d4037d-97b9-4dfb-ab1b-778e94d4ed13︡

