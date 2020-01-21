︠fe9f8912-389d-40c4-a241-936f3824a7e0︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡7ef0d79e-ad64-4a71-af96-03972df41ac0︡
︠a3e93b1d-9cb0-4157-a251-8542c7fcc168︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡11bfbfad-d498-44ad-acd3-d681958914a8︡
︠cca8c577-24bc-4c07-aac5-d9b6b5b4ed99︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡6660e265-98a5-4566-ad12-2ecd5830c1e5︡
︠d6a6bfbd-4b6e-4471-a47f-f0694e28628b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡261ccdb8-b031-4e88-afd0-fc066448dab6︡
︠6dc89965-2156-433e-ac3c-c38d9e1d7f83︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡5f027abd-fdf4-4328-a2ec-ebf7886a6e9f︡
︠1ee206cc-3c93-41d5-aa04-6ef667fc16ab︠
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
<div class="date">Spring 2020</div>
</div>
︡5b94eaaa-6d60-417e-a62e-b8cbf23ee549︡
︠095ae348-eb64-4b7c-a9ee-7974467856d9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">LU Decomposition, Triangular Form</span>
</h6></section></div>
︡fd35718c-967f-4b37-a8d5-75ee9351ba79︡
︠4767ce94-a2b1-4265-a9e2-f57e412a2e5a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is a topic not covered in our text.  You <em class="emphasis">can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="external" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><code class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</code></a>.</p></div>
︡791d1dba-26dd-47f3-ad92-f8876d887b6d︡
︠5e66b747-26ef-446f-a838-a213980218d8︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-2">Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\text{,}\) and an upper-triangular matrix, \(U\text{,}\) that is</p>
<div class="displaymath">
\begin{equation*}
A=LU
\end{equation*}
</div>
<p data-braille="continuation">the so-called <dfn class="terminology">LU decomposition</dfn>.  I sometimes prefer to call it <dfn class="terminology">triangular form</dfn>.</p>
</div>
︡636ca24e-a658-459e-a411-db4efe70089e︡
︠1f18bca0-a56f-4dc8-ac09-de52d50451de︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <dfn class="terminology">matrix decomposition</dfn>.  There are many kinds of matrix decompositions, such as the <dfn class="terminology">singular value decomposition</dfn> (SVD).  Five or six such decompositions form a central part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡0fd279e1-986f-484c-a10d-beb10861db3b︡
︠a4b76204-49db-496f-a570-32ee4f7a1555︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡1f9c70f7-4312-4eb9-ae11-f44e38ea2f08︡
︠517eefed-7309-46f4-a0e6-1db5bed99f9a︠
A = matrix(QQ, [[-6, -10,  0, 10, 14],
                [ 2,   3,  0, -4, -3],
                [ 0,  -2, -3,  1,  8],
                [ 5,   6, -3, -7, -3],
                [-1,   1,  6, -1, -8]])
