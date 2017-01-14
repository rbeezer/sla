︠96ace362-4ba0-4385-a4b0-63b0fc51c189︠
%auto
%hide
load("mathbook-content.css")
load("mathbook-add-on.css")
︡210dee14-060b-4733-ac8e-df28f144316b︡
︠b9db6b98-0ae0-4554-a92d-8fcb8bcc00e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡b9f8464d-e47c-45d2-a974-7f33abf78f76︡
︠63f6c4c0-1b59-48a7-aa4e-ece2f9ee07e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡e4cea827-842e-4da9-a54d-43a269b58cc6︡
︠7b196a67-4510-405d-aedc-bc31f93bf384︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡dfff9590-de5e-4e64-ab51-80eb1e559582︡
︠96195bef-ccd1-4bc8-af7d-00efb0d1576d︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡903b9978-9346-4403-adfb-a0b9f79c9e3f︡
︠cd00899f-1226-4976-ac56-706395a21315︠
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
︡3d23dbd7-bfae-4535-ac0b-28b8c4d67fa9︡
︠5d68143e-ced6-4d3a-a3fb-e249a0e87681︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡fdf651b9-f78d-4e50-a980-46390e9e614f︡
︠24d2a235-c3c4-41ba-a242-2996294b8bdd︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡af172ba5-169e-4ba9-a5cd-7f6158a94351︡
︠0f1173d1-9e83-4c3d-a58a-30991f2c87fe︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-1" id="exercise-1"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5></article></a></div>
<div id="hk-exercise-1" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-2">Augment with the zero vector, using the matrix method <tt class="code-inline tex2jax_ignore">.augment()</tt> and the vector constructor <tt class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</tt>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
</div>
︡8fda14ee-58cd-4b91-a9f9-32adcbce8557︡
︠3e708857-6bf3-49ac-aa4c-47ee4aa1926e︠
︡a9d1a69f-dfbd-4347-a0fc-c33a185c9ef0︡
︠d99aa413-4e3f-4b74-a373-0363e8c44633︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-2" id="exercise-2"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5></article></a></div>
<div id="hk-exercise-2" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-3">Build some random vectors with <tt class="code-inline tex2jax_ignore">random_vector(QQ, 5)</tt>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
</div>
︡60d0b74c-b9bf-4976-adbd-1b17ff0c4527︡
︠997693ee-097b-4813-afef-cfbd7bd771da︠
︡8630dc3b-b353-4fe4-a3d2-292d7a95206f︡
︠af5ef3a3-e673-4971-adae-0d82b0d45f4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡efb4db78-e5e5-497d-ab57-a5428f253748︡
︠327e759e-d84c-4ed3-ab89-22e75668ba00︠
A.is_singular()
︡233a2afc-8c4c-493a-ade3-61548bbf3693︡
︠7b7a5a45-6c2b-49be-a38d-6efc288d7c41︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡fbc7521a-886a-4305-a24d-0bcf7e70cec1︡
︠0ccd3205-c8d3-4204-a838-63322b19be87︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡f84c57f5-cce9-4f0a-a49d-cf0023b3d616︡
︠e1f2d5ac-b789-418a-abc3-992a94d48ab9︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-3" id="exercise-3"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5></article></a></div>
<div id="hk-exercise-3" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
</div>
︡1aa0d857-40fd-4905-a3b2-65b9f4dc9674︡
︠08fb8c3e-48e3-4573-abbf-d149a3d807f8︠
︡cf0ba98d-7d55-40bd-a468-33a8c5baec1d︡
︠4ec596e2-46f9-4cf4-a94b-28ec0b1b6f88︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-4" id="exercise-4"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5></article></a></div>
<div id="hk-exercise-4" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <tt class="code-inline tex2jax_ignore">B</tt>.  Try it.  But this is not a theorem, see the vector <tt class="code-inline tex2jax_ignore">c</tt> below.</p></article></div>
</div>
︡dc691f00-1461-4e30-a3d5-efddcd8e9ee1︡
︠7bed5fc5-fe96-4089-a1b6-6a6372101aff︠
︡c6aa3fa0-59ff-40f7-aa03-17d7a5ab6c65︡
︠b3c6d057-1a10-4920-a1c1-4d825280eec5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡4781e613-d2ef-4381-a39d-4ebd11092e8e︡
︠4c6dd43f-8117-405f-a189-fd7ba9ca2e9a︠
B.is_singular()
︡de74b59e-41f6-49fb-a814-2129cd298581︡
︠06f7aac4-9168-48f8-a47a-89bb388620ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <tt class="code-inline tex2jax_ignore">B</tt> as coefficient matrix.</p></div>
︡2c013bc0-f625-4fa4-a7ec-276e2a7a19bd︡
︠3d94fdfc-ee20-441a-a899-5b0ba251d7b8︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡4e5e35c3-1a23-4b65-a5fe-f4af05256fd1︡
︠810ef43c-7469-471f-ad7e-b63663b99286︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-5" id="exercise-5"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">5</span>
</h5></article></a></div>
<div id="hk-exercise-5" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
</div>
︡3174f782-306a-49eb-a9b3-77abd1e9a7b3︡
︠df4533dc-61cd-4b6c-a7f7-b7f52d606081︠
︡4608b4c9-13ae-4064-acd3-49a3ec05d765︡
︠8ac928df-1e2c-4c22-a1f0-439f68c7dae3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <em class="terminology">right kernel</em> in Sage.</p></div>
︡f7dc004d-05c2-4295-a4a4-5e7fee7a6444︡
︠84b60b64-97a6-49cf-af19-468b56ad0115︠
NS = B.right_kernel()
NS.list()
︡5aa10ad7-f7ea-4d76-ac78-6bfe75422534︡
︠b8e5aef8-5f03-49db-a0a2-90e8e5d3708a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-6" id="exercise-6"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">6</span>
</h5></article></a></div>
<div id="hk-exercise-6" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-12">We can test membership in the null space.  Try <tt class="code-inline tex2jax_ignore">u in NS</tt> and then repeat with <tt class="code-inline tex2jax_ignore">v</tt>.</p></article></div>
</div>
︡43328e18-6786-4a24-a62e-9ce74cc2f328︡
︠e6c195fa-e626-4dd8-a13b-0c7e4cb1eb50︠
u = vector(QQ, [0,0,3,4,6])
︡43605055-b3bd-4a9a-a3ae-eba69f250015︡
︠05876d8b-23fe-40a7-abd2-9cd42734d35e︠
︡9541daf5-6296-4190-a94e-bea92c151f96︡
︠e2c24ad3-f468-4a72-ab07-9c536707d176︠
v = vector(QQ, [1,0,0,5,-2])
︡85848de5-0e96-474e-aafe-19a7c0ed8cff︡
︠275bcd8b-399d-4011-aeb1-dca7378241f4︠
︡12b6e847-380d-451e-a7f9-8c634aadcfec︡
︠3fef6c7b-3b34-4885-a605-f825b7f64c52︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡99279940-48c8-4d41-a3b1-8a9b0520b6d1︡
︠5aa1849a-c2fe-40d8-aa2d-761198b5d31a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡97448d92-8557-4364-ac07-a8dca746c19e︡

