︠be276d84-7c81-49ff-ac61-ff20cae47090︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡34f6b533-abf3-4c93-ab5a-c59f5694b044︡
︠1881f473-72e7-45a0-a966-33bc212b5dca︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡1e3a02e7-5694-4dff-ae85-4b808a2a6883︡
︠2a265293-ae93-4372-a26b-7a60bfbe9262︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡59d8f2b8-557f-48a7-abdd-658d54c02638︡
︠533c7072-cadd-490d-adb5-ae4d4e1867a6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡a0adc2e4-4bf2-4882-a56e-b0d0e1ff9574︡
︠c246f18e-6d95-4f2e-a284-135e4303398b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡e4d3bd54-bb15-4107-af30-453a37d3b1d3︡
︠cc8a0475-8209-471a-af1e-f63307beb6f9︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section NM</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡9c52656d-af0b-488d-a37e-1644a4b536b3︡
︠f5f576be-46d4-416d-ae94-dab1f56aa915︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡c1bc6331-177f-4c96-a97f-e5a96aed4976︡
︠f37a0ed3-0fa8-4f71-a519-5fef85a72f19︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡50ddadb8-0b7b-4363-a4c4-e13c1c1b34a4︡
︠ef5bc088-8930-4576-a8c2-ca4f75b90fdb︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-2">Augment with the zero vector, using the matrix method <tt class="code-inline tex2jax_ignore">.augment()</tt> and the vector constructor <tt class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</tt>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡4ba9779f-f193-42eb-a867-b320395f26e0︡
︠13cbc335-337c-479b-a222-9e5ce95488a7︠
︡9ba6779a-dde4-495e-a571-710dee642ecd︡
︠6681cf86-a538-4ade-a926-a98a669dacb7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-3">Build some random vectors with <tt class="code-inline tex2jax_ignore">random_vector(QQ, 5)</tt>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡92e13a1b-1b14-44b2-a254-9fe1a573220e︡
︠9917b42c-0381-48dd-aa02-f92eac420750︠
︡5ea765b8-2ccb-4d58-abf9-ef20ddc10d85︡
︠ee485ae1-31d0-4cb5-a575-e54152f2400d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡6eca6255-3961-492d-ae84-37989fb92f92︡
︠cf09a7bf-ce82-4015-ad0d-245cdeb87e80︠
A.is_singular()
︡0501ea89-a482-4784-ac65-a89f46d0f5e7︡
︠5fc60a18-3bdb-4e44-a31a-8b32b79988e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡f45ca56c-ea7b-4660-ab91-51d8490d2851︡
︠f55520b9-c934-45aa-a554-7b653ae471cd︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡2c37158c-f463-49cd-a413-89eee29d60e2︡
︠e0f28080-d754-4ae0-a832-bbb9aab37146︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5>
<p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡43636e4e-f254-4603-a786-a326cd081896︡
︠ee952f47-e393-4704-ab8c-22f48c28431e︠
︡90d35f39-61c0-4541-a909-52b56328c6ce︡
︠55e2932c-d9da-4a2f-abcf-411f7839100d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5>
<p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <tt class="code-inline tex2jax_ignore">B</tt>.  Try it.  But this is not a theorem, see the vector <tt class="code-inline tex2jax_ignore">c</tt> below.</p></article></div>
︡e63c9cfb-8d56-47f9-a6a5-5f76fef28029︡
︠d0f1c8dc-46aa-4d19-a674-bd3243035948︠
︡229136a1-2f7d-495e-a3b6-764b88f9c430︡
︠c52666c1-7f0f-4c94-aacf-14650fdf8a4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡b11d7743-9b29-4ae3-ae90-ea54f53d5c8a︡
︠83b91315-7b09-44b8-a7a1-78cddb2198e1︠
B.is_singular()
︡374f1522-b9eb-4327-aca1-e2aaf7629fb7︡
︠0ee5dfbf-2690-42d3-a99e-b70520d8367e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <tt class="code-inline tex2jax_ignore">B</tt> as coefficient matrix.</p></div>
︡e8cdeada-a004-4031-a4da-2923e44cd734︡
︠51d2fccc-67c7-4bda-ac18-741a80eccc3f︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡091eb0a8-c0f9-48a6-a278-bedc85d72936︡
︠94fa3bad-37e3-407d-a794-053d2b3f3586︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-5"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">5</span>
</h5>
<p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡c1bbbe66-caeb-4ee2-ab6c-0614330723db︡
︠a9d5484b-f06d-4c4c-ae02-b18d5c153490︠
︡f3ac9e5d-a5e1-42b6-aea6-158a2e743b8d︡
︠c7164a59-8ff7-4112-a70c-d226c54398e1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <em class="terminology">right kernel</em> in Sage.</p></div>
︡5a961d16-7a56-4178-a4e9-1cb42796b3fa︡
︠545eb6cd-c372-4a99-a2e8-b04747feeb1d︠
NS = B.right_kernel()
NS.list()
︡562b5e11-be43-41fd-ab2c-3ec850f4edf0︡
︠a57c0cb2-d612-4a21-a8d4-41209718cf6c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-6"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">6</span>
</h5>
<p id="p-12">We can test membership in the null space.  Try <tt class="code-inline tex2jax_ignore">u in NS</tt> and then repeat with <tt class="code-inline tex2jax_ignore">v</tt>.</p></article></div>
︡0027d238-50f6-42a9-a427-868b6227bf71︡
︠c82ef012-9638-4d63-a7b5-e3b7e2a1a511︠
u = vector(QQ, [0,0,3,4,6])
︡6ea9c99d-c24f-4b26-aea1-395f141b6b17︡
︠d757121a-0dc5-4d88-a362-5aba9cfb8569︠
︡c412c25d-d5aa-4b82-a3b8-5131bcea760e︡
︠0d31ff45-c1a7-4b5f-ad8b-6eca086e3e53︠
v = vector(QQ, [1,0,0,5,-2])
︡d50070fb-5ccf-4385-a36e-ecdb6d3db6c0︡
︠996a9da9-8f55-4f9d-a4c4-3b0067d95902︠
︡9ab045de-f6d5-4cce-aa1b-e47f4d717ca8︡
︠e42a5602-5f93-445f-a3f1-fe56da44cc07︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡5fb7a1ea-339d-47e3-a612-810d8e8c2493︡
︠9916118c-9e11-4eac-a669-3deca30743e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡c71dd3f6-f941-4a3c-a692-fdfe9a2a26d0︡

