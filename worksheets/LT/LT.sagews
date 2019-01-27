︠69cab6eb-5d97-48bf-a235-abc86b0df5f6︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡c5f90afe-55be-4d4a-ac6e-219e90aadafd︡
︠1c3053a5-20be-4f82-a958-87a16421e0ce︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡dda0d048-6681-448a-a620-fa7abefefdeb︡
︠bb86c670-ed67-4fbf-aa21-a2c2c81b6094︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c505ccc3-da14-421f-a2c2-4640918adeb6︡
︠1327433c-31d6-4b6d-a726-0e57d392b9c8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡3eb55f89-cba9-4260-afe3-5f2b6fe0299f︡
︠1ced24da-d967-438e-a47c-7cb972962bfc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡b199ebdb-5a5b-4294-a0db-d589e0b86d45︡
︠af7385e5-1307-4f20-a33d-f037a175ad3e︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section LT</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡3dda060e-b22c-491f-aa53-843bbdc33716︡
︠5433f490-2535-41d7-a17c-4f18ac5709e1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡f4637680-7b6a-4077-a78e-4de5582b024e︡
︠443a8a00-b7c1-42c9-a942-89f6e4f10f34︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡e79121c3-27ae-49cb-a260-4e935784984c︡
︠d2464780-ab85-4a11-a538-686fcc7500d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Creation via Symbolic Functions</span>
</h2></section></div>
︡db721b9a-c354-48f6-aa5a-2b29af524622︡
︠bfd31ffb-9bef-407e-a614-14f3ea34d7bf︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Start with a symbolic function.</p></div>
︡96f6a169-cf5b-4e52-adc4-1d9117c4b9b6︡
︠95d9c8b2-1727-430c-a6e9-af6318bec778︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡e1ebab45-d6df-4d10-a97e-32ea6021ef86︡
︠86772226-8fc6-4f97-a03f-f61d07d38c31︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Then specify the domain and codomain.  We need to be careful about how <code class="code-inline tex2jax_ignore">T</code> prints, Sage likes rows.</p></div>
︡2b7a2ad4-054d-4c37-a44b-331402ce64b9︡
︠6d5d8785-c8a0-4674-aeb9-9eca3ddfc347︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡da528d90-269d-47f4-acdf-56d111ef0a34︡
︠20e7264c-662f-43af-a76d-7b44c65b5658︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">At a most basic level, <code class="code-inline tex2jax_ignore">T</code> behaves as a function.</p></div>
︡b799fb03-87aa-47d4-a75b-4c6812e7d4e3︡
︠c9b53a13-d9b7-4435-a9ab-4f7a89d71abf︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡e889eb3f-f19a-49dd-ae78-ac727fb46cf2︡
︠bda468fa-7eb1-495f-a736-fe370a7bee8d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡04ba8228-ca78-4c0d-ab81-28f5fff7bd53︡
︠b5860093-96e0-4ea1-ac59-e71ec0ec899d︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡d535c465-70b6-40a0-a166-a5eb4bc274c1︡
︠2966f2a6-8263-487d-a984-f3aefe9c011c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Creation via Matrices</span>
</h2></section></div>
︡2469a6b4-d364-47eb-a584-978367204215︡
︠f496d3d9-8adf-4e4e-aa96-f3e774f943c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <code class="code-inline tex2jax_ignore">side='right'</code> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡9ca32770-0fad-4e92-ad4b-33e1b56afaeb︡
︠077aaa21-a215-400f-a2d4-e17d2339d23b︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡d435fe01-0b41-4151-a07f-560d3306cd80︡
︠965dc4bd-6b8a-4d9f-afa7-efefc13c80a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <code class="code-inline tex2jax_ignore">S</code> is not new, it is exactly the linear transformation <code class="code-inline tex2jax_ignore">T</code> above.</p></div>
︡047614ad-1099-4b63-ab5e-34d13a377b72︡
︠c864e889-6aaf-4455-a81b-64f463e9a642︠
S == T
︡81af588e-2e9c-4ed2-a453-fb8ffe2e7d4b︡
︠fdcad235-153a-4117-a46d-759f49d7745c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Again, notice how <code class="code-inline tex2jax_ignore">S</code> prints — the matrix representation is the transpose of what we like to use.  This does not <em class="emphasis">change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡05adf703-c180-4ba2-a3e8-06ea5233aa80︡
︠79516587-9582-464c-a87b-081e2715ac03︠
A, S
︡c8c29382-a282-44e7-a16f-c77e6a580041︡
︠3190433d-5d0d-404b-a752-62ae00968a7d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Creation via Values on a Basis</span>
</h2></section></div>
︡bbf4b47e-2dc2-4bc7-a73c-9af38f416dbd︡
︠b78bb403-221f-45cb-ad3e-ad8911952f3e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡de5691aa-5dc7-4c23-a707-6a5f360dc3df︡
︠2ae7079b-1f8e-4651-aac1-13c620d2d96a︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡985706fa-119a-40ff-a2ab-4be021103faa︡
︠932fb25b-c7c6-41d6-a0f0-c4ca5fb6ff59︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">That's right — same function again.</p></div>
︡9fdcf8f4-3cb0-42de-a9de-99264750e403︡
︠e93b6245-7812-4840-a7dd-5777dbf3bd7b︠
R == T
︡16541b66-1de3-4077-a0e5-e3d5bb1aec86︡
︠89cdde94-5b23-4e3a-a649-c2d98859335b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">We can check how this construction works.</p></div>
︡ae47c265-6b18-4efc-a960-3220ba913c49︡
︠8f7c63fd-958a-4e7a-aa10-b42d5e8efcb4︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡533d0a0f-7a50-4447-aff8-fac182f00fcc︡
︠32f7f010-09a5-49fa-a0e9-9d46fc8fd9e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡52b49b5b-b545-4be5-a5f4-f814f1070d0f︡
︠7513abef-695a-4f09-a568-950b9fca7d87︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡cfde3891-80bd-4bad-a403-c99c43c1d3e6︡
︠bb59a814-a945-46f0-a440-80a2df5a03ef︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡99bf3584-92ee-485e-a892-92344039b3c9︡
︠362e554e-ae18-4c9d-ab27-dc910d137d74︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡6ab990fd-f9b0-428a-a03c-718128f4b713︡
︠b7d60770-5790-47c9-a1cc-e4d65ff53bc4︠
R(u3), L(u3)
︡e7cced36-d8d6-4943-a26f-f43ca8cadf5a︡
︠431100e3-6bc4-4269-a59f-48384e119f0e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">This code should consistently return <code class="code-inline tex2jax_ignore">False</code>.</p></div>
︡952b62b5-6202-4739-a092-fea36f270b61︡
︠907bbde7-34a4-4717-a010-21ed45c7cc23︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡ec458f36-76a1-4a13-a214-24511a6e13b4︡
︠790ce8c2-e389-453a-a85c-d81293d01f4c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Basic Properties</span>
</h2></section></div>
︡3c5384c4-6a8f-44d2-ae57-b3fd5903a12e︡
︠e5b39385-8e00-4d4d-af33-7e67bc0c0ad2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Illustrations with <code class="code-inline tex2jax_ignore">T</code>.</p></div>
︡9b84f188-6067-414b-af4e-3cda397367e3︡
︠a8f2df35-7a6e-4283-ad78-ca4a574cba39︠
T.domain()
︡ed2d0fd4-55fc-4314-a7fc-fb635baa864b︡
︠02920a1d-e72d-436e-a7dd-3c9aff6a9e0d︠
T.codomain()
︡a00430e5-dcc0-4af6-a974-7b00600cbabb︡
︠86c8b089-5661-4711-aea8-213329336ed2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">A defining property, so always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡a587d376-dcd4-4e45-af20-742b845b7ca4︡
︠e5a7d7b4-d91a-4dff-a3f1-37652ea8a245︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡73a1b896-d6fe-41de-a10e-2459a7840265︡
︠8d82f3b8-a8fa-4717-a528-35c9e607b1a2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">A defining property, so also always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡620f5f30-7d87-48f8-af5a-89f42eb3574f︡
︠9b29a78e-70cf-474f-af44-acda1f8c2e47︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡ed206d8f-cff8-4f7d-ae71-31d0be04b33f︡
︠b2cd33bb-28b2-40a9-ad91-ed2ceeae3527︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡5d91bc57-87f3-4a0e-a4d8-5c5893632a95︡
︠1e3b0e75-50d5-4385-a2c3-a200a931d6b7︠
R+S
︡cd6f86d0-c30a-4842-ae6f-10110bb4d8b9︡
︠f7656fc4-f980-4314-a6fa-61a72b3ef06b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡a621c908-e027-4068-a5c8-f29aac5da5e1︡
︠0983a4da-dcbf-44c5-ad12-504fafc0c76b︠
12*T
︡9741be58-9255-4291-a762-9c2ecde8eaf4︡
︠68bb969f-f325-484f-a9c5-c62f5ec36be6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡04fcf939-82da-486f-a70b-dc2fb7e8a538︡
︠b3da0d33-7c64-47ea-a66a-236432c1a66e︠
P = R + L
P
︡f22cc2a0-51cb-453a-a0a0-ac31173d9e3f︡
︠c32e0e1a-f6bb-421f-ac19-cc50e7824108︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-21">As we can see…</p></div>
︡1db3cc2d-6132-4d63-ac25-6f2c00383793︡
︠fa1bdd7f-ae1e-40e4-a4b6-a16cd6d0e088︠
Q = L + R
Q.is_equal_function(P)
︡4825403b-0da1-4ba0-a0fb-79cd6a34b243︡
︠a9cdf0d2-bef6-40b0-a0c0-b3a801245d69︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em class="emphasis">same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡113de2dc-49a4-4fb0-a0bc-17fbffc242fa︡
︠c1bfea1c-6661-4a6c-aa67-68e63e600a3f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡5f10e0a0-d163-4209-afb0-62858c3fd390︡
︠3ff4fd5a-e2c4-45f5-afe0-f428ab4da214︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-23">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡2532a30f-ee1b-427a-a768-86dbf7645167︡
︠28b3e70a-bd5d-417f-a19b-3d28db956642︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d7a8a80a-3c78-499f-a9b9-4f767421a98f︡

