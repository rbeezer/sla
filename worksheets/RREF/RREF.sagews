︠aa0dc9c7-abd0-44ca-adf0-0828d8b59fc3︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡47d44ae0-18cf-491b-a3fb-3f4681f36823︡
︠b7b9cf3a-053c-44ce-a0fd-b3df9509871b︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡bd267f6b-970d-4449-a249-ffccf610fa81︡
︠53e8a580-0180-4ec5-a8e9-1d9e985b8560︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡6c454ead-fbe7-4cd4-a252-b7f569eb570b︡
︠e11b5bf6-b87c-4279-ac8a-b77fbde9e587︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡d78f2ea2-46bc-42e4-acac-764f5fc49b92︡
︠279b6ca1-ee7a-4ba8-af63-cda0c008493e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡b6642c1c-dfb4-4a6f-a365-62303f1385dc︡
︠493ae66f-24fd-4994-a8ca-d3d1400549a1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section RREF</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡6fa998f0-7257-40e0-a57d-f40d64d69104︡
︠364e0e70-ff24-4633-a68a-38f45592c34c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <code class="code-inline tex2jax_ignore">QQ</code> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <code class="code-inline tex2jax_ignore">[, ]</code> to organize lists.  To actually see <code class="code-inline tex2jax_ignore">A</code> we just write it as the last line.</p></div>
︡883c64ad-49c7-4e2a-a192-bdaa20fb2be7︡
︠860c360e-4481-4b64-a68e-93b3ed3e96a7︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡e2eee15f-0a38-4bfe-a057-eea9297670d2︡
︠8b56a480-38a6-4066-af6b-65a1fdb63361︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <code class="code-inline tex2jax_ignore">.rref()</code> method to compute the reduced row-echelon form.</p></div>
︡5fda57ee-8163-487a-ae71-ae65f52bb6e2︡
︠7314d7cc-55ec-4873-a36b-409a69f94bf2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-3">Use a new cell, enter <code class="code-inline tex2jax_ignore">A.rref()</code>, and execute the cell.</p></article></div>
︡e750c379-fdfe-4975-adbb-8fc192a9be5b︡
︠14364f9c-99a8-4740-ac1b-7aa4c466e254︠
︡d681dd07-aa04-4288-a25a-ed4810d77bad︡
︠0848926a-904a-4463-ad98-775c06dee498︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡29072998-3288-4ddf-a0a8-820ee14bf309︡
︠c23d9562-ea57-4324-a23f-bb1ba0dfbc2c︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡6ee9b8f2-bdd1-4504-a937-8e3a9da7c63f︡
︠2ae03a93-c50a-465b-abfe-28c6263dd031︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <code class="code-inline tex2jax_ignore">B</code>.</p></article></div>
︡f5bd6f7f-2453-4fb9-ab68-9916f3d30b33︡
︠c3880f88-ead4-4dcf-a776-f1008f453506︠
︡8da15a0d-3f80-436d-a3d4-ad6aeea23d74︡
︠301d2783-4c3d-4c73-a9a0-e5d5fb39e766︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡ba6d8941-c9df-46a6-a941-a368863cf236︡
︠8f1ec980-b498-4403-ab97-d4a3c3a0f923︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡0a219eb1-f659-4fa9-a252-9274637037a5︡
︠777cccb7-9b38-43f6-a71c-9d3939215885︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡30dbc978-1134-4963-afd5-b73f06938eb0︡

