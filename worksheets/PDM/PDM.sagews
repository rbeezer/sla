︠78a9f729-9f57-4cb5-a3e4-7745822b94f4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡17dc0d43-6d2b-44f7-aa35-fbd305621f61︡
︠489149f8-d560-41bf-a963-f5ec9e2f13e8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡530e5584-e5a4-46cf-a655-94b714634873︡
︠0c61ab63-f48a-49f6-a95c-ee0a62fd535c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡759d649d-7920-43bf-a954-5336e98d6e0c︡
︠e060d3fa-7d4f-4276-ad08-573b0d0dddf3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡2d38e0ce-a3bf-42d6-a9b6-10e4be2ccf9c︡
︠2b954861-6142-407f-a70a-e2ac66b9278b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡3b7d1c68-dd92-4faa-af1b-9fd4c4a7ddf6︡
︠932103d7-cb46-4e30-a922-4c220e7b6485︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section PDM</span>
</h1>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Spring 2019</div>
</div>
︡b18e2920-0ec4-44b8-a54b-7979c8834e8d︡
︠43fc2264-362f-4b7a-a3cf-f397d5058440︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">LU Decomposition, Triangular Form</span>
</h2></section></div>
︡2841564b-b72e-46d5-a112-105a73f897dd︡
︠8f6d1c35-8fda-4d47-a359-579b11e1a887︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is a topic not covered in our text.  You <em class="emphasis">can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="url" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><code class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</code></a>.</p></div>
︡616ce882-e01b-4bef-a325-c7c62e81f297︡
︠9f90c785-966b-4219-a14c-6133761f7021︠
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
︡8b11ce95-33ca-4eeb-a8f0-461799db95bb︡
︠7478636f-9a25-4403-a083-1ca344c2f67b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <dfn class="terminology">matrix decomposition</dfn>.  There are many kinds of matrix decompositions, such as the <dfn class="terminology">singular value decomposition</dfn> (SVD).  Five or six such decompositions form a central part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡1ff976de-5688-4bd9-aed2-2ffc230e6f5d︡
︠b6cbf41d-373c-4fe9-a9d7-bf6ab9ec74cc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡273f2334-07b3-43b2-ac4f-40ebba496ce2︡
︠909c0c04-01bc-45e7-a7bc-6fc4b7ef15bf︠
entries = 
A = matrix(QQ, [[-6, -10,  0, 10, 14],
                [ 2,   3,  0, -4, -3],
                [ 0,  -2, -3,  1,  8],
                [ 5,   6, -3, -7, -3],
                [-1,   1,  6, -1, -8]])
