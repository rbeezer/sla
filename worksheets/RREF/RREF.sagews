︠dd2a843d-0ce9-407c-a21d-4c61ec465fcb︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡fa924168-f74d-4055-ac87-9d4fe2c38235︡
︠e2f7548b-c731-4537-abff-29c69b85e182︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡6646daa5-67c9-482c-a0dc-ff6b6f7f560d︡
︠873dd078-6df2-4785-a382-0726386a7b08︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡99fc6ddd-53b4-462d-ab65-d6dfd073bffc︡
︠6285da36-ce92-4028-ae64-3b50d5c518c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡724f82ab-8691-49a3-a18a-6b6bc408a116︡
︠389881a2-c295-4320-a748-2a4860c6968a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡dc364b7e-e408-4a4b-aacf-3ea7708461bf︡
︠c8bfffb7-e9be-4153-adff-c2e6a5629d44︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section RREF</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡c1d80c8b-365f-4574-a844-817771ce46c9︡
︠b8a91b69-690c-4954-ade9-17a8e2aa0e1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <code class="code-inline tex2jax_ignore">QQ</code> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <code class="code-inline tex2jax_ignore">[, ]</code> to organize lists.  To actually see <code class="code-inline tex2jax_ignore">A</code> we just write it as the last line.</p></div>
︡7d5166cc-0360-40f5-a4d4-deb879a14a06︡
︠783da936-64ac-44bc-aa09-ee8a6f3018b2︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡e3a204b4-b286-4ec1-aa71-450cf6c37dc3︡
︠0b6ad6e9-aab3-40a0-a147-39d35da102fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <code class="code-inline tex2jax_ignore">.rref()</code> method to compute the reduced row-echelon form.</p></div>
︡5f8ba519-ec3a-4f34-af59-7824c7179298︡
︠fe8892db-bc8e-4682-aa87-4ff64cd5378d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-3">Use a new cell, enter <code class="code-inline tex2jax_ignore">A.rref()</code>, and execute the cell.</p></article></div>
︡f7b8f5ad-16aa-4412-a6cb-d0ad6ea44dbc︡
︠bb4634cd-2d3c-478d-aaf9-5c90a0f5443f︠
︡0ea54e90-bcef-4867-a616-f6397e973db6︡
︠dc48196b-a278-410f-a960-f573fe185561︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡b3d0ce93-a351-4c61-ab07-b0d33c2557ab︡
︠96f67c40-ff44-400b-a2bb-a7b8bf4d5a50︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡5e654e19-e082-4593-a0bf-c568d272fcc4︡
︠c2237619-0098-43e1-a6fd-5b2c40eb3d80︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <code class="code-inline tex2jax_ignore">B</code>.</p></article></div>
︡25349bba-4bbe-43ec-a54c-29756b647920︡
︠a45d8e84-9df4-4b32-a886-4a0bf775bffe︠
︡f9347b30-0cdf-4182-a30a-a45a0428ad7a︡
︠c63fbabf-abc8-4ad0-ad01-8a6d5627ed56︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016–2017 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡72da195c-8084-4931-a902-b9d16279a660︡
︠78574b42-9955-4eb7-ab6e-145e32fb6ab5︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡72ec938e-527a-4765-af2b-d3f22351fbca︡

