︠30bbb404-8859-4b5a-aec1-8480815b0424︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡95541091-429a-4b4f-a62c-7a0fb8004146︡
︠6ecb3dbc-e0f7-4bac-aa1f-78a7850954ba︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡b197cd58-a389-4b33-a7e4-75d1d66d0c2b︡
︠7dd15aea-28eb-419e-a51d-9827afd0dedf︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a5d76324-e4cc-4fe6-ae38-bc1e4be2cb0a︡
︠bfe63a06-3395-454c-ab88-5abfb0bd192d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡7ed64005-7480-49e4-a6ad-ef8af4ba1c44︡
︠ab281782-c065-4004-a56e-35db0c0b728b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="index"></section></div>
︡6369b814-be42-4352-a7b9-6ff3a00bc7d4︡
︠338ad42e-9dcd-4003-a38f-ceec29c24891︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading"><span class="title">Demo: Section ILT</span></h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Math 290, Spring 2016</address>
<p></p>
</div>
︡dc5673a9-137e-417f-a4a7-475247b0a093︡
︠2707d7a7-1cb9-4bc1-aa1c-154788f49943︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Injective Linear Transformations"><h1 class="heading hide-type" alt="Section 1 Injective Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Injective Linear Transformations</span>
</h1></header></section></div>
︡c6ade759-f76a-4017-a2b8-ede346b3a5cf︡
︠895374bd-ea44-4556-ac82-57f4a4a685c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <tt class="code-inline tex2jax_ignore">T</tt> is injective, <tt class="code-inline tex2jax_ignore">S</tt> is not.</p></div>
︡44fa87e3-4de9-414e-a807-a6eaa8f5f8ab︡
︠de0d9847-c94a-426e-a1ef-896641f36eb1︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡990a692b-1e46-497c-a88b-715e89f7c568︡
︠7017a80d-31c8-475f-a4e8-059531e29b80︠
T.is_injective()
︡3f046bc7-8084-490a-a848-14eb92d8563d︡
︠66d7b428-cb84-4015-aaa9-3ce2784409b4︠
T.kernel()
︡72a596ab-e667-4b69-a014-a509771bc257︡
︠7d92338d-e635-4dfc-a7fe-ba3b3b35608c︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡7fa11d49-a30e-49ed-a55d-4077cb2f19f9︡
︠67909add-4814-46a3-a408-1499b54e5685︠
S.is_injective()
︡0ed9f63c-4855-4db0-a0f0-9142a08fed57︡
︠3550e472-1ba6-4072-a082-11353e6bd592︠
K = S.kernel()
K
︡cd82d664-9804-4f1b-a223-4358986f444e︡
︠61be3959-ee2e-4210-ae42-28571f08e5c3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <tt class="code-inline tex2jax_ignore">S</tt>, predictably.  If we try this with <tt class="code-inline tex2jax_ignore">T</tt> then the kernel vector is <!--Style me with CSS--><em>always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡334f2787-1663-4595-a589-8b2e34d3cc99︡
︠fcd3bfb3-7cae-4008-a560-fec2cf6a336c︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡d58a9494-8102-4f13-a769-7684843ff635︡
︠baf925d4-ab97-4895-af78-7359195fc1bd︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c67b0a1d-fb88-4211-a709-08c51df7db88︡

