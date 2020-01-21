︠527bb37d-024d-495b-a067-62a63cf442e5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡e375e396-0a94-473a-a330-a935061fa619︡
︠b0c35b6e-178b-4c0e-a631-7daa2b14abbc︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡57c1a2d1-0f99-4a59-a8cd-94a4fdf02acd︡
︠71543f60-17fa-4090-aa1c-8b13000f03ac︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡01e6516b-1720-423a-a2ec-f670980a71d2︡
︠43c3a522-56b0-4d5b-aaae-eae379dff099︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡2edf1744-aaa5-4a8a-a625-51f346d16c2f︡
︠65e440c8-463e-4bd7-a53a-a8bacf091763︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡7d851d5d-5a39-48e6-a04a-af369f5a861f︡
︠a9c3ed04-b6ef-4f7d-a572-02138b2e6b57︠
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
<div class="date">Spring 2020</div>
</div>
︡b0173f53-4093-4f9a-adf2-ff512ed5c312︡
︠bc2c36c9-a094-439d-ae6c-06b68e453184︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <code class="code-inline tex2jax_ignore">QQ</code> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <code class="code-inline tex2jax_ignore">[, ]</code> to organize lists.  To actually see <code class="code-inline tex2jax_ignore">A</code> we just write it as the last line.</p></div>
︡3306f4cb-d7c7-4bf0-a8e7-4ed046e9b1a3︡
︠6e7657b1-398f-403f-a1cd-80c601cea704︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡b632d898-ac13-4c27-ab33-9b45246e3064︡
︠51a9471e-0bb2-4f75-a628-9b4e1637468a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <code class="code-inline tex2jax_ignore">.rref()</code> method to compute the reduced row-echelon form.</p></div>
︡bec570d9-ee59-4140-a6b3-e4f221858dc1︡
︠8704d85b-1397-4dab-ae06-1fb12e2b4b81︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-3">Use a new cell, enter <code class="code-inline tex2jax_ignore">A.rref()</code>, and execute the cell.</p></article></div>
︡d19d665b-27fb-4ec6-aaa7-1c6de8b140cc︡
︠1aeb742d-f44e-403a-a6e5-ef14cfd8019d︠
︡ea7d6f18-c0c1-4fc5-aa33-f1316f048161︡
︠f4c72263-a347-4534-aad7-ec81df1e3909︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡b0e770ae-3427-4c7b-a028-8051230313c2︡
︠d72bfac9-9feb-47b3-a2b6-b4705935c599︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡861b205e-afe8-4b63-ae8f-433b4857e1d8︡
︠a5fb02b6-055f-4e15-a2fe-142506e5ec7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <code class="code-inline tex2jax_ignore">B</code>.</p></article></div>
︡5124d269-97ff-47d0-adf0-b15e6654c413︡
︠0652b252-bfab-4e19-aff9-fba591bf5737︠
︡b4d0793c-bfc6-4aa8-a3a7-ca26fc8bbd2f︡
︠5e33eac1-7803-4ebe-a6e9-eb3113dae981︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡8dfc0e6d-0e51-424c-a1ba-aa5db7182f2a︡
︠1a7167fd-50ca-41ef-ad0b-8a5e8069889b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡2b59cc1c-a6c7-41e6-a0b6-b30018182a0c︡
︠ee3c49da-4f27-404b-aa79-660e79674e91︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡070434d1-e201-4a05-a5bc-f12f09971e6a︡

