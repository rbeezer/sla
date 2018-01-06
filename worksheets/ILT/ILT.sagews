︠be9087c7-f561-4844-a9b5-09af4d644a7a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e28731ff-8f4f-40d4-a56f-a7957d2d2789︡
︠27cbefce-e5d3-44e1-a848-8e0147f751ee︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡b157c469-25e0-493f-abc3-342456c5d27c︡
︠02d59a90-3c52-4df5-ada1-1e633caf1718︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡42a274c1-40ea-42ba-a785-994fd7c77df9︡
︠e30d85d2-5c63-4c94-ac0b-9cd19b3cf8ef︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="ILT"></section></div>
︡bc2b9a17-c632-49fc-aecc-9687713ae23d︡
︠1ea3a3ec-bb2e-4ece-aaba-7400c72f2125︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡e3487ec6-b71d-450a-a3a5-d1ae27546759︡
︠d4d1c4f8-ba0c-486c-a397-97945bbb0135︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section ILT</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡b09816c1-f8cf-4455-a19f-92726de18e3c︡
︠4ede6e43-03bd-4303-a82c-8bffe5cc75ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Injective Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Injective Linear Transformations</span>
</h2></section></div>
︡1f9ed0d1-4e5f-4b80-af12-b9db9b0588a3︡
︠3b2dafe7-1266-422e-a210-5d9382f98712︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is injective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡a5ec39c1-1d47-4369-a29a-2f7c20f2979b︡
︠a408132d-53b9-4ae0-a31a-e4a60d60f088︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')
︡b2dcbe0d-b506-4fa5-a0e7-bcb53c29d295︡
︠b5781361-0271-496b-af7a-62728afb4cde︠
T.is_injective()
︡183905c7-6dad-4e34-aa3b-4aecc66c1a9e︡
︠9b7c4811-f8e9-46cd-ab70-6bb578ce4d9d︠
T.kernel()
︡c284edc0-fb8d-45fa-a2a1-31de64623b0c︡
︠9de21dfd-de96-4cf5-a71f-850547abae6a︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')
︡af881a51-7301-49c0-ae32-ec8e2c6d70be︡
︠b5e3efd3-1571-470e-a7f2-ade2c0f2d729︠
S.is_injective()
︡5de41c3e-0547-46b8-a527-7d46007f3576︡
︠ec4c1595-4aa8-4113-a966-0e35436c3a1a︠
K = S.kernel()
K
︡0074d8a6-de07-4729-aac0-1de52389fc31︡
︠641d9e63-5325-4ba8-a554-5613b464d601︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <code class="code-inline tex2jax_ignore">S</code>, predictably.  If we try this with <code class="code-inline tex2jax_ignore">T</code> then the kernel vector is <em class="emphasis">always</em> the zero vector and the demonstration is very uninteresting.</p></div>
︡76594e7a-2ce5-42af-aaf4-f4a0765ea35a︡
︠4c19658d-0aae-4fc8-af78-36ce744d3e08︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)
︡8459ebf7-9f23-4d20-a617-e4eb36f73254︡
︠64b16253-4a32-456d-afe6-48098d045814︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡188c9fff-2396-45ec-a3eb-9239bb7cfc41︡

