︠57f1c428-aa8f-4fde-af51-7a35bd111f9b︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡cf2b0f03-7ae0-49dd-a8c3-93ed99babca5︡
︠864a2593-91d7-4274-af01-3a518eb39604︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡c8b12d6c-00ee-4706-ac07-d3135921cb7c︡
︠f45a578c-49c2-4743-ae14-5f762d04ecf6︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡9fae9062-daba-4d2e-a110-56fdd1bd6996︡
︠40d8ea77-9737-4c7d-a9cd-5a949197f8b9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡b099883f-fc73-444b-a1e8-e3288c91499f︡
︠24fcd850-85d0-4914-a433-d27fafc300da︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡00e0cc81-d07b-400c-a540-822f2cfe00fe︡
︠afe9fa67-c383-4f93-acf8-c8ae8cb7bb7a︠
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
<div class="date">Fall 2019</div>
</div>
︡9298b932-1f69-4353-a712-0dbbc387a332︡
︠ed475018-3289-4cce-af40-24ed0a181bc4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡ea122733-f657-4024-ae18-f4cd2c7359f1︡
︠ddbf0e64-16a7-4ea9-a29b-a806523d6865︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡a436434a-7612-4dfd-a717-2b0226563bea︡
︠19e4f283-d09e-437d-a0ee-80a83ce82241︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Creation via Symbolic Functions</span>
</h6></section></div>
︡c5aaa9d3-da37-486e-a67c-5fcf8fc68f9c︡
︠052b0d5d-0283-490a-a771-4c00c908f979︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Start with a symbolic function.</p></div>
︡58f83f58-d5b5-4956-a3cd-40a516e2eec6︡
︠72e6a26f-a356-48eb-af18-d587bad9dc79︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡3fb1564b-6ffb-4589-a07b-8411ccca597d︡
︠3acfc250-dbfd-4645-a05d-ce2dfeac8f6f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Then specify the domain and codomain.  We need to be careful about how <code class="code-inline tex2jax_ignore">T</code> prints, Sage likes rows.</p></div>
︡d9a996be-69a6-460a-ac10-9debbe95a250︡
︠22acc338-292c-409d-ab5f-bed9a884e263︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡396e5328-b52d-4136-afec-e9bb354b93e0︡
︠729d0f13-8c8b-4aae-a19c-d86849d956c4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">At a most basic level, <code class="code-inline tex2jax_ignore">T</code> behaves as a function.</p></div>
︡73601702-a8f3-439d-a2a7-e7f5f3fdc549︡
︠9bdfce7c-1140-4589-a2a4-99b9fbce893d︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡3d80d4f4-1065-41be-abd9-f73b027d1074︡
︠da25bfaa-3bb9-41c4-af72-979c3aea7fae︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡4896e459-e949-4266-a76d-9f52b8ca24ad︡
︠2e6c540a-de42-4868-aede-c7e1a9974cbe︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡aec0a25a-d291-4517-ad05-cccae748e859︡
︠6f730155-c285-44d7-acb8-175e2356b4f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">2</span> <span class="title">Creation via Matrices</span>
</h6></section></div>
︡d505916f-7320-496e-a02a-841d3419adda︡
︠ea0ff906-989b-4821-a734-1c83ab7b4282︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <code class="code-inline tex2jax_ignore">side='right'</code> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡c7cc6c67-2ffc-4b8f-acf3-10f9395b5add︡
︠ca596b5d-28c2-457a-a449-76a70e059507︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡3d18784c-5652-49aa-a3ff-d758e56eb04c︡
︠78981015-d7c2-495d-a49c-3638e1e50955︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <code class="code-inline tex2jax_ignore">S</code> is not new, it is exactly the linear transformation <code class="code-inline tex2jax_ignore">T</code> above.</p></div>
︡5ddf6e07-4de0-4086-aecf-af5e8406a10f︡
︠66d46336-a749-4851-ae3d-dec3d58db2fc︠
S == T
︡262fa82d-fd53-46d8-a7bc-48a1c7645274︡
︠e9a194ac-2997-4d05-a570-1c9cd534a861︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Again, notice how <code class="code-inline tex2jax_ignore">S</code> prints — the matrix representation is the transpose of what we like to use.  This does not <em class="emphasis">change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡c5b765b0-1eab-467b-abd2-bff5bdbe1578︡
︠73e3b487-5a5f-45b6-a073-33328e03d194︠
A, S
︡a18853dd-a280-42db-a9e3-d1604fe43b6d︡
︠00e893b7-16aa-46c7-a265-537c3cb20ee6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">3</span> <span class="title">Creation via Values on a Basis</span>
</h6></section></div>
︡ce7a71e3-8092-4aff-a225-87903ccffced︡
︠3acb53d3-6540-48ff-a811-ea97ad46c33a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡164d291f-d752-48d1-a763-94d2b70fec31︡
︠748b2a53-93be-453c-a7b2-a47873f72e46︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡fba87c2d-fb0a-4a6e-a6d9-97d1f54fd7e1︡
︠dec76438-1341-4ef8-ac65-5fd31d95d6cb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">That's right — same function again.</p></div>
︡7a941f85-899c-4b7b-a341-9a16e33780d5︡
︠c4f58150-6da0-4957-a58c-716984ccb5d8︠
R == T
︡a9dae5b3-6200-42a5-a90e-670c181d5d22︡
︠6db37a92-e04f-4069-a60a-562533e51334︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">We can check how this construction works.</p></div>
︡5911d8b6-b960-4876-a2e7-c3ef922883bb︡
︠7149212e-8d7f-4d07-a435-cf8ae2d1a556︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡0d756a78-8060-4f41-a694-b544037d4139︡
︠747f9d91-621d-4301-a57b-930e701ee501︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡f7567f41-0b42-4883-aada-57d6556645c5︡
︠7bdd24d7-5e29-40a1-a35f-ea6c0b1716de︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡b4a82ccf-32d5-4cd0-ae15-df03b0fd8145︡
︠ffa98c65-b979-4f37-a018-6f8624721f35︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡525fcdb2-37ba-40be-a7b0-02f882cf4ef8︡
︠44a94670-9b74-4580-a4fc-50e587757c36︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡48bf2f69-0f47-44a0-a4ff-14009871eed2︡
︠52a02c08-607b-48c6-a815-82a8241a5f83︠
R(u3), L(u3)
︡1d5be78e-0ef8-4a74-a0f5-6770fa414a0d︡
︠d2a3e9b6-7c57-44fe-a80d-d655750c6567︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">This code should consistently return <code class="code-inline tex2jax_ignore">False</code>.</p></div>
︡249d7763-def3-4532-a4c3-1a9700c0d363︡
︠a8736fbd-38c2-4c26-af63-27dcfddbeaf5︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡d9e5d458-281e-4bd0-a2c6-5fe3be089f29︡
︠40235f7b-7a39-48e6-a913-062f9dda67a8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">4</span> <span class="title">Basic Properties</span>
</h6></section></div>
︡0f932f2a-aa4d-43dc-aa6d-d6406ed384a3︡
︠cb26e450-efb3-4df0-aa96-87dc73a57391︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Illustrations with <code class="code-inline tex2jax_ignore">T</code>.</p></div>
︡66d8cbd2-cc27-4ff7-a091-6284e0895fcf︡
︠136ec399-5567-4d66-a460-5d2e21eaa4a7︠
T.domain()
︡4baaa6d3-0396-4a7c-a1c3-2205026fd147︡
︠99234ca1-0a5a-41f2-ae0e-1311814f1116︠
T.codomain()
︡8afbd388-592a-4439-a61a-53e656896ab7︡
︠041fff38-782a-426e-acd0-723598c213cd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">A defining property, so always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡ac1cc1cf-938c-4ea2-ac7f-cf2f5c81e94a︡
︠7f78b3a7-33bb-40a6-a26d-23d5321b3058︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡bc82536f-b937-4431-aa58-88b5df7fab00︡
︠4bdcd203-1bc5-4218-a4be-c378857042b4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">A defining property, so also always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡3f00cd2c-147e-4aaf-a2ea-1be837db72e2︡
︠71271f53-b683-452d-a45c-f78efc5d7c05︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡f762e813-cca4-4ff7-ad4c-a43223f71631︡
︠c39357b7-b736-4c35-a31a-0ce4f18e894c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡b10445b0-c770-4d44-a376-d82cc1d5f6e4︡
︠3953ea99-a611-46f5-ab2d-1063d35b8416︠
R+S
︡850e8e81-827a-44e9-aaab-7ccdf9044895︡
︠f2b003f8-57ad-41eb-aa86-6022e2bf7f80︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡57208247-b9e5-4604-a2bd-81db3cdfb4e3︡
︠54b853a9-a529-4b89-afb4-d36ae96c8207︠
12*T
︡56b0e039-aefc-47a5-a1a0-674c2369ffb0︡
︠60621435-dd3c-4ab7-afc2-f394fc765751︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡7c2df322-800b-4da6-a493-6960e6d5c3c2︡
︠44e62da4-0250-4e2b-a575-9ef0fd6c32f0︠
P = R + L
P
︡4343a605-b180-4273-adda-269168fc42f4︡
︠247772d8-8990-49b7-ad94-7ba1d19ceefd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-21">As we can see…</p></div>
︡212a99c7-240c-45a8-ac71-0fdb0ad97b76︡
︠898a3240-9759-43a3-ab6b-d7aa3a504dbc︠
Q = L + R
Q.is_equal_function(P)
︡446dfaf4-a9b0-42fb-a6b2-189c3d79eb79︡
︠8cee9d99-242d-445d-afb8-1d1b9581e6c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em class="emphasis">same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡052f4ccd-6f18-4d5e-aa5a-2674219b382f︡
︠e35129df-64e7-4cbd-ab52-589ddce671e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡1dc7fe0d-d61c-4ee7-ab9d-ee68b34aabc9︡
︠5e715606-3ed5-4ab3-a27c-06b6e6a214dd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-23">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡e3b551b5-7f44-44f0-a827-52d09c64e79c︡
︠035b2fb8-183c-421f-a130-1860632118aa︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡eae35031-94ad-40de-afe1-00a710a31ccc︡

