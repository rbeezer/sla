︠9b3665d8-cd2c-4b37-a84c-ce1d9c7079c4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡46f8c6e9-fa61-4725-afb9-b78c428b3050︡
︠596523b0-cab3-4c26-a111-bd839d62992e︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡978fda28-af35-43f8-a91a-ad7211073906︡
︠79ef9bac-44b7-4ae7-a279-d2645865fae0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡06af53bf-0f4b-47ea-af12-8e4f3979e63d︡
︠d9f9aa3b-c649-4c05-a230-2a2800e0d974︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡94d8e831-3f88-4849-ae7c-fa61272170ae︡
︠4332c1bf-3ffb-4770-a167-d62485ca63a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2f46217d-0bd0-4747-a75e-f3418c647c81︡
︠db121339-044d-44b2-ac28-b2cf35ca9472︠
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
︡55d68eab-7a0b-4857-ab2a-3dc0d05aafe2︡
︠137eafd4-b4fc-4082-a734-271e7ffd9ac7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 LU Decomposition, Triangular Form">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">LU Decomposition, Triangular Form</span>
</h2></section></div>
︡cdb4c649-a0ea-4de2-af66-38d575473e1f︡
︠5ed13a78-3281-4d60-af57-69f4e7a3ed20︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is a topic not covered in our text.  You <em class="emphasis">can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="url" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><code class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</code></a>.</p></div>
︡d8fb9251-a933-4b09-ab0e-2682a7a4a92d︡
︠9f58aeb0-f593-4844-a204-03b9550faa8c︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-2">Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\text{,}\) and an upper-triangular matrix, \(U\text{,}\) that is</p>
\begin{equation*}
A=LU
\end{equation*}
<p>the so-called <b class="terminology">LU decomposition</b>.  I sometimes prefer to call it <b class="terminology">triangular form</b>.</p>
</div>
︡82cdb7c6-7cb1-4f45-a476-88931f91e3c7︡
︠04ad154e-bba7-4dac-a3e3-97b2ac13e07a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <b class="terminology">matrix decomposition</b>.  There are many kinds of matrix decompositions, such as the <b class="terminology">singular value decomposition</b> (SVD).  Five or six such decompositions form a central part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡88e25089-e459-4b24-a853-cea715439341︡
︠dc9bfec7-8bbd-4470-a9f5-cc4746c896bd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡79a04af1-17cd-4514-a5a4-b700e46bd029︡
︠e939a83a-9425-4286-a7e1-b98ca7113f15︠
entries = 
A = matrix(QQ, [[-6, -10,  0, 10, 14],
                [ 2,   3,  0, -4, -3],
                [ 0,  -2, -3,  1,  8],
                [ 5,   6, -3, -7, -3],
                [-1,   1,  6, -1, -8]])
