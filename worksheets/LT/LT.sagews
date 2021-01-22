︠9384b28d-4880-49f3-aa30-f84e5ab5bcc7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a6a2a552-29bb-4a4b-adee-de72ccd8284f︡
︠fe5a1f07-230d-4eb1-aa80-86f09bd640f8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡fe74983a-f5e0-43cb-a564-5fa4040ea5e9︡
︠dd8522e6-cdba-4ef7-aa4e-faeaeeefd84b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡129a7bc5-183d-432c-abc0-9cb8697484cd︡
︠98f6124c-9f53-4208-a463-0d5304345891︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="LT"></section></div>
︡c39b9bed-87de-4bfe-a345-743c730a8531︡
︠7f51bed9-c50a-44ca-a20e-773a3be36699︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡809d24cf-d95e-449a-aeca-d421f5ce9342︡
︠dd36a6a7-580b-4655-a132-c16e263e4c29︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section LT</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡ff635190-8f89-4aef-aff2-1c38a6ed53a7︡
︠ca62dc46-cd54-47f3-a6f3-81fca92977c1︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="introduction" id="introduction-1"><h5 class="heading"><span></span></h5></article></div>
︡f8b5b91f-fdd4-4244-a5a4-83670103a8a6︡
︠aaf5fbf1-bef8-431c-a867-deb36b47eff9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\text{.}\)</p></div>
︡6936f31e-4dd3-4505-a29b-a6a5910e8fe7︡
︠841ca0fc-f49c-47fd-ad26-8cc326425d23︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Creation via Symbolic Functions</span>
</h6></section></div>
︡5a767276-f6a9-4329-a0fb-6883ca91deef︡
︠13a9a1c1-8c82-45b5-aec5-a2d269cfb9e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Start with a symbolic function.</p></div>
︡90c39656-8d20-408c-a578-b1b8312f1d9f︡
︠72f369ab-f382-439b-aff2-8a4327457531︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)
︡5a44ead9-5dce-40f7-abf7-e713b4afa25d︡
︠4b78f62d-f8bb-46bb-ae7b-56279eb4d573︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Then specify the domain and codomain.  We need to be careful about how <code class="code-inline tex2jax_ignore">T</code> prints, Sage likes rows.</p></div>
︡3beb3e15-b0e6-4c42-a73a-2905093cd124︡
︠55040321-9e27-45ec-a76f-1882e9b25937︠
T = linear_transformation(QQ^4, QQ^3, f)
T
︡e9dedd20-fbe1-434f-afc6-fde80d1cf753︡
︠f4cc3995-a908-4a4c-aa39-027fa7cc3b39︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">At a most basic level, <code class="code-inline tex2jax_ignore">T</code> behaves as a function.</p></div>
︡e3dbf049-5f26-47ca-a47e-d7046bc37feb︡
︠8de68e6d-7cca-4347-ae9e-c76dcc98008e︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)
︡c1ca758e-30b0-4af4-a1de-0a668231b324︡
︠2e5f9d42-b737-47e6-ac04-b0e1674a80db︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">We can check Theorem LTTZZ, zero goes to zero.</p></div>
︡4faaf473-63ba-4a38-a108-5b94dfb1a417︡
︠f67906d7-a4a5-4e58-a769-0c49019c3305︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3
︡bfb28c96-34ae-4994-a20b-b07098234564︡
︠b1474c3e-272d-46b6-aae6-6a7ea16c4b2a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Creation via Matrices</span>
</h6></section></div>
︡0dc44007-f3f1-405d-a70b-e655407bcb6f︡
︠67c3b13c-8308-440d-a18d-d643c83440fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\text{,}\) the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\text{.}\)  The keywords option <code class="code-inline tex2jax_ignore">side='right'</code> will indicate that we want to put the vector on the right of the matrix.</p></div>
︡f62c9ddd-9609-4e4a-ab63-939d765aaaba︡
︠5b177a45-8eb8-489d-a254-6e8fbf61a1b6︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')
︡b01c797c-efa9-4833-a558-ac72b2124c30︡
︠2f13b9c3-6b20-44a3-a709-0a57d1af4fb7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <code class="code-inline tex2jax_ignore">S</code> is not new, it is exactly the linear transformation <code class="code-inline tex2jax_ignore">T</code> above.</p></div>
︡fe7112ae-60a8-41e3-a563-f7e5eb79bc86︡
︠384b96e4-545f-4c7e-afd5-3dc23bea496d︠
S == T
︡0a6450b3-518a-4142-a040-58d2a0e9b322︡
︠02c77273-6c4f-4763-a968-9c17fc7d5308︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">Again, notice how <code class="code-inline tex2jax_ignore">S</code> prints — the matrix representation is the transpose of what we like to use.  This does not <em class="emphasis">change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p></div>
︡51a28250-6ccb-4b31-aed7-7648d3450981︡
︠1e3c0bf5-c518-40cb-a1b9-93febd1032ac︠
A, S
︡3ca79b38-0fe2-47ef-a30b-caec8aa9beb5︡
︠af256b09-4182-4301-a331-e0bdc387d358︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Creation via Values on a Basis</span>
</h6></section></div>
︡908b5e75-8b61-4ea1-afe5-0c5ca2f29d6f︡
︠5ffeb5d2-a5e1-47dc-a8ca-dd73a25a4f7a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p></div>
︡ecaeb538-7ee6-4053-add0-8bdfe8142639︡
︠126b1105-9848-4e4d-a22b-3a70a68cab3e︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])
︡441af2bf-758b-4e70-ab92-7cded7564f17︡
︠d6be0a1c-a822-4409-a4b3-73042ec75067︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">That's right — same function again.</p></div>
︡74d23ed5-a7ec-4a2c-a478-8fc84e705c0c︡
︠4811b5f8-aa08-47bb-a3f2-c72806776c47︠
R == T
︡98fbab0a-3a44-42cf-adfe-0c62569cef92︡
︠73b7e52e-f684-4ab0-aa90-9adfd266f468︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">We can check how this construction works.</p></div>
︡6db14976-87d1-4c7c-ac26-db1baed04d4a︡
︠5b81dcb4-34c0-4588-a25a-8369e08b1c85︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3
︡7e100fdc-4000-4158-aa7e-501bafc2bdf4︡
︠37247344-f85f-4874-a12c-f8c036f08bd7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p></div>
︡f1f2665a-b420-44a8-a9ba-5b22c68c6174︡
︠96588bfd-5a27-4a62-a2fe-d59f75501c18︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4
︡0af53702-55c8-4d7f-afaf-d7467cccce9d︡
︠7986fce0-e46b-4c32-ab2c-a04f7bb38721︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L
︡59be0aaf-a830-4403-a6c6-36776e212a94︡
︠cee7ce16-ecf1-4c31-a0ad-7d4e5bd7df26︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p></div>
︡4e525117-8f38-400c-a216-084579141e33︡
︠4729a8bb-03a4-4cb4-a8e5-efe255c69d4d︠
R(u3), L(u3)
︡19432fce-ac15-40e1-a560-a40975e3b800︡
︠529a5c91-a4ec-4aea-ab40-cf5c8c170df1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">This code should consistently return <code class="code-inline tex2jax_ignore">False</code>.</p></div>
︡d5360939-bde9-4988-a34c-30b9c45eb6ba︡
︠790b0043-af08-4991-a2d5-f15aa2e01a6c︠
v = random_vector(QQ, 4)
R(v) == L(v)
︡4e65a65e-afea-4884-a9a2-e9344e73e8d5︡
︠524b7e2c-cccb-4743-acde-fc820c070f0d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">4</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Basic Properties</span>
</h6></section></div>
︡45081764-4310-4e95-a252-14e97f687677︡
︠4bd54fcb-31e4-42dd-a703-a188bf717f8f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Illustrations with <code class="code-inline tex2jax_ignore">T</code>.</p></div>
︡6cb41f3e-a609-4a27-a8a7-b493d4355b4e︡
︠aaa5ec51-bf8c-492e-a0b9-86d1aa6dfb94︠
T.domain()
︡a3e49d1f-fde7-498a-a885-11cf26a84a4d︡
︠ee1d3ba5-aa29-42b1-ad3a-25bf4e5e699b︠
T.codomain()
︡77a84e3f-3d95-46c1-a895-2badafc0e2a7︡
︠e1e8a37e-2abc-4028-a1a1-7dd1b8179fa3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">A defining property, so always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡69552f89-db39-483c-a057-2c4fe08081f2︡
︠46b9cd95-770a-409e-ad94-4b09bf93f14f︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)
︡496f22dc-7538-4f41-ae1b-2573e238539a︡
︠2d38d6ab-2205-4b09-adfa-81005e2868b0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">A defining property, so also always <code class="code-inline tex2jax_ignore">True</code>.</p></div>
︡2ed66bc1-7e47-4408-aed7-96996f897f13︡
︠f42db887-a06f-47bf-a09c-7330d9f53754︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)
︡b49d246b-c1b2-402d-a027-dab0b8abed33︡
︠2e7bca03-5c50-4e63-ac66-430f4b7e75ba︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p></div>
︡9d9196b9-905f-4045-a31b-a5fa446c2d2e︡
︠8bc1c677-f175-408a-a5cb-161115572854︠
R+S
︡6d02ec86-487c-4e74-a8d1-4f8509b60de6︡
︠243271f0-849f-4077-a504-653ea476a848︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">Scalar multiples also, and they are well-behaved.</p></div>
︡e6d29449-4cde-4be5-a236-79bb86f0ca80︡
︠2770914d-b998-4746-ad7a-3f3eac4ac154︠
12*T
︡18b985ac-255b-4ed0-a5a8-fd73c2f0cb21︡
︠039cd217-e3d4-4fc1-a02c-819056246f08︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-20">The following is wrong.  (In other words, there is a bug in Sage.)</p></div>
︡10cbc9dd-1c1f-401b-a21d-eaf8a5eda5da︡
︠efbbb858-6657-4568-a18a-f74f0f4fcf4a︠
P = R + L
P
︡9395e4d4-d3a3-4b09-a422-e2a31a269e5e︡
︠9f224172-556f-4810-a163-345d7689d282︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-21">As we can see…</p></div>
︡1123474c-9910-4991-aab7-dec2c485d676︡
︠888bbd20-9c9b-4c34-add0-5be2db6604c7︠
Q = L + R
Q.is_equal_function(P)
︡b5030c12-cae6-46b9-ab97-be3a105776c4︡
︠e79eaaab-d76c-4dd7-a780-f3f2e0348aa4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-22">The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em class="emphasis">same</em> basis.  We will understand the subtlety better in Chapter R.</p></div>
︡f8b87632-2099-4c76-a3ee-3e2200344bff︡
︠0e8b6f2a-24ab-4d63-a391-2df500634af3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡a012c82e-242c-4003-a34c-56a4ca52e9de︡
︠d7ef9a7b-9a0c-470c-aa40-7971e3b36ad3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-23">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡8aa79421-0bb0-4731-a4d5-44ec5c0106be︡
︠fef88634-c5df-4212-aece-f6aae1455d91︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a8fa1815-ddab-4dcc-afb9-ebf96daa2f8b︡

