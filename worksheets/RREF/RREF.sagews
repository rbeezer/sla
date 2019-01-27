︠4424f6da-f225-4f43-a3bd-00baf4fdfe32︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡1764c6b9-1ac4-4fb8-a3f4-0f4c94081064︡
︠28b9d708-113d-4539-ae68-277741b59c50︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡089c1641-f533-4396-ad7d-6a4d19ece883︡
︠99c26d9a-f903-4d4c-a314-17e55fe4bdc4︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡06ed84a2-eacf-4d93-aad5-fece32d269f3︡
︠92af1010-a39d-4ff8-a907-26562ca3d1b3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡e4594795-7380-4180-aa21-2577ba36d189︡
︠46da0119-79d0-4af9-aa9b-cb042ce62c8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡5c126148-bb18-4cc8-a571-13d270e5712f︡
︠c7bea20e-bbac-4479-acc0-ed3cfbce13f3︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section RREF</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡3caea51b-4c6f-49b6-a282-36f63f2fd33d︡
︠76925476-fb36-4bd1-a1fa-3203942c3006︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <code class="code-inline tex2jax_ignore">QQ</code> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <code class="code-inline tex2jax_ignore">[, ]</code> to organize lists.  To actually see <code class="code-inline tex2jax_ignore">A</code> we just write it as the last line.</p></div>
︡d7c791b1-8bdb-4188-a298-cdbd15131542︡
︠b2979395-4102-4c1a-a544-d019e2e0605b︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡20dc86f2-b43c-460d-a161-5427d0ac01c6︡
︠ce7ab00a-2cf6-4867-a67d-7d194eafab07︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <code class="code-inline tex2jax_ignore">.rref()</code> method to compute the reduced row-echelon form.</p></div>
︡1d687188-cb5b-41e1-a848-6c675b6fa1ab︡
︠8c9e510e-ac9f-47be-a843-1af715275d90︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>
</h6>
<p id="p-3">Use a new cell, enter <code class="code-inline tex2jax_ignore">A.rref()</code>, and execute the cell.</p></article></div>
︡81c20130-fdd9-4d44-acd8-ff2f6449ca65︡
︠af771794-8815-42fa-a7b8-fa72ad7e639d︠
︡93c0ad83-21c3-47f3-a26e-a69193e0254b︡
︠3defe9d7-df8a-430a-a620-4c7dd01c0325︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡e53d5273-9422-4f62-a9c4-a111ef10b23e︡
︠714bfad6-d6b0-48a6-ab42-0e41f2112c36︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡bb7f6794-d7b8-4743-aef7-106525836afa︡
︠1b69ad04-1dcc-4630-a910-130782d054b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>
</h6>
<p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <code class="code-inline tex2jax_ignore">B</code>.</p></article></div>
︡ec055b25-043c-40a0-a142-1552dd4adaf8︡
︠fe503ac5-0ca4-49ae-a9c2-be8105e50cff︠
︡5fda005c-6590-4a2b-a8c8-b8639798c94c︡
︠9ac65c7a-8e02-4fa4-ab30-3e9a221bae5f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡afa65f3d-9cc9-4ec4-a377-3b6d68f84a6a︡
︠a1948f4b-dd89-4765-ac9d-3d9aaf2a774e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡1f0b49a8-476d-41e3-a7ac-5eae84ebe523︡
︠e09cd108-4f30-4f19-a3b6-8b559977bd0b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0fc9cabc-30c6-40c7-aaf3-17f6d804fb20︡

