︠0e195dcd-69c2-4e2c-a710-7b789fee86ba︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡6b975e52-cbb8-4eaa-ab2c-b9722010fa7b︡
︠4e6e6cdb-e979-4254-ac16-9c00e21030bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡bf92e0eb-bd53-4679-ab4a-2d72e65f7902︡
︠4c2ef0ee-cab1-4e28-a7dc-2f9a27087718︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡a64c44d3-2add-4bc0-a44d-06da10218a9a︡
︠02460cb8-e7c5-4607-a9ce-9670956749a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡abcf2ccd-4a51-4fb2-a75e-6f5dfe3567e1︡
︠19cd9f95-ce02-400e-a373-1e27c15f6c75︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡d8fa589f-e6de-48ee-a616-a34ca1e004c8︡
︠aa0a552e-4152-4fd0-ad42-4e59b0a90bed︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section PDM</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡38832d95-be61-406e-a143-48291dac6a74︡
︠8ad0e0d8-696d-4a73-a997-cd0e72c1e3c5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 LU Decomposition, Triangular Form"><h1 class="heading hide-type" alt="Section 1 LU Decomposition, Triangular Form">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">LU Decomposition, Triangular Form</span>
</h1></header></section></div>
︡84064f62-7dbd-4a65-aefe-5cc6b38756a1︡
︠b36c9ab0-d2d9-407f-a65e-5bb1165ada08︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is a topic not covered in our text.  You <!--Style me with CSS--><em>can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="external-url" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><tt class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</tt></a>.</p></div>
︡ccc285d4-5a72-438a-a3e0-23cd4d3a8158︡
︠a1564db1-21c9-4401-ae4f-f63b38972198︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\), and an upper-triangular matrix, \(U\), that is \begin{equation*}A=LU\end{equation*} the so-called <em class="terminology">LU decomposition</em>.  I sometimes prefer to call it <em class="terminology">triangular form</em>.</p></div>
︡93aeaec6-0f7d-48bd-aaa1-a98d4b6e38fc︡
︠190b8b94-1a49-47d5-a57f-729f0eb6cefb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <em class="terminology">matrix decomposition</em>.  There are many kinds of matrix decompositions, such as the <em class="terminology">singular value decomposition</em> (SVD), where five or six form part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡b04bbd75-18f6-4273-a7cb-73d02dfd4bc3︡
︠773c3e9a-3b33-415b-a4d7-f4bd5ea4ce09︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡2705443d-f793-4ba8-a6f6-efaacf973564︡
︠e8bfdf41-d386-4741-a0b1-69004c0d342a︠
entries = [[-6, -10, 0, 10, 14],
[2, 3, 0, -4, -3],
[0, -2, -3, 1, 8],
[5, 6, -3, -7, -3],
[-1, 1, 6, -1, -8]]
A = matrix(QQ, entries)
A
︡81241f35-0199-480e-a909-a63b77774bc7︡
︠64988a8c-f9d9-4269-a10a-ab1d684e09ad︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Elementary matrices to “do” row operations in first column.</p></div>
︡101a8a40-6494-4dcb-a7db-18625cbabc35︡
︠945bfd53-ec88-4165-acd2-7fbe10adb5ae︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡b430f2e5-6d2e-4544-aa02-d8187392048b︡
︠33f73ea2-40f6-4f5a-a4fb-6d486bb0dc55︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now in second column, moving to <em class="terminology">row-echelon form</em> (i.e. <!--Style me with CSS--><em>not</em> <em class="terminology">reduced row-echelon form</em>).</p></div>
︡79960c5b-f9be-40b3-aa03-661bf77a846d︡
︠ad634709-202e-4e29-a2d9-5407ffe6a7b0︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡46eba22b-b5be-43a1-accf-62379378a1f6︡
︠14c0f732-2e7e-4da8-af74-ee72515c90e9︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡60d30db3-fe27-4c01-a4f9-9d71fd25ac58︡
︠5c83080b-c09e-475e-a9ad-24ba6a780146︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">And now the penultimate column.</p></div>
︡9a31d3ae-e6f7-447d-a308-03ccd274b750︡
︠dfa0084b-6216-4a6d-a79d-0a0d6d0d2b58︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡b27638e8-35a5-4b5b-a8d4-5df6a54a2667︡
︠f1a68ef6-63b1-4866-a4e3-8417abdf505c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">And done.</p></div>
︡84e2b61b-c8e8-4a7f-a1be-4426cd19c7a2︡
︠32715376-e4fd-4d95-acb0-b05e62c7c8e6︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡b2824d6c-4404-41ee-a6b9-769d4ff06b95︡
︠258a8c8e-8c29-4047-aeb2-72910d0fe7b7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Clearly, <tt class="code-inline tex2jax_ignore">F</tt> has determinant 1, since it is an upper triangular matrix with diagonal entries equal to \(1\).  By tracking the effect of the above manipulations (tantamount to performing row operations) we expect that \begin{equation*}\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.\end{equation*} Let's check.</p></div>
︡dec58420-2bd5-44e9-acd4-f478675674e3︡
︠bb1819d4-aff8-4536-ae03-3f8a7e1d5913︠
A.determinant()
︡cdfd5172-5224-4a78-a069-498d30b5d1ff︡
︠4bc49250-5b27-40df-a8e5-22eaf2ab88c7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Yep.  But it gets better.  <tt class="code-inline tex2jax_ignore">F</tt> is the product of the “action” matrices on the left of <tt class="code-inline tex2jax_ignore">A</tt>.</p></div>
︡81355c7b-cc6f-446c-a3fa-81d7bca682f4︡
︠a86ddba5-772d-4663-a392-d24b9f846076︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡51ebfc7a-1e13-4b7a-afb3-2866406c4dcb︡
︠31d2dde4-7038-43f0-adeb-1147788e4cb1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡8e35002f-59f9-4238-a217-d282a0a2eff9︡
︠0783c94f-9998-42bc-abed-2b0bebb8da7d︠
F == total_action * A
︡484dc160-0f99-48c5-a473-2af26dd16bce︡
︠816ce2d4-3e4d-48d9-ad11-14c062e445f0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡372a40c1-5f0a-4c87-a659-86d473767bb7︡
︠ceee83f5-4454-4e2d-a592-e19c61fe7793︠
ta_inv = total_action.inverse()
ta_inv
︡f61e4a13-0686-4b68-a8c2-aa447b569de2︡
︠0e82cddd-1d39-43e0-ac6c-f1736eeb5794︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">We reach our goal by rearranging the equality above, writing <tt class="code-inline tex2jax_ignore">A</tt> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡aa23ce09-b27e-4cbd-ad84-9751abf97401︡
︠9abbd89e-2519-44e4-a1bd-644b5f758fa9︠
A == ta_inv * F
︡134ce248-16e2-4020-a54b-2a07667ebfd5︡
︠9e8db7f0-007e-4371-a4d5-0000766e42e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">Yes!  So we have decomposed the original matrix (<tt class="code-inline tex2jax_ignore">A</tt>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<tt class="code-inline tex2jax_ignore">F</tt>, the original matrix in row-echelon form).</p></div>
︡77105c85-d864-479c-a8da-deaee145097f︡
︠bf6d0c99-1717-4b90-a81e-2fccdbe21fb9︠
A, ta_inv, F
︡e795491e-2254-491d-aa9f-8bf58c17e26a︡
︠b514a5eb-31e9-467a-a423-3af208f1fe46︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">This decomposition (the <em class="terminology">LU decomposition</em>) can be useful for solving systems quickly.  You <em class="terminology">forward solve</em> with \(L\), then <em class="terminology">back solve</em> with \(U\).</p></div>
︡8fba46f2-1340-4da8-a7ea-b14a4533721b︡
︠9ab44fa4-2c86-4c50-a5cf-f8143596909b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\), and you have a decomposition \(A=LU\).  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\), which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\).  This is what is meant by the term <em class="terminology">forward solve</em>.</p></div>
︡c2576a61-e9e7-4fbc-a009-ff11347da0d3︡
︠ca621dc7-eb0c-4207-ae18-81792ae978a5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">With a solution for \(\mathbf{y}\), form the system \(U\mathbf{x}=\mathbf{y}\).  You can check that a solution, \(\mathbf{x}\), to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\).  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\).  This is what is meant by the term <em class="terminology">back solve</em>.</p></div>
︡c6f280f4-8e09-4b2a-a31b-b9c23fd185a3︡
︠a69a91b9-6486-4e39-a86a-424147028972︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">We solve <!--Style me with CSS--><em>two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the opertions carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡c296c388-cec5-45a8-af3f-971d86588d2f︡
︠230705ce-8e86-4c32-ac86-a9d84e860119︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b4dcce18-c975-4f38-a201-8ba63e4c55e6︡

