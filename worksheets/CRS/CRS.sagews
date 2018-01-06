︠8b55134e-f2fb-41ca-a4dc-bbd1b75bd0b6︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡241892be-1b01-472d-a16b-e26c414ad1a9︡
︠7dd967b1-6dd7-4e49-ab60-653d18f52d7d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡7ea581c4-2310-4af5-a4bc-5118f30f93c0︡
︠03fb97c5-bf9c-4f3b-a487-0d8268567fa4︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡fa8e5161-7100-4e04-aa5c-169a8f2e6ad0︡
︠7c103ddd-db34-4026-afc6-1d09e8822fbc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡928a3b80-95cc-4ade-a1ca-8e7886118404︡
︠0a695a4e-ad46-4ae3-a8f0-37fa07128a69︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡e74409e5-893c-4fdb-a35a-382233a562fd︡
︠bd402491-a2ad-4eaa-a9e0-41974dbe2111︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CRS</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡fde3d187-229d-4088-aa26-a684ed1ac3cd︡
︠5bb4f857-f8a9-46a1-ae53-50ad49a5369f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Column and Row Spaces">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Column and Row Spaces</span>
</h2></section></div>
︡4ebf2a88-270c-4167-a25c-6ac070926d9f︡
︠ded8d035-85d8-42ef-a914-67f2873299f3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <code class="code-inline tex2jax_ignore">A</code> is a \(5\times 7\) matrix.</p></div>
︡9c165f68-5fe3-4701-a7a3-c0ab32265c04︡
︠f9110717-066e-49ef-ab5a-e1b9decf51b6︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡6b07c0ee-7e4e-4dec-ac92-7842211e070c︡
︠d67de4ed-25b7-4485-a05f-3c77fa809979︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And its column space:</p></div>
︡650e3f31-c677-4db0-a3c6-2f3a624f3d9b︡
︠7f07d460-526d-4a49-ab75-1a544c79ba65︠
A.column_space()
︡6e4662bc-31fa-4eae-a856-d702c4f3dae4︡
︠0424b876-5a85-4460-a3e6-9cd9f9dedb9c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡0912edb5-31fb-4642-a671-c0ea9d47c235︡
︠e3e06dd1-2132-4d97-af0e-1dff79db19e4︠
S = A.column_space().basis()
S
︡ed7ddeba-0db3-408d-a78d-69a592f6e0fc︡
︠4e9cc6b7-0b4c-4e54-abdd-937390587486︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <code class="code-inline tex2jax_ignore">S</code>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡0d599104-800d-4df3-a2a0-f4367d7d5e2e︡
︠52bbb5cb-a5ca-4399-a6c4-7b8a207aed90︠
b = *S[0] + *S[1] + *S[2]
b
︡bf36afc6-b6c8-4102-ab7e-0ea98ca079e0︡
︠a9fd09cc-073d-405d-a204-003aac74ceda︠
P = A.augment(b, subdivide=True)
P.rref()
︡f74e4481-1995-479a-a5bb-abcd669da5b7︡
︠0bf5a392-5bce-4147-ac93-73e304a925fe︠
︡c09c53fe-65a2-43b6-ab70-ef3d332dd42c︡
︠2fcbb2fb-150b-4847-aeff-eee2c26e0333︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <code class="code-inline tex2jax_ignore">S</code> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡062d2ef1-a06b-4ce0-a4df-3ce2ea45948c︡
︠892b6496-647c-403b-a078-0b5ed4929272︠
c = *S[0] + *S[1] + *S[2]
c
︡efb1a264-8c90-4993-a4ab-da6294627f4e︡
︠13ed48fb-d876-4800-ac4a-715e4e2a19a6︠
d = copy(c)
d[4] = d[4]+1
d
︡8ca6aff9-ac21-42a2-a366-ee83dd2083a2︡
︠a2f49948-3e45-4f70-a1b7-8961c3ee362d︠
P = A.augment(d, subdivide=True)
P.rref()
︡9d092926-2646-4c4e-ac69-3f390fdfe051︡
︠efee818b-7a2c-41e0-a0a7-ae7d87c57b6d︠
︡c4cb35cc-0472-4080-a19b-93a0028d8f8e︡
︠d53917ee-4f2b-4234-a34d-ee08e1b6f368︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Moral of the Story: the elements of the column space are <em class="emphasis">exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡23d5dfdc-d1cf-4ce2-a027-e15fa405bf91︡
︠ecb6b071-2e33-4e13-a3b8-fce977995f32︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡02fb8bcf-dfe0-42d2-a60d-ffae8151ba1f︡

