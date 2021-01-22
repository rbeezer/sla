︠99b55825-3ecd-4a2a-a1e3-84657878f0e4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡98d4d3cf-90e5-4d88-a897-b1b273bebafa︡
︠f82dcf08-f98d-4f66-a8e0-fa2ad9e87a36︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡42e70a70-36ac-4492-aa21-b1cdc96a2e55︡
︠498219d8-91e4-4d3e-a0e0-291e7d7e8acd︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f0783811-0b3e-4002-ae10-e39010d9e53b︡
︠3ec514cc-eaa2-4c63-aae6-ccb719a3b393︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡bc1823cf-fb9a-4d60-a01e-7db25ccf0739︡
︠ae6c68f3-8fe1-49c8-aad9-84646c13c2af︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡c5d214b1-8316-45a3-ad50-7e4d2ba4e669︡
︠63e45081-1143-47ae-aa83-bf1fd3a789ef︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section RREF</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡24208811-932e-46a8-a451-7008fdca5543︡
︠468771f8-29c4-472f-a064-1e4174f4f493︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">To specify a matrix, first specify that your entries are rational numbers, <code class="code-inline tex2jax_ignore">QQ</code> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <code class="code-inline tex2jax_ignore">[, ]</code> to organize lists.  To actually see <code class="code-inline tex2jax_ignore">A</code> we just write it as the last line.</p></div>
︡8ea06115-a4f6-4968-a87f-c9e1a66aa5f4︡
︠9733894a-ffee-4585-ae0d-ed6df135beba︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡34267a0c-5fb4-4e1c-a30c-0fa7c980e3f9︡
︠e2d085b9-108d-446e-a0af-dbe72b0abfeb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">Then use the <code class="code-inline tex2jax_ignore">.rref()</code> method to compute the reduced row-echelon form.</p></div>
︡8cd6c6b7-fd88-4acf-a9d9-8b5728233e21︡
︠9bd719dd-1db9-4566-a4f4-e8f402c25f17︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Use a new cell, enter <code class="code-inline tex2jax_ignore">A.rref()</code>, and execute the cell.</p></article></div>
︡0b2e3480-29ed-4344-aa83-e7cebc07f671︡
︠d8c06f5e-088f-46b3-aa6c-e53a3e7466be︠
︡79649c4f-b573-44df-a775-35a70e673cee︡
︠a671a1df-0948-4c85-ab0d-142cc3b2aee9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Here is a larger example.</p></div>
︡d9f5a968-871d-40e6-a596-3bb677929418︡
︠de2c3c5a-5e26-4b24-a18e-8ba411ca46e5︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡eb4187de-23c4-4987-aeaf-d3a78b846da4︡
︠2906a9e8-71b4-465d-ad37-c0b6832178e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">As above, use a new cell to compute the reduced row-echelon form of <code class="code-inline tex2jax_ignore">B</code>.</p></article></div>
︡d1be8677-ef8a-43ef-a0c3-8844fc72dfac︡
︠18dd754f-c2e4-4d23-ac3f-0c840717ae74︠
︡a9d765da-49d3-4ea5-a179-1759c61debc5︡
︠06eee53b-085d-4b38-a150-a780056225ee︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡af59d4e1-fe95-4c58-a56e-505e153886d7︡
︠486a14ef-6eef-43b4-ab0b-96ce4d485de3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡52bbdc0b-c69b-46d6-ab96-63d211069648︡
︠33cacf2e-1294-4195-a386-369d7be45ca8︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7dc3883a-65d0-4afa-af22-669040b251ef︡

