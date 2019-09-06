︠b92bd6c8-f905-49c7-a6d3-5de98a66b497︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a50c0e3d-6367-4803-a071-3cf267cce718︡
︠fcdf8eec-b4f1-4c72-af89-1c60ec8b962a︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡f16c1faf-b54b-4702-a90b-2179265b1e24︡
︠915fd7f8-6adb-454b-a8eb-31dba010b3ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡78fc7d46-5a12-4577-a1f6-d37af1a11640︡
︠152a82b4-d320-4b0e-a72f-1b68c38293ec︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡2f149975-e480-4441-a3b3-2df96bdee72c︡
︠34c495e0-ac53-4da7-afd3-3002a6d85cf7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡92b575b5-662b-4905-a1f3-52464ec272e6︡
︠9795c1a7-70d9-4c79-a298-6eaa4f91103f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section PDM</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡7c70131c-b8c8-4290-acb9-417fcbf5c060︡
︠0dc7deaf-a687-4eb0-af7c-8cefcabb08c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">LU Decomposition, Triangular Form</span>
</h6></section></div>
︡8c35314e-1e4a-4635-a62c-3b91a5b61bed︡
︠1795dd71-b8f0-4254-a8c7-4f2d0c3c3471︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is a topic not covered in our text.  You <em class="emphasis">can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="external" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><code class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</code></a>.</p></div>
︡199bf686-74e7-451d-a99a-0e93ca0f734e︡
︠558e174a-dcec-434d-a0d6-ae4410f10654︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-2">Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\text{,}\) and an upper-triangular matrix, \(U\text{,}\) that is</p>
<div class="displaymath">
\begin{equation*}
A=LU
\end{equation*}
</div>
<p>the so-called <dfn class="terminology">LU decomposition</dfn>.  I sometimes prefer to call it <dfn class="terminology">triangular form</dfn>.</p>
</div>
︡5aad8b4d-5294-4ed8-abd6-2857d78c983e︡
︠c887513a-f9d8-4db5-a673-cac219996219︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <dfn class="terminology">matrix decomposition</dfn>.  There are many kinds of matrix decompositions, such as the <dfn class="terminology">singular value decomposition</dfn> (SVD).  Five or six such decompositions form a central part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡1e2a68c9-3b20-440b-a963-d2da5e4e8a1a︡
︠4396dfe9-915b-429b-ae31-104fb9ef869a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡0eda5b93-525a-4e83-a966-b77072a512bb︡
︠cc9a6e50-2a28-4411-a8b7-f6f67691bb46︠
A = matrix(QQ, [[-6, -10,  0, 10, 14],
                [ 2,   3,  0, -4, -3],
                [ 0,  -2, -3,  1,  8],
                [ 5,   6, -3, -7, -3],
                [-1,   1,  6, -1, -8]])