A
︡740010d2-5d40-499e-a109-d799b41a4200︡
︠27538745-993d-49d7-a8e7-2bec5a165595︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Elementary matrices to “do” row operations in the first column.</p></div>
︡5cdb0524-abee-498b-a009-8357fa20176b︡
︠dc8a7809-db5b-49f3-a4f4-e873f7d18f9e︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡a7b223b2-d8d2-4371-a7b1-b9a3daaab295︡
︠14cd7e02-0dae-40e5-a261-41be5880342d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now in second column, moving to <dfn class="terminology">row-echelon form</dfn> (i.e. <em class="emphasis">not</em> <dfn class="terminology">reduced row-echelon form</dfn>).</p></div>
︡a4161952-b6f6-4504-aa2a-c6c7520e2335︡
︠0da24bb9-e70e-4e5e-a201-dc8a4dd4cf7f︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡48deb1a7-b9fb-47d0-a500-7edf81d5695d︡
︠9a669273-92c8-4e46-aea6-f14d0ded3478︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">The “bottom” of the third column.</p></div>
︡20296bbe-f51c-4ef0-a4ea-aebebcba9ef0︡
︠7219b857-65d7-41b7-a205-ca389f459e49︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡fbb0578a-ff0c-4618-ad38-30379c6d20b6︡
︠9a15b6c3-1c22-4893-a177-9b8c2198eb9a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">And now the penultimate column.</p></div>
︡125370a4-4c07-4e91-a2a8-9342063af268︡
︠d8a2b236-6826-400f-a13a-aceeff429350︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡b2865488-af1c-461d-a630-0ddeccd1f754︡
︠717f7c30-5df6-4a58-a8bc-8ca6a63782fd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And done.</p></div>
︡76ee66b9-7076-472c-a0a8-c3469fcc75f6︡
︠26c15270-cf03-4686-a280-b530bdf896d8︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡c0f814b9-4785-4bed-a216-2cb6c73cfd2d︡
︠6ed57e93-7eb0-436e-a180-8bc329b65a38︠
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
︡7a75ff39-2b7e-4cb5-aacd-b4988b1327e5︡
︠0607bf6f-89a0-476b-ac18-acd4450692e7︠
A.determinant()
︡8ee8598c-8163-41ea-adbb-5582ad8a31d2︡
︠9507e616-3a79-4d88-a753-3b8bd385dc7b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Yep.  But it gets better.  <code class="code-inline tex2jax_ignore">F</code> is the product of the “action” matrices on the left of <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡f10f9f6a-595d-4325-ab9b-ed7784a1a8e2︡
︠3d34dd33-88dd-450f-abb9-796e0f3b0e3f︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡06d4aa2e-ea6b-47cb-a776-0f07e161c70f︡
︠616361e8-fc26-4792-a21a-919a97b0977a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡7ebe2100-9fdc-4545-a877-218cb2472eea︡
︠86835b55-ce49-4aae-a026-75801426b549︠
F == total_action * A
︡fc080545-a04f-4af9-a90c-072883cba71e︡
︠10b29c7d-22e7-4186-ab16-81eaa7e628e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡7f431ef9-b2b9-49d2-af93-6155cfca6f34︡
︠3b48e66e-f21b-4ba8-ada2-11376073ad3e︠
ta_inv = total_action.inverse()
ta_inv
︡27a7f8d6-7c89-4733-a01e-2306a661a1fe︡
︠025a9437-ba33-44b7-a7c8-6fc656dc88d8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We reach our goal by rearranging the equality above, writing <code class="code-inline tex2jax_ignore">A</code> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡6dab740a-bb5f-4e9b-a517-e87bfc1c9a47︡
︠2b4d6c17-7c2d-4c17-a779-f6261133dcd2︠
A == ta_inv * F
︡30d8d45f-bdcd-4a8f-a2f6-bfce5df80d5e︡
︠f8fd1c16-cd38-4ae0-a900-0cfca5aaeb73︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Yes!  So we have decomposed the original matrix (<code class="code-inline tex2jax_ignore">A</code>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<code class="code-inline tex2jax_ignore">F</code>, the original matrix in row-echelon form).</p></div>
︡96c83e55-4128-49d7-aa78-b75b3f0e9f91︡
︠227fbbd1-1234-4bc1-a278-a30fe4ff29eb︠
A, ta_inv, F
︡a0e20aed-bf0e-43bb-a4e3-d86e84283412︡
︠0c3ee39c-14c1-43fd-ae4b-12480dc35087︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This decomposition (the <dfn class="terminology">LU decomposition</dfn>) can be useful for solving systems quickly.  You <dfn class="terminology">forward solve</dfn> with \(L\text{,}\) then <dfn class="terminology">back solve</dfn> with \(U\text{.}\)</p></div>
︡28357290-ea5b-4c8b-a97f-592a137e7cff︡
︠31877090-08a6-437f-af06-e60102580c40︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\text{,}\) and you have a decomposition \(A=LU\text{.}\)  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\text{,}\) which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\text{.}\)  This is what is meant by the term <dfn class="terminology">forward solve</dfn>.</p></div>
︡b8140949-9524-4b6c-ab5d-2432544bc571︡
︠53977a1c-4a16-4fdc-ab81-8a5cdb026c8e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">With a solution for \(\mathbf{y}\text{,}\) form the system \(U\mathbf{x}=\mathbf{y}\text{.}\)  You can check that a solution, \(\mathbf{x}\text{,}\) to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\text{.}\)  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\text{.}\)  This is what is meant by the term <dfn class="terminology">back solve</dfn>.</p></div>
︡dd175926-5617-4c15-a9de-a68026c38301︡
︠1df354d8-b3ec-4aae-a03b-ee17f4dc76f7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">We solve <em class="emphasis">two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the opertions carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡71565bb2-3651-430c-a100-deff5f43bb9a︡
︠31c98153-48a9-4ada-a7fa-8d97ce6111cb︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡c0c9a5af-8e72-4820-a290-d1d69a4fb618︡
︠2e9f7342-2d1a-4f9c-a0c6-098ef19414b3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡dd16c991-cced-46e7-a2e3-9fd1dd2614bd︡
︠b715589e-6178-41b4-a149-5ad91b3a8999︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡54179603-564c-4f67-a37c-dc7b6979403d︡