A
︡90fc9a4c-4d17-424f-a9bd-a77341a53d54︡
︠3e52aecf-b1cd-48f1-a79c-544c78e1e1e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Elementary matrices to “do” row operations in the first column.</p></div>
︡612b4ca0-c629-44a9-a522-27673df2ed3d︡
︠1af36300-4c76-45b1-ae13-14a7be5b0484︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡1ae1d44d-599d-40f8-a1ea-5fff6bec6e0f︡
︠31913668-3b1d-482c-a13a-c89b8076dd5d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now in second column, moving to <b class="terminology">row-echelon form</b> (i.e. <em class="emphasis">not</em> <b class="terminology">reduced row-echelon form</b>).</p></div>
︡c8f5a2c0-a0cc-4d5e-aa72-43aef3f6ac4f︡
︠a08963b3-4631-4206-a0be-2f2de20e9bbd︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡b5e3e57a-8c0c-4d3c-a447-277446654f00︡
︠db5bf407-f930-4503-a258-a7f2b482ad2b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">The “bottom” of the third column.</p></div>
︡df63a67b-e741-47a2-aac7-36f28b61d0ef︡
︠bcf20997-57ea-4964-ac10-347360ed1bd0︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡b9dacd45-5ad4-447a-a93b-a7f1a5282340︡
︠40a1a6ef-b3a9-47e0-a183-d2bc3525d592︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">And now the penultimate column.</p></div>
︡6d20fd6e-d217-4c96-acbe-080b5408aed3︡
︠0413410b-fde1-44aa-aa66-97f925d3d72b︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡b3fc64d7-fd4d-4e98-a93e-fc6f6943c1bf︡
︠c63c3901-10e5-4dce-a552-45fb454891a5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And done.</p></div>
︡07b33fd3-1e3f-441c-a272-5c747cab53cf︡
︠9d65194f-d5e1-4523-a25a-4b6cfe999ed6︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡d643c6d0-5a64-4cb7-afdc-9280f7e8186f︡
︠f3637294-3ff9-43c5-aab3-756f5574d9d4︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-10">Clearly, <code class="code-inline tex2jax_ignore">F</code> has determinant 1, since it is an upper triangular matrix with diagonal entries equal to \(1\text{.}\)  By tracking the effect of the above manipulations (tantamount to performing row operations) we expect that</p>
\begin{equation*}
\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.
\end{equation*}
<p>Let's check.</p>
</div>
︡8c8fff29-4594-4ec0-a47c-7f1df726b009︡
︠485c85ca-e1f8-45e5-a62c-2ac48bbb27b2︠
A.determinant()
︡00b5d4aa-e9be-421c-a77f-4aa0e2c9df19︡
︠219e7722-11cd-4fee-ac55-b9f5ae877568︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Yep.  But it gets better.  <code class="code-inline tex2jax_ignore">F</code> is the product of the “action” matrices on the left of <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡e9a871fa-31bf-4ebd-ac73-23c197f1e765︡
︠04eac6cc-0fdc-4fb7-ad8f-0a2dcb4cc233︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡8486f5db-1ebf-4aab-a273-17d449f95cb9︡
︠f4d7add7-8e63-4e0e-a925-c4da8238b946︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡34a1c5e9-d683-4a64-a8f7-ecbb64dac841︡
︠f76a8307-cee5-418b-a61b-d088ceda993d︠
F == total_action * A
︡b351de4e-51c3-46ec-a24e-e1e6aa575f18︡
︠ccb2e902-7544-49a2-a5d7-4c8223d8b27d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡b4a668f6-b7cf-4b5a-aeb7-5f3e2620ed36︡
︠bea551d5-89c4-488a-a376-ac6eb95d94bd︠
ta_inv = total_action.inverse()
ta_inv
︡a6c5c179-6f33-44cc-aff3-590c8b5d9f24︡
︠ccb827a9-1194-45d0-a1cf-5296e2140b32︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We reach our goal by rearranging the equality above, writing <code class="code-inline tex2jax_ignore">A</code> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡00fb9123-b444-49a1-a9be-91037f593547︡
︠74760183-4379-4703-a9af-7407787c1a26︠
A == ta_inv * F
︡19a90aa8-dfb5-4836-acc0-c34dbc5297db︡
︠de578522-d029-45bc-ab79-c4c118d7a6e7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Yes!  So we have decomposed the original matrix (<code class="code-inline tex2jax_ignore">A</code>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<code class="code-inline tex2jax_ignore">F</code>, the original matrix in row-echelon form).</p></div>
︡2b673fc5-2a64-44bf-a176-a4b75cf24a92︡
︠2bd93180-6abc-4ef8-ad00-4b4f29c2c0c6︠
A, ta_inv, F
︡3e21752f-59a0-4680-ae51-fac39fd6196e︡
︠09d2a47d-4d6e-4ec7-aeac-096cd0ca6e4d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This decomposition (the <b class="terminology">LU decomposition</b>) can be useful for solving systems quickly.  You <b class="terminology">forward solve</b> with \(L\text{,}\) then <b class="terminology">back solve</b> with \(U\text{.}\)</p></div>
︡c47962ee-f3b5-4191-a98c-586c53d2e402︡
︠1d697cb5-aa86-4fa0-a139-d9136774958a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\text{,}\) and you have a decomposition \(A=LU\text{.}\)  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\text{,}\) which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\text{.}\)  This is what is meant by the term <b class="terminology">forward solve</b>.</p></div>
︡7a7e3eae-458d-4c87-ac9b-5757ace20888︡
︠2029e589-4cfd-49b5-a18f-de6261e43edc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">With a solution for \(\mathbf{y}\text{,}\) form the system \(U\mathbf{x}=\mathbf{y}\text{.}\)  You can check that a solution, \(\mathbf{x}\text{,}\) to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\text{.}\)  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\text{.}\)  This is what is meant by the term <b class="terminology">back solve</b>.</p></div>
︡7fca9af1-34e2-418e-a7a6-675cabe9028d︡
︠efca9649-88d6-4bff-a969-0c159b07519d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">We solve <em class="emphasis">two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the opertions carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡e7cb2617-0afe-41ad-a043-a50baa7b1ccb︡
︠7431495f-95fd-416c-ab5e-eec2d0c4aabd︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡832c4659-5ff5-4c0b-a9c1-7a04cd592f4e︡

