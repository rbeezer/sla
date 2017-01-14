︠df4c6e13-455c-453e-a045-17f58fc067d1︠
%auto
%hide
load("mathbook-content.css")
load("mathbook-add-on.css")
︡9b1d77c9-b0f1-4c54-aa68-0700d8fa9616︡
︠7a298914-2c42-4d17-a1cd-ad4ad23dcc3e︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡3a9541f5-511a-44ec-ab09-8b6d53080d53︡
︠b9e4e25d-8bf9-4638-a3f9-c7425a653628︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ad2921c7-f43e-4ea2-a7d2-0a95dff34296︡
︠3eff8b3e-228b-4cb5-a7f4-571f9e4c855a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡298290dc-e0f7-4bb3-a023-48a6744c0d16︡
︠73ff5803-4f33-47fe-aaf1-e4a8b2dfedcf︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡332338b4-b03f-44be-a36e-543fde1ad08a︡
︠fce2f1ab-66ba-4505-a43b-28f58d3a71a0︠
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
︡b9c9bbb6-61d2-4b32-a176-dafcf7a3114b︡
︠105e9195-7065-4228-a53f-b09ad928c4a1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <tt class="code-inline tex2jax_ignore">QQ</tt> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <tt class="code-inline tex2jax_ignore">[, ]</tt> to organize lists.  To actually see <tt class="code-inline tex2jax_ignore">A</tt> we just write it as the last line.</p></div>
︡fc15ab63-0e47-4369-accd-b8e53cf54b9e︡
︠d9aff4a5-8a4c-4183-ab40-90885b45190b︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡8e43d387-902e-4d46-a10a-19b9115666f7︡
︠1756b2a3-a34d-4112-a732-24beedf335a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <tt class="code-inline tex2jax_ignore">.rref()</tt> method to compute the reduced row-echelon form.</p></div>
︡cbb1264c-9ffd-4d1f-af92-2c6ea4b98fe2︡
︠2bedc031-cd1c-4aed-aae7-c033ed8a7095︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-1" id="exercise-1"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5></article></a></div>
<div id="hk-exercise-1" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-3">Use a new cell, enter <tt class="code-inline tex2jax_ignore">A.rref()</tt>, and execute the cell.</p></article></div>
</div>
︡3b119e2c-fea1-4b40-a9fe-0cf4fd287990︡
︠fcc0e5e0-2efc-4fa1-af30-e4cd8caa524e︠
︡33bf3952-9708-44f3-a5f6-6db3a305e572︡
︠3a6ea98f-c16c-4aac-ad0b-468fa33a810f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡43ab244a-31ca-4d65-a945-58ce761b19d1︡
︠9153c881-2b2f-4605-abaa-1f2dda4f5682︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡724d615e-37a6-4706-acc1-7d09ae3fd956︡
︠cd80af1f-e478-4be9-a1b5-3223cd10cf92︠
%auto
%html(hide=True)
<div class="mathbook-content">
<div class="hidden-knowl-wrapper"><a knowl="" class="id-ref" refid="hk-exercise-2" id="exercise-2"><article class="exercise-like"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5></article></a></div>
<div id="hk-exercise-2" style="display: none;" class="tex2jax_ignore"><article class="exercise-like"><p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <tt class="code-inline tex2jax_ignore">B</tt>.</p></article></div>
</div>
︡55fe59d7-9bc0-447f-ae9a-3cd609329012︡
︠27816eb3-54f2-454a-a424-e50bc15f3e05︠
︡12d9437f-7d47-4f9b-aadd-ec3f8f0df4cf︡
︠ad1776be-62ba-49b3-a551-23e626534570︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡42e6a5c5-428f-4d2b-a170-2a410686acb2︡
︠b44de6ea-eef2-4ddd-af5a-265bb2aa5fdf︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡693a7116-c04b-4219-af1e-a340f029b798︡