A
︡7131ba00-a3ad-4bfe-ac79-4603d797852d︡
︠c9efb99b-93e4-41a3-af7b-8b19ff0969e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Elementary matrices to “do” row operations in the first column.</p></div>
︡6a249ee3-9877-4c82-a079-b05d94cad33b︡
︠c96fefdc-364a-4e12-a12a-aebfb448e1c2︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡d8c37a34-76bc-419e-a4b0-e5ea5aea3dbf︡
︠f98cdf60-4e7f-4b89-a9d4-aca96f459825︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now in second column, moving to <dfn class="terminology">row-echelon form</dfn> (i.e. <em class="emphasis">not</em> <dfn class="terminology">reduced row-echelon form</dfn>).</p></div>
︡82f0ecf5-d444-43fd-ac9a-146bdcb12494︡
︠a27a2662-c361-4890-a56a-07e63b3ed537︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡ae928b9f-e534-46be-a705-20d070cbea02︡
︠2b0bd876-85cb-4a26-a9a7-ec8bd0cabb4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">The “bottom” of the third column.</p></div>
︡d66e247a-af06-4aa9-a144-8201ee1b8c6d︡
︠734e2729-1d81-442b-ad3f-1c22d11ecaa2︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡826c1833-1419-465c-a130-14c479588232︡
︠4b5b763b-a50b-4f60-ac84-ca89f0249b7c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">And now the penultimate column.</p></div>
︡db737f9b-b30b-4f02-a0ca-484d13d486f0︡
︠3dba03a9-e5df-41cf-a3db-d142e66baf2a︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡f57b08ea-2d0f-4c1c-ab4a-72bc4a2b6ca8︡
︠69ee5f63-a90a-49dc-a690-002bc76e2cbd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And done.</p></div>
︡42631b28-fc10-47ad-a306-4177c3e221fe︡
︠e405720a-a06b-40d6-ad16-457bc4fb71c7︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡0ab1f230-cd03-4911-aff2-637ee43efb0b︡
︠205d1505-5c36-4fc8-a0c7-33ba29f68e18︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-10">Clearly, <code class="code-inline tex2jax_ignore">F</code> has determinant 1, since it is an upper triangular matrix with diagonal entries equal to \(1\text{.}\)  By tracking the effect of the above manipulations (tantamount to performing row operations) we expect that</p>
<div class="displaymath">
\begin{equation*}
\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.
\end{equation*}
</div>
<p>Let's check.</p>
</div>
︡948f2a42-faf3-41e0-a9fc-030be25d8dba︡
︠54ee4098-3932-4c41-acd1-9e49a2cf05db︠
A.determinant()
︡f30e24fb-d341-4515-a6d3-772c0cfdbf29︡
︠a2cb1ff1-ad4f-4e90-a40d-774945632225︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Yep.  But it gets better.  <code class="code-inline tex2jax_ignore">F</code> is the product of the “action” matrices on the left of <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡bc888977-a25f-4138-a189-f01395908c2b︡
︠2d8a603d-7e0d-4e11-a729-0191536f3fb5︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡ad32893c-7bb7-4898-a90b-21db23e9229e︡
︠74cb744a-1c5c-43d5-ac66-89755a833b6d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡ae1798bd-2d98-49d5-af9c-515d7a70ebc4︡
︠8639dc29-9563-4d00-a2fa-f4c413f94e40︠
F == total_action * A
︡3c666428-dcd4-40a4-a1d3-bc881ac130f7︡
︠02479abb-3980-4d8b-a299-556dd77a9ba8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡2bb7341f-0488-4561-a08a-9e00be7380f3︡
︠92f4929a-19fa-4240-a349-ee7fe3d67676︠
ta_inv = total_action.inverse()
ta_inv
︡918861bf-cd9b-47cf-a804-2e39d2db9410︡
︠bb23385f-81c1-4d4e-acde-1fc49a665fb7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We reach our goal by rearranging the equality above, writing <code class="code-inline tex2jax_ignore">A</code> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡0622a6af-5212-44e7-a2b4-1c4d0d874e7f︡
︠5757afd5-f280-45cf-acfa-1075e837f757︠
A == ta_inv * F
︡7afc29cf-ec26-4c73-ac43-654db25fa56f︡
︠ceabbc57-c44e-4a06-aedb-13151c87b2d2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Yes!  So we have decomposed the original matrix (<code class="code-inline tex2jax_ignore">A</code>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<code class="code-inline tex2jax_ignore">F</code>, the original matrix in row-echelon form).</p></div>
︡291d5cab-46f8-45a9-ab86-6aa70b4830b0︡
︠3ea4bf05-b5ca-4d14-a6dd-d377b730060c︠
A, ta_inv, F
︡63a08608-cbe8-46ba-aa27-7fbf777a7707︡
︠37be8349-c15a-49b5-a358-bd76ded495c9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This decomposition (the <dfn class="terminology">LU decomposition</dfn>) can be useful for solving systems quickly.  You <dfn class="terminology">forward solve</dfn> with \(L\text{,}\) then <dfn class="terminology">back solve</dfn> with \(U\text{.}\)</p></div>
︡c017e9a3-3748-41d3-a719-fd6744628f74︡
︠934bb256-68da-40e8-a35a-d574dc83e036︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\text{,}\) and you have a decomposition \(A=LU\text{.}\)  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\text{,}\) which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\text{.}\)  This is what is meant by the term <dfn class="terminology">forward solve</dfn>.</p></div>
︡5ca975cc-b259-4d57-a59d-0638a0423336︡
︠98331b8e-841d-4ee2-a54c-3427cd710b43︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">With a solution for \(\mathbf{y}\text{,}\) form the system \(U\mathbf{x}=\mathbf{y}\text{.}\)  You can check that a solution, \(\mathbf{x}\text{,}\) to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\text{.}\)  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\text{.}\)  This is what is meant by the term <dfn class="terminology">back solve</dfn>.</p></div>
︡2dc61e1a-c9fd-46dc-a930-5658e2663618︡
︠a466a74b-1150-4fbd-ac51-da723659c80d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">We solve <em class="emphasis">two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the opertions carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡1b271ce6-808d-4179-af4e-01983ce96a26︡
︠831aa379-af93-4cbb-a5af-3a0c3491dfcf︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡6428fdb6-6660-492c-a486-3c1484825512︡
︠5867065c-dc33-4cc6-a81e-f5a093515b77︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡dc0440a9-d850-4b2d-a1be-0a3abdd1e3c5︡
︠4b83800c-7578-48cf-a0ef-6b3d52f03167︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡2a3adbbe-823f-4bbc-aaca-a25d0bffb312︡

