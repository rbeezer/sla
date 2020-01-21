︠ca92504a-5210-47b2-a2ee-d3c185a90068︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e3385899-2ec4-4f4f-a26d-031c59202219︡
︠bfce8272-ca08-4e0c-ae23-b37d0c62c95d︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡21de0617-8d19-460a-a3ec-6afd809e2688︡
︠4a92999a-0282-4be3-a512-27d2552e445c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ca76c0f5-b073-4232-a693-8bb5d0a0fe45︡
︠672a68b8-cabf-498b-a0ab-f9199b069a60︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="NM"></section></div>
︡0c836fb2-77d3-476b-a366-e60009b005a6︡
︠6b2fe9ea-b628-499f-a5c6-bbcbcc58d5d8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡c43e3272-c38e-4c28-ab74-230efca448a2︡
︠07735a5d-d215-40e8-a99f-db2ea2a56fd1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section NM</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2020</div>
</div>
︡1d881e37-c09d-46ab-af35-e1110c3b1aae︡
︠ccc45d39-5faf-4d1a-a80d-eff000c4bdf5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">First, a guaranteed nonsingular \(5\times 5\) matrix, created at random.</p></div>
︡cb290873-1c3b-4b0c-a59d-37c38d341e20︡
︠4fc78cff-01c3-4c83-a9ec-62435c091183︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
︡2d2f4bc4-bc57-4f2f-a3ce-03046616f288︡
︠6b59aa46-e034-4736-a762-5666bccd3c0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-2">Augment with the zero vector, using the matrix method <code class="code-inline tex2jax_ignore">.augment()</code> and the vector constructor <code class="code-inline tex2jax_ignore">zero_vector(QQ, 5)</code>.  Then row-reduce to use Definition NM.  Or instead, do not augment and apply Theorem NMRRI.</p></article></div>
︡466a0154-735b-48ce-af44-2ab8074d4794︡
︠3eb99bbe-0225-4da1-ac96-0b0c3138e808︠
︡c377d028-e2b1-479b-a955-05112425d1dd︡
︠aa022e24-6171-42fb-ae90-4965a8ade7fb︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-3">Build some random vectors with <code class="code-inline tex2jax_ignore">random_vector(QQ, 5)</code>, augment the matrix and row-reduce.  There will always be a unique solution to the linear system represented by the augmented matrix.  This is Theorem NMUS.</p></article></div>
︡4965b84e-da05-4c34-a72e-867eb26505df︡
︠019775fc-4d64-4238-a7ba-530d2c0810de︠
︡0e0968f5-433b-485f-a0ca-a2ebf07f9907︡
︠8069ac2a-27d5-426b-a267-c19bc9b495e9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Instead—cheap, easy and powerful:</p></div>
︡c7a205e3-f1ad-46d3-a1f9-9cb388d3c68b︡
︠052a73f6-6e81-4bee-af0e-8ab4d3ca691f︠
A.is_singular()
︡4147ccab-31ab-426a-a15b-fe5a23efe48f︡
︠4d194d6f-8913-454a-af50-b5f0024e123a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a carefully crafted singular matrix.</p></div>
︡28731c07-b91d-4d71-a767-81c72d96ba9f︡
︠4b7cf980-1493-417a-a3f1-a737e547c025︠
B = matrix(QQ, [[ 7, -1, -12, 21, -8],
                [-3,  3,   0, -9,  6],
                [ 3,  3, -12,  9,  0],
                [ 2,  3, -10,  6,  1],
                [-2,  2,   0, -6,  4]])
