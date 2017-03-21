︠57ab7e5c-914d-4114-aca6-add47f53d057︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡3aee66cb-25c6-43e8-a7a3-d40b98afc8f1︡
︠f3ce124d-d739-4d68-a6e2-9c7981220eb0︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡fb3c94ee-2c55-463c-ae9a-1278cfae1acd︡
︠bc8e9227-0445-4aa8-a682-1948207ce97b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡728f1123-928d-4827-a190-3aa73d7a9641︡
︠17da77c7-d151-402e-a535-6e15fa162b26︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡84e5e5db-cbc1-4cd4-aa38-f971f7b0ddc0︡
︠3542b378-e43b-4609-aabc-3b5ac5285f52︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡0975b283-a77e-42df-ac8a-8b5d6238a880︡
︠a891d546-8fef-4d0d-acd5-751c27f509e8︠
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
︡9913bf8f-50e3-40c4-ad91-3064d9ccfd6e︡
︠5086335b-3bc2-4ece-a3a8-5d8c265f35ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡31ab8dfd-9295-4581-a3bb-c195dbb2bf87︡
︠9c938117-faa8-40f0-a13c-dfd65b20ed06︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡492ddaff-2e9c-479c-a8bf-59f3f4e25cf6︡
︠24f52d01-c206-4e80-aa1c-a65aa5f87557︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Creation via Symbolic Functions"><h1 class="heading hide-type" alt="Section 1 Creation via Symbolic Functions">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Creation via Symbolic Functions</span>
</h1></header></section></div>
︡b8bbde8d-05f1-4ce9-ad9b-a42ffc5e4c3a︡
︠4e2090e2-de8d-404c-aa26-5ca7b93178db︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Start with a symbolic function.</p></div>
︡22952350-53fd-40f2-ad94-3e0d6c79df2b︡
︠a4d49f8f-0d2f-4b3e-ae08-34631d096d89︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡93d68760-66e8-46ac-a58c-db04f21fc8d5︡
︠178fe065-1dbf-4629-a272-f4e09d2bdf3b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Then specify the domain and codomain.  We need to be careful about how <tt class="code-inline tex2jax_ignore">T</tt> prints, Sage likes rows.</p></div>
︡443c41da-6e82-4ef4-a82c-a1091a645438︡
︠07d34142-cb05-4df4-a276-e28fba92fe73︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡77b5bf7f-13b2-4982-adaa-48cd7881b702︡
︠a7a5d554-5780-4a18-acf3-64b323ba4614︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">At a most basic level, <tt class="code-inline tex2jax_ignore">T</tt> behaves as a function.</p></div>
︡9cc32987-edf6-4d98-a668-9cd40f8b9c2a︡
︠0b6cf867-045f-4b39-a49f-c2ca7c9f82cb︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡dd74a6d0-ed54-4d07-a650-6233cbf5b887︡
︠354a9e16-ff44-4315-ab8b-cfdf29a2f6a7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡ddd28719-d092-45d4-ab8d-64c44fde1d5c︡
︠53a352a7-c885-4ad2-ae9a-bff8337129f7︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡55af8022-7eaf-445d-a637-1f708b40d69c︡
︠df18f981-c007-404c-aea0-5c0cc8708472︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Creation via Matrices"><h1 class="heading hide-type" alt="Section 2 Creation via Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Creation via Matrices</span>
</h1></header></section></div>
︡1512d0c6-2862-4f76-ac51-cadc6a5ead32︡
︠04717523-b4c2-47c9-ad8e-e59b2057e051︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <tt class="code-inline tex2jax_ignore">side='right'</tt> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡356a7df9-0bed-4e5a-a722-6180da031f47︡
︠17c71341-d5db-42b0-ad33-fa48a22a5499︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡ba0712b6-48b1-43ec-a4b0-7bac34e6e3b8︡
︠c62de4f9-b327-4555-a2a1-21dce11c8f03︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <tt class="code-inline tex2jax_ignore">S</tt> is not new, it is exactly the linear transformation <tt class="code-inline tex2jax_ignore">T</tt> above.</p></div>
︡8d9aa7fa-1ad3-4139-a753-97574385f050︡
︠4ddd8757-172f-4b42-a4c8-85fdc405906e︠
S == T
︡0acd845d-c75e-4602-a94e-1c41916a60ac︡
︠eb7b8ffe-db52-49b2-ac57-b73f9d1f87f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Again, notice how <tt class="code-inline tex2jax_ignore">S</tt> prints — the matrix representation is the transpose of what we like to use.  This does not <!--Style me with CSS--><em>change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡4eec97b9-584a-4ae6-adbb-46386c67cefb︡
︠14af046b-db41-45f0-abcb-702a887e03d0︠
A, S
︡ee49d5d4-1a05-4c54-ac11-891a4a3b94e6︡
︠4d5973e4-7ff7-45bd-aa8f-b09cad7e9127︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Creation via Values on a Basis"><h1 class="heading hide-type" alt="Section 3 Creation via Values on a Basis">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Creation via Values on a Basis</span>
</h1></header></section></div>
︡865d0c1e-18e0-403c-aee4-e957605deef0︡
︠577b5786-69f4-4af8-a6e6-bcf045093f72︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡fda69fe1-54b4-4954-a1b2-86f873e8c174︡
︠461edadb-c307-479c-aba8-e3fdb619feb6︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡20d4fafd-6c06-438f-a03a-82e8f9f13eff︡
︠42017fc6-c32d-4965-a969-4fb27bc7c06c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">That's right — same function again.</p></div>
︡faefc5f9-cbce-4865-aefb-74b263d3aa30︡
︠63b428a1-16de-4564-aa44-6b81ef4c3f66︠
R == T
︡fc9b1c3b-e52c-4372-a827-c835915ed8d3︡
︠fd08825b-e300-4f48-a2ca-993dede4bbd8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">We can check how this construction works.</p></div>
︡fc505e2a-90ea-41ee-a91b-4b4783567024︡
︠921f26d4-175f-416e-a0ff-c4a0c2419b1c︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡0be2a188-6afb-4911-a821-7e62f2433ef5︡
︠a0092bab-3152-4cf4-ae76-0e4603857b46︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡0f6189c3-4f4a-4219-a601-c0f1605f6dbb︡
︠3caad33a-689b-42cc-ac2c-dfdd14e7354f︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡07ba29d6-34ec-4019-adeb-abb79db74fc8︡
︠ed0a7235-86a7-43a9-ac78-81349c154541︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡e3eed500-b976-41a0-ab78-30a7434598bd︡
︠99178ed9-f926-4f41-a009-9393ad7f307f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡e19f91d6-ad0d-43f1-a501-e957c054f946︡
︠8282113f-8dc8-4b08-ac58-e314be4123a6︠
R(u3), L(u3)
︡a3925b38-bc67-4418-aced-5d161c45d788︡
︠e3b75039-9e50-46a1-ae70-ccdd3ea848fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">This code should consistently return <tt class="code-inline tex2jax_ignore">False</tt>.</p></div>
︡0d0c55d9-f674-47ef-a9c6-98276650ea9e︡
︠7ab761d3-bda3-4221-a1be-747abd01efc7︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡d329b8b9-c677-4999-aba5-92a0d5ed7cd4︡
︠4b8744ff-ec65-440e-aeb8-34bd58335b03︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><header title="Section 4 Basic Properties"><h1 class="heading hide-type" alt="Section 4 Basic Properties">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Basic Properties</span>
</h1></header></section></div>
︡f5e7c3cc-3a99-4fd9-adb4-6e91be9f2fa2︡
︠2981154d-177a-4078-aa43-ea28be65d847︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Illustrations with <tt class="code-inline tex2jax_ignore">T</tt>.</p></div>
︡b614839c-1a38-454f-ade4-1de35a2cff44︡
︠70a943cd-fd82-46e7-a6c5-ad2918434439︠
T.domain()
︡8b934e61-c5e5-4853-afbf-56d70f053496︡
︠d117566b-7316-489b-ab97-bee96e863bac︠
T.codomain()
︡28e403a6-f190-472a-a3e3-aa28387cea79︡
︠7926e2a8-9aa3-4a26-a554-90eb9141e3c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">A defining property, so always <tt class="code-inline tex2jax_ignore">True</tt>.</p></div>
︡c3ffad24-6cf0-4fa2-a6f8-a98952b939cf︡
︠e93e8eba-3162-426c-a4cb-c7550a8b3c40︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡c39f12dd-d0f4-421a-ae67-a3ff8fa1bddf︡
︠e93894a7-2881-4ca3-a699-e4cd45de68c4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">A defining property, so also always <tt class="code-inline tex2jax_ignore">True</tt>.</p></div>
︡8aec270d-e356-4511-a88b-270e54322abe︡
︠f49d0b41-934e-4aa0-ac29-740835c78f14︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡d186e823-ac7f-4b19-abdb-5505d4bab49d︡
︠87e0ec90-f3d6-4288-ac46-79c8eaca47ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡564372f1-3f50-4689-af4d-5c6245c1009e︡
︠ee531d61-ea13-4b8b-a470-2dc9f1fb3fcc︠
R+S
︡dbb3ed05-fe00-42b8-ae0f-e3cbcbcb70a3︡
︠d8e8bd5b-24a3-45cf-adaf-d92a4f61ad15︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡1edf79dd-502f-437c-a256-2304e4446f28︡
︠43623eb0-c00e-4036-ac6c-38f3dd712e04︠
12*T
︡658d7bb3-c73c-4640-ac06-83f86c6ee8ce︡
︠d3450b1c-ed32-4aa6-aa67-1fa081cefb7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡a5feb09d-c8af-4b4a-a2f0-9003184e749f︡
︠1341101b-dd47-4dfc-a71b-8bc8ed13b885︠
P = R + L
P
︡798ca9cb-5999-4169-addb-9665e5308f80︡
︠40add479-fc38-464f-af2d-ac3112652e5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-21">As we can see…</p></div>
︡fac979ee-3da6-460b-a60e-3ba7cca22c17︡
︠7114a8d8-7061-47d2-a342-28ecfa89cb6e︠
Q = L + R
Q.is_equal_function(P)
︡2ef329cf-2309-4587-a7cb-ae38a333dfe3︡
︠d11c4461-3954-43ac-aa29-5d7961d95a94︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <!--Style me with CSS--><em>same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡e6503a4a-b840-4c7b-a91d-27aa10bea193︡
︠1b4ab5bd-9401-4194-a9ad-ad845c1d7b3b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c571f37b-0001-411a-a6b5-453d989b606a︡

