︠66a1f7b7-3a5e-4a57-a715-4489a9147641︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡6b80d789-fc34-4be9-a36b-8af14aa5e2b2︡
︠32ec3b4b-4388-4836-a16c-de7cfb7905bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡8fe7b12f-d735-40b8-a6de-3ada7c5e6542︡
︠1d104d17-dff0-44fc-ad59-c8493b68acef︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡efc0f1e1-9c18-4c67-a93d-2066992f2cc0︡
︠5f9db234-e85b-41ed-a6fe-04aa7106df90︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡6fffca20-f184-4ca3-a903-8172bf4c52be︡
︠21e11bc4-bb64-403f-a4df-751f8ded93f5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡216038b0-d7c3-4cc6-ab03-b78c61a5e38e︡
︠8a0fb476-45e0-48bd-ae7d-225bfcca1bda︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section LT</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡964a50ed-7325-44a1-a198-fbb46b1353e2︡
︠d8923e21-b95e-4f99-a0a2-99e4e5ff8427︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡7ff022f4-4be9-49e2-a3ed-5864c49c4216︡
︠986998c9-d04b-4aea-ad18-a701cd669a8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡1237bd08-6e8b-4a39-a40b-da2ecfb255cd︡
︠fd035b06-374c-42ef-ac2f-7faad6988ed5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Creation via Symbolic Functions">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Creation via Symbolic Functions</span>
</h2></section></div>
︡cd3c0881-ec93-49b1-a883-8033b0a59347︡
︠805bd546-7320-46bc-a845-bd5e00fb69ea︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Start with a symbolic function.</p></div>
︡07a528b7-e3b1-431c-a091-55fb40c4b2d9︡
︠cd0733fe-bd16-4e58-ab62-dc8c7cc3075e︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡12b29f58-d16f-4755-a01b-2e7baf7728f8︡
︠60a22318-cf93-4e18-a419-f487f367a9f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Then specify the domain and codomain.  We need to be careful about how <code class="code-inline tex2jax_ignore">T</code> prints, Sage likes rows.</p></div>
︡169c9c0a-4cad-4f9f-a8d0-1d5a44dbb75b︡
︠062a3b63-6bf0-49f9-a876-894d49214e8a︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡a90c448b-7f67-4ff7-a97f-0084ecd1e2f6︡
︠c90d641f-09e6-40d6-a76d-66efbdc8eaad︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">At a most basic level, <code class="code-inline tex2jax_ignore">T</code> behaves as a function.</p></div>
︡17714e66-d6fb-4df9-a370-1d70d2d9ab35︡
︠95d061ed-7c47-4716-a15d-16b868b326e6︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡c8b982a7-f244-49c5-a0da-ee197722b49a︡
︠a525ea79-27c6-4b62-a160-c4ede6409052︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡af8c567c-0a4c-41f2-a319-3de2ac9fd3f2︡
︠6a2e775f-4598-41b8-a4e9-d26b508f0520︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡89aa711c-151b-4d36-a675-f4860d78d7df︡
︠7592f041-d56f-4042-a6a9-cae40f277fe5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Creation via Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Creation via Matrices</span>
</h2></section></div>
︡f6a88a9c-c622-4527-a792-16c0acfc37c2︡
︠cb87411d-ee30-4193-a81c-a2273d33a7a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <code class="code-inline tex2jax_ignore">side='right'</code> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡a623d64f-32e7-42f0-a571-2245982dbd56︡
︠3fd52bb7-bf99-46c8-a710-943dac6ca1af︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡8df5320f-9bf2-445f-add0-d6504fdac7b6︡
︠73479799-7246-459c-a469-54fa44a2e6aa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <code class="code-inline tex2jax_ignore">S</code> is not new, it is exactly the linear transformation <code class="code-inline tex2jax_ignore">T</code> above.</p></div>
︡d1e19792-0055-47af-a3f6-d4adff191f0b︡
︠9dd7f6e9-9f9e-4519-a449-a1e4fd3074f8︠
S == T
︡096d053f-ede8-4c3a-a58e-f20d6fba02ff︡
︠bf81c970-86d7-4e9b-a8f3-7e58cc8778a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Again, notice how <code class="code-inline tex2jax_ignore">S</code> prints — the matrix representation is the transpose of what we like to use.  This does not <em class="emphasis">change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡855172be-2340-4b3a-a6c9-a480c4d5b4d5︡
︠a6b07232-1565-4629-a095-93923661b259︠
A, S
︡80f31764-a7a0-4d02-a70b-daf7c3d2494a︡
︠2da21c97-03fa-44da-a65b-225291674a09︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Creation via Values on a Basis">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Creation via Values on a Basis</span>
</h2></section></div>
︡436f57be-fc1e-466c-a1d1-df422d384835︡
︠18877df3-cefe-4d64-a981-b51f83dcc24f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡7570cfdb-2aa2-4879-ac12-dd7edf2abedf︡
︠d5545143-d6d7-495f-a220-4fecebc058f3︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡8c8d1ef5-1dcf-4565-a487-5d7396e664e6︡
︠762044e3-a017-4f6d-a4a6-c0344da23071︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">That's right — same function again.</p></div>
︡6f89fcee-09e1-40d8-ae22-4f37374da8d1︡
︠9412e1fd-f06d-427b-aa5e-d9d01075d1eb︠
R == T
︡3705af69-c6a3-44ca-af60-d39b4bbb18df︡
︠3174713e-bf45-4282-ad89-d6c7112dc45a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">We can check how this construction works.</p></div>
︡39cad4b1-2706-4d3f-af08-8ef56169e3d4︡
︠e0dabbf6-c1ed-48b0-a7a1-030f860e0e2d︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡30e1b9ca-09be-4739-a8b4-9b7ab01cf1b1︡
︠fe1dfc7c-6752-46d6-a051-4fdc98db4cc0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡dceeadb1-929f-44fc-aaf2-c41a1b2e77a3︡
︠88067a32-bd54-4d94-aa43-c17eb8ae6161︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡5e9540f8-3b68-4031-a4d6-798f83722e38︡
︠0879ebae-4d9a-459d-a7eb-e5565dadfcc3︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡5ccc5a80-9cd2-473c-a4aa-f905f62a326f︡
︠6bb281d0-16df-4942-a69d-1962e6800b27︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡b826ba89-baf8-4a9c-acf5-a0e12c8ad860︡
︠f19284d0-d8ad-4046-ad16-2c61d9e63bea︠
R(u3), L(u3)
︡beb4139e-367e-4483-ab55-17189f175524︡
︠fe3a24dc-313a-4072-a327-84fac8ae0033︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">This code should consistently return <code class="code-inline tex2jax_ignore">False</code>.</p></div>
︡4217c4ca-0fc3-49cb-acfe-38233fcddcd0︡
︠f231af56-a656-49f2-a4b2-3fb52e5fc2c9︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡3bc6d663-c092-4732-aa8d-cbd70065f28b︡
︠cb7824e8-7b91-4d04-afac-d77af8a5e987︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type" alt="Section 4 Basic Properties">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Basic Properties</span>
</h2></section></div>
︡542cc41b-d966-4a47-af31-c194b8d6eb06︡
︠25b527a3-27d8-4e8c-a570-74108d953813︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Illustrations with <code class="code-inline tex2jax_ignore">T</code>.</p></div>
︡f49aab14-f4cc-4da5-aa0d-b71d8aa2fea1︡
︠295c4f76-47a0-438b-a92c-6e48bc26f159︠
T.domain()
︡2838477b-db28-4c60-a8f3-4628ed504429︡
︠e511d594-1704-40db-a15b-5917104609b2︠
T.codomain()
︡2974b5a5-accb-40d8-abed-6378a98f098b︡
︠cb440f9a-4361-4e7e-a62d-490c2b5aa533︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">A defining property, so always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡0fe44f4d-9800-4af7-a969-6b36752c0c24︡
︠024f78eb-5746-48e6-af7c-9e7c4f26b23e︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡640a3731-3897-4f16-a51e-1ac9718984cc︡
︠2303e4b1-6e9f-4691-ade2-b0d894a2d27a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">A defining property, so also always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡fadfeb39-c986-49ef-abce-e8eb080badd2︡
︠8cd5cb0f-4d9d-433c-a3e8-1d0f9179c27a︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡5f6243e4-331c-4050-ac8f-5ac59571e346︡
︠d954c97a-ead0-47d6-a7ae-7f83529c3808︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡ed132eda-8c56-4cc4-a24e-1beaf3c80010︡
︠8fea3091-a1d0-489c-acc1-add98dd46d57︠
R+S
︡ee7c9bd2-c849-48c3-a58f-73d4c529a87f︡
︠05e7272f-af8e-480a-ab63-bd6823e4c8d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡8d964ce7-b864-47f4-a2bb-568bfafdfb6c︡
︠0e9a5e63-62cd-463c-ab68-6bfe7f96d923︠
12*T
︡521fd7d3-a457-41cb-ae71-7ec6d456a20d︡
︠65f75cf3-0a76-4182-ad7a-ee9b560bdaed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡8427c74b-a552-4b6b-ae42-9212e69e169f︡
︠31369fee-b930-4bf7-a6eb-98eaad14b2a5︠
P = R + L
P
︡2d763062-f1b3-4263-a9d1-569314028c53︡
︠2809e4a5-6962-4c98-a026-17cbbd0b0985︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-21">As we can see…</p></div>
︡cadc3c1e-1878-4a41-a344-96b5173224bb︡
︠97574935-75df-4d84-afb9-44f0a17d391e︠
Q = L + R
Q.is_equal_function(P)
︡5b6b3a46-0cce-4ca6-a092-ad69e0a5eef0︡
︠d4c4ffe4-5f12-4ddc-a4e6-684c22dd7cb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em class="emphasis">same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡c9a8da7c-edbf-4f8d-acdc-2356079e40a0︡
︠bb08c0ab-1372-4b48-a3dc-1fc766186343︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡40e48b42-666d-4921-a16e-e7ebf421c851︡