B
︡f717300b-12fa-4512-af41-0e83579ae5a1︡
︠ba8d1be2-7f47-4aa8-ac9d-eab6d1d7bcd6︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p id="p-6">Augment with the zero vector and row-reduce (Definition NM), or don't augment and row-reduce (Theorem NMRRI).]</p></article></div>
︡e9066224-5949-40e3-a9bd-6972053ecfa9︡
︠5926f981-edb2-47b1-ab4c-8b60d650420f︠
︡b58eb884-9615-4890-aa45-7d1dde33f85f︡
︠71400088-42f6-478f-a824-e91f7fdb3c39︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p id="p-7">A random vector of constants will only rarely build a consistent system when paired with <code class="code-inline tex2jax_ignore">B</code>.  Try it.  But this is not a theorem, see the vector <code class="code-inline tex2jax_ignore">c</code> below.</p></article></div>
︡bbb0bb04-4563-4cdb-ab6e-04823f21a5de︡
︠f99a956a-aa00-4ece-aa84-9891ac0cdb2b︠
︡a144be91-93c9-44b5-a36d-7f6000d1dbdf︡
︠770bbba5-d39a-4ce5-a21c-08b69c67e33b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Instead—cheap, easy and powerful:</p></div>
︡3a336ef0-4c3e-470c-ad2d-936590107f4a︡
︠b75eabda-c270-40e0-acb3-a560a01c08c5︠
B.is_singular()
︡37c96744-1168-4176-a232-5e8cf3c0fd8c︡
︠2c4f5a6a-f7b5-4fcc-a6f0-95f11e5ee4c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Two carefully crafted vectors for linear systems with <code class="code-inline tex2jax_ignore">B</code> as coefficient matrix.</p></div>
︡0f34e8f4-3ebe-44bb-a12a-2bf1d1f20d7c︡
︠48b7d90c-e4ba-42f5-ae18-934841a34a1c︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
︡7542d1cd-ea1a-444a-aa3b-2cf7539f7d98︡
︠91de3a00-8faa-49ef-a492-fcee332c29ac︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-5"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">5</span><span class="period">.</span>
</h6>
<p id="p-10">Which of these two column vectors will create a consistent system for this singular coefficient matrix? (Stay tuned.)</p></article></div>
︡24df21a3-132c-4dcb-ac04-f00df40203cb︡
︠0efee2f9-51c8-4da5-a876-d66e46249385︠
︡e83e6106-a687-4f61-a4e9-ac01a48d8101︡
︠6faad0be-7640-4d46-af85-93195cde96f9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">A null space is called a <dfn class="terminology">right kernel</dfn> in Sage.  It's description contains a lot of things we do not understand yet.</p></div>
︡8682063c-4b38-4b1c-a105-6a983e41cd8c︡
︠70303466-0a14-43c5-afe5-550ed4c2590e︠
NS = B.right_kernel()
NS
︡68f982de-8e9a-42c6-a7b5-d1adf81ca75b︡
︠6c355b82-a113-4b3f-a2ab-78c15ba784fe︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-6"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">6</span><span class="period">.</span>
</h6>
<p id="p-12">But we can test membership in the null space, which is the most basic property of a set.  Try <code class="code-inline tex2jax_ignore">u in NS</code> and then repeat with <code class="code-inline tex2jax_ignore">v</code>.</p></article></div>
︡f5a2bfe4-2853-4b16-aa31-5b92dfd775c6︡
︠3ccdf8dd-cf62-4314-aac8-c23641528c75︠
u = vector(QQ, [0,0,3,4,6])
︡3b1f9086-e464-47a6-ab52-3146798db0a3︡
︠5de7d875-f6a6-4a10-a0d5-30687e1fbc06︠
︡063fd175-76b1-4c63-ad60-390a18837407︡
︠a0defbf7-06dc-48a2-ab88-bb2c544e7c37︠
v = vector(QQ, [1,0,0,5,-2])
︡4d71b7db-ed2c-49a7-ac6f-42b7e1b30303︡
︠a4026c93-871a-44a5-ab6b-bbd73c8f0820︠
︡bc4cfb98-e10f-4c4a-a101-dbda217a0732︡
︠8ffdbe85-6776-473b-a14b-3161c92342b7︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡43730328-880f-4f73-ab88-6c9dd67fab25︡
︠379ab9ed-2662-4659-a912-17eb5c2ccc8e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡2b6b6144-e7b4-492a-a3bb-5d34990b5d8e︡
︠b1f27b37-1f79-43ac-a506-9925e0590585︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a3696e59-579d-40c8-ac28-3b15105795c1︡