A
︡7ecfdafc-8608-4f68-a467-a846d04a9ea3︡
︠82241ff1-c77c-4063-a9ba-0624cf41ae04︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Elementary matrices to “do” row operations in the first column.</p></div>
︡1874d93d-a041-4c58-a0e3-aead26d78768︡
︠c813cfc0-c601-48d6-a0d4-482e5552dd93︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡56b7a866-83d9-4456-ab64-fac2927e44be︡
︠81449ecf-5532-4f78-a63e-a297429c0d1c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now in second column, moving to <dfn class="terminology">row-echelon form</dfn> (i.e. <em class="emphasis">not</em> <dfn class="terminology">reduced row-echelon form</dfn>).</p></div>
︡cad1e6fb-6519-4801-a064-f1788cb29b0a︡
︠8c46d3dd-e32f-4da0-afb6-4a7c308e21a2︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡c2f18c45-a29d-4277-a273-9bd08110f329︡
︠6fc60534-ad74-4aab-a2d2-56e3764874ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">The “bottom” of the third column.</p></div>
︡e39a9afc-eaa6-4e50-aa7e-dd4c1c364ba1︡
︠594f3ea3-b8d5-4fcb-a073-e50312f59404︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡56da6190-4482-4a8f-a586-87b9adc925d2︡
︠9386de86-fcb8-4f60-aeb9-4400ebda5f03︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">And now the penultimate column.</p></div>
︡296b04a8-b956-414d-a228-b7dc8c756c57︡
︠f80631ae-a57f-4c94-a9b6-26e026cac361︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡a6abcdc7-c7c3-469c-ab37-26e06073b361︡
︠518fc5d9-c909-4d72-aa25-24b0421c5cfb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">And done.</p></div>
︡e4c649b2-28b2-419a-a33c-951556772d31︡
︠92669af4-d1c8-44e2-ae15-bbac0028846c︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡6fec5774-c469-4db7-afa8-55402504e994︡
︠5033d9a4-d794-407f-a779-0ce4c1ad686f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-10">Clearly, <code class="code-inline tex2jax_ignore">F</code> has determinant 1, since it is an upper triangular matrix with diagonal entries equal to \(1\text{.}\)  By tracking the effect of the above manipulations (tantamount to performing row operations) we expect that</p>
<div class="displaymath">
\begin{equation*}
\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.
\end{equation*}
</div>
<p data-braille="continuation">Let's check.</p>
</div>
︡dbf0fcaa-181b-4c12-ab89-4963e2480a07︡
︠ad3ae279-c91e-44df-a788-1d2710a68b19︠
A.determinant()
︡2c75667e-f470-42cd-a236-b44dc6d7c52e︡
︠f4a691c1-fc66-4c82-aab6-06b537b1e870︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Yep.  But it gets better.  <code class="code-inline tex2jax_ignore">F</code> is the product of the “action” matrices on the left of <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡6651de2a-0166-482f-abda-1e0c344f538c︡
︠4f390083-a841-4ed3-ad91-8af972dc23fa︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡0394c945-dfd1-40cf-a4a8-5234bb7979d6︡
︠3ead2777-c469-4676-a5c0-e1326fdd9476︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡bb4587c0-e944-43ac-a908-afad10cfe545︡
︠cf015982-96bd-4be8-a779-028af9ac982d︠
F == total_action * A
︡efcf0289-42ff-40be-a836-138ad8485d17︡
︠af77f797-0d90-4d9c-ac2f-243be03299fb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡1aa8190a-108b-4155-ad27-c4c00a14dadc︡
︠5e6068a6-2c7a-4790-ad62-537137b4b9f8︠
ta_inv = total_action.inverse()
ta_inv
︡557c5d40-47cc-4145-a21b-47fb83248ed7︡
︠73ce02c5-21cf-4de4-a206-e4de0512a917︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">We reach our goal by rearranging the equality above, writing <code class="code-inline tex2jax_ignore">A</code> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡18bd6bf3-024c-421a-a64a-c2f91ff229c3︡
︠1dbcb27a-58da-44fc-af60-a239c49b7b54︠
A == ta_inv * F
︡f61b3cda-7335-4e84-aa7b-a2deca356a1b︡
︠e020b5c9-04d3-49bb-ae53-9057e11177c9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Yes!  So we have decomposed the original matrix (<code class="code-inline tex2jax_ignore">A</code>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<code class="code-inline tex2jax_ignore">F</code>, the original matrix in row-echelon form).</p></div>
︡3b95b5b8-fbcc-4f68-ab4e-eee45d67fdfc︡
︠63709264-a507-420d-abb2-9908e664e51e︠
A, ta_inv, F
︡18198bbf-f650-4d80-ab3c-dd6e545c842a︡
︠2324cb08-b0e0-40c8-a17c-d5934f79b0ed︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This decomposition (the <dfn class="terminology">LU decomposition</dfn>) can be useful for solving systems quickly.  You <dfn class="terminology">forward solve</dfn> with \(L\text{,}\) then <dfn class="terminology">back solve</dfn> with \(U\text{.}\)</p></div>
︡a11d5e96-6465-4461-ad89-95e28220cd0a︡
︠abbc81a1-706d-46b4-a88c-122f5a27be5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\text{,}\) and you have a decomposition \(A=LU\text{.}\)  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\text{,}\) which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\text{.}\)  This is what is meant by the term <dfn class="terminology">forward solve</dfn>.</p></div>
︡9f64cf56-1d77-4ad2-ae5b-b7ed7389b380︡
︠f1065c5b-368a-4e38-a12e-dd5bbcf35b7e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">With a solution for \(\mathbf{y}\text{,}\) form the system \(U\mathbf{x}=\mathbf{y}\text{.}\)  You can check that a solution, \(\mathbf{x}\text{,}\) to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\text{.}\)  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\text{.}\)  This is what is meant by the term <dfn class="terminology">back solve</dfn>.</p></div>
︡b6fcc592-1c99-468d-af9f-d7c237e2b4d2︡
︠3992668f-89b2-432a-a014-febc1e401f5f︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">We solve <em class="emphasis">two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the operations carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡289baf13-facb-4dfd-a80f-cfe8cf700805︡
︠82d1d80f-bfa8-4a78-a8f8-8c86446b5645︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡bc79d51e-4dee-4596-ae15-7a1f064619d5︡
︠e9152fa4-df2b-4e84-a466-9d0bd11183b5︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡89faf29a-6798-4271-a7c7-e55f12124950︡
︠b4b1593b-fd49-4390-a961-c80965296eb4︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡469f8e9c-99ad-43d7-a37d-5466dcc062e2︡

