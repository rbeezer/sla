︠b94bab60-6124-42fa-a754-688f3a4b615d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5069b041-1b33-4062-aad8-f3073317f894︡
︠5e4c80dd-2e96-42ad-a54a-d4edc21e9063︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡5c2a8ab5-8d41-446b-a1b0-c85b61d7f686︡
︠ae2c9b64-1f25-416b-ad77-e403f65ce437︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡bd6e9f90-3af5-4f0b-abd3-2b72f7943896︡
︠a69299c9-30d8-4ce5-ae6d-41ab5b2979fc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="RREF"></section></div>
︡6930cda8-6d83-4542-aa38-78923fd685f8︡
︠26256e20-68df-4c33-aee7-76f1831699b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2de43425-59e3-48a6-ac94-31a323639fd5︡
︠7f3636b6-c0fa-4375-aa4e-e7f9b2c16513︠
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
︡a93ef74a-e0ad-4ae5-af89-e71e0d0cf720︡
︠bd9eb860-340d-41bc-a7b5-1ac38d099f1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">To specify a matrix, first specify that your entries are rational numbers, <tt class="code-inline tex2jax_ignore">QQ</tt> in Sage parlance.  This is extremely important, though an explanation is best saved for later.  Then the number of rows and columns.  Follow this with a list of rows for the matrix, where each row is another list.  We use square brackets, <tt class="code-inline tex2jax_ignore">[, ]</tt> to organize lists.  To actually see <tt class="code-inline tex2jax_ignore">A</tt> we just write it as the last line.</p></div>
︡0ca9b621-6557-4372-affe-408141e5b85c︡
︠458fe351-5b6a-4292-a591-3d2ce7edca51︠
A = matrix(QQ, 3, 4, [[-1,  1,  1,  1],
                      [ 2, -1, -2, -3],
                      [-2,  2,  1, -1]])
A
︡696f853e-689c-43b6-a61f-75da2c109eae︡
︠f18501b4-f1c8-4e04-a465-4eb18ddae688︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Then use the <tt class="code-inline tex2jax_ignore">.rref()</tt> method to compute the reduced row-echelon form.</p></div>
︡47addbe8-fdac-468c-aad3-011b2a80476c︡
︠0b4a8257-b445-41ae-ad5b-06d210ca0017︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-3">Use a new cell, enter <tt class="code-inline tex2jax_ignore">A.rref()</tt>, and execute the cell.</p></article></div>
︡d122cb41-2f67-4571-a357-f6dd8fd4ad5c︡
︠42e74a38-c583-4cda-ae10-6163ee3b3e98︠
︡aea96e39-70e0-43bd-ae9f-ef143f37b655︡
︠e0399a7d-3fd2-4f0d-ade7-dd7e1be539b8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Here is a larger example.</p></div>
︡fa9232db-f0ad-43ae-a18d-86a05cc31fcd︡
︠7c71ea3c-63c0-410b-af14-cab7a0373560︠
B = matrix(QQ, [[ 0,  0, -1,  3,  3, -1,  2, -1],
                [ 1, -5,  0, -4,  5, -2,  4,  4],
                [-1,  5, -1,  7, -2,  2, -5, -7],
                [-1,  5,  1,  1, -8,  3, -6, -3]])
B
︡2ecafb43-7a64-4b84-a776-c407bb7e2b39︡
︠b6780635-aa01-4fc9-a440-a04a8f60e8b2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-5">As above, use a new cell to compute the reduced row-echelon form of <tt class="code-inline tex2jax_ignore">B</tt>.</p></article></div>
︡1789f902-fadf-4bcb-a400-5a09599b9844︡
︠a5b3fbcf-dc9a-4b57-a798-7e3888124aa8︠
︡f4eb8d65-c416-4fcb-a645-fb423cb5fff9︡
︠8fd7a540-a14b-4838-a4ac-998dcca71971︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡3f006a6b-b1d0-4d54-a5af-238b157cc964︡
︠f4452e4c-e87d-4d7e-a92c-d58487c1bf95︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡699bfc93-87c0-4597-a429-0ff947019c03︡

