︠db22de53-ef71-40ba-add7-02268c6bfc82︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡36d58b3d-e1d6-43e2-adbf-5b272a49635f︡
︠5952edd2-bc48-4276-a551-4ad72016989f︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡7f9c28a0-a5ce-4df6-a44b-59530732edb7︡
︠d276f9e9-99e6-48c6-ae0b-954f957c85a3︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d754e4ed-d76c-4ee8-a4d8-f6e4679d412f︡
︠995a9933-f641-45a9-a895-a3401a965a7e︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="PDM"></section></div>
︡e084b1ee-4d59-4ea4-a73e-de12e3c7a221︡
︠01185da3-cf11-48fb-ac7e-a5cc7bf43965︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡b77dfca9-0681-4711-a3d9-18ee46a4aee1︡
︠498b6881-287b-49ec-ab2a-4423279dc4bb︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section PDM</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡5f4dbb63-c8b4-4353-af05-a59d8c419155︡
︠cb5190df-397f-4da4-a0a5-64af13c6558a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">LU Decomposition, Triangular Form</span>
</h6></section></div>
︡b4606f13-f5d6-44a1-a9bc-e21913cda132︡
︠cf730d21-116e-48b9-aa45-7278c9b965ba︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">This is a topic not covered in our text.  You <em class="emphasis">can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> at <a class="external" href="http://linear.ups.edu/scla/html/index.html" target="_blank"><code class="code-inline tex2jax_ignore">http://linear.ups.edu/scla/html/index.html</code></a>.</p></div>
︡8790a9ed-bff1-4e8c-a721-da3420de9444︡
︠ecc8d71b-5da4-4e8d-ab00-cda02c1fbb4f︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-2">Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\text{,}\) and an upper-triangular matrix, \(U\text{,}\) that is</p>
<div xmlns:svg="http://www.w3.org/2000/svg" class="displaymath">
\begin{equation*}
A=LU
\end{equation*}
</div>
<p class="continuation">the so-called <dfn xmlns:svg="http://www.w3.org/2000/svg" class="terminology">LU decomposition</dfn>.  I sometimes prefer to call it <dfn xmlns:svg="http://www.w3.org/2000/svg" class="terminology">triangular form</dfn>.</p>
</div>
︡f3ccb93d-59af-4e98-ab59-b26528248efd︡
︠ee0abb4f-9984-496d-a213-bd5138a6c34b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">There are no exercises in this worksheet, but instead there is a careful and detailed exposition of using elementary matrices (row operations) to arrive at a <dfn class="terminology">matrix decomposition</dfn>.  There are many kinds of matrix decompositions, such as the <dfn class="terminology">singular value decomposition</dfn> (SVD).  Five or six such decompositions form a central part of the linear algebra canon.  Again, see <span class="booktitle">A Second Course in Linear Algebra</span> for details on these.</p></div>
︡02a1d5c2-56cd-4a54-a876-b340578fd531︡
︠044a5102-3680-4425-a8bd-f60365af5749︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">We decompose a \(5\times 5\) matrix.  It is most natural to describe an LU decomposition of a square matrix, but the decomposition can be generalized to rectangular matrices.</p></div>
︡95de02f1-437d-43b0-a94b-731868e1839d︡
︠d32a12d0-424b-4f87-af1b-a9ec154f6c30︠
A = matrix(QQ, [[-6, -10,  0, 10, 14],
                [ 2,   3,  0, -4, -3],
                [ 0,  -2, -3,  1,  8],
                [ 5,   6, -3, -7, -3],
                [-1,   1,  6, -1, -8]])
A
︡a03cb4f8-53b9-4fa2-a6a4-15d01e55dc21︡
︠cc1f9c38-58c0-42bb-a415-83a53c482244︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">Elementary matrices to “do” row operations in the first column.</p></div>
︡30150b23-47c0-48ec-a42e-ab140415d372︡
︠7a39f341-6892-4921-a564-30f45096569c︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B
︡817cb7f0-9593-4825-aa8b-ebcd01da8312︡
︠0a376ff5-f8b8-4b4a-a1e2-cce9afb893bb︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Now in second column, moving to <dfn class="terminology">row-echelon form</dfn> (i.e. <em class="emphasis">not</em> <dfn class="terminology">reduced row-echelon form</dfn>).</p></div>
︡5b593b82-17bc-4f70-aa8f-d5bce6b9e5d9︡
︠1346c824-a3c6-40cd-a175-04ac182c202f︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C
︡932eaf7c-4100-480c-a513-a184e9d06009︡
︠0ad29720-4624-47a4-a3f6-7a80f6ac60d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">The “bottom” of the third column.</p></div>
︡9d260be2-c28f-47fa-ab39-2b4ac306076d︡
︠e0a07ac6-d986-48f6-a2ba-ce608249840f︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D
︡1e0cf77b-e546-4bd6-a1f2-cc02c9402c52︡
︠c71c304b-c201-49ce-a0ee-2aa3c7c07fdd︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">And now the penultimate column.</p></div>
︡1a42683b-30d4-4170-a07e-f98ad5196984︡
︠6aead531-061e-4b35-ab4c-a363e38fdf96︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E
︡3f02ad7d-e840-46f3-acb7-85bf99219f12︡
︠64266d4e-b36f-43df-a69a-e20a1944bd4c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">And done.</p></div>
︡0a121805-6b8d-4aba-aa24-4075a9feeac2︡
︠7cd9fe2f-48ac-4658-a1fa-64bd95784531︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F
︡7bd55d47-c807-446c-ac8b-6ef1b9722c85︡
︠d01b5689-e51e-4d65-a92d-59c5b7e3a103︠
%auto
%html(hide=True)
<div class="mathbook-content">
<p id="p-10">Clearly, <code xmlns:svg="http://www.w3.org/2000/svg" class="code-inline tex2jax_ignore">F</code> has determinant 1, since it is an upper triangular matrix with diagonal entries equal to \(1\text{.}\)  By tracking the effect of the above manipulations (tantamount to performing row operations) we expect that</p>
<div xmlns:svg="http://www.w3.org/2000/svg" class="displaymath">
\begin{equation*}
\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.
\end{equation*}
</div>
<p class="continuation">Let's check.</p>
</div>
︡6e3898f2-2d83-4c5a-a1fd-f47ba3397ea7︡
︠11549fc8-2f6a-4320-ad4f-a341ee527c02︠
A.determinant()
︡31395c82-5b2c-455e-a622-5d6af4846007︡
︠2385de25-1813-4468-a3db-628cc715b86b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Yep.  But it gets better.  <code class="code-inline tex2jax_ignore">F</code> is the product of the “action” matrices on the left of <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡f8f8ec71-2894-4ceb-a528-18b95817ddf3︡
︠9fc88a5f-b885-4c54-a7a6-0bfb5536c14c︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action
︡4dc164bc-474c-4d11-a19c-89885ed85a99︡
︠7e63fc8b-8c3d-490f-aa19-7a2f28d002aa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">Notice that the elementary matrices we used are all lower triangular (because we just formed zeros below the diagonal of the original matrix as we brought it to row-echelon form, and there were no row swaps).  Hence their product is again lower triangular.  Now check that we have the correct matrix.</p></div>
︡c28258fe-37a6-4537-a4e9-d53056836961︡
︠323c5954-79c2-4016-a764-03a440ad306a︠
F == total_action * A
︡2ad572fc-6653-4954-afda-4dee13fc03c6︡
︠de0a48d3-44aa-4740-ac3d-68b56d869896︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So their product is nonsingular.  Futhermore, the inverse is again lower triangular.</p></div>
︡f6501a8f-ec38-47ad-a771-5d9130ec674f︡
︠e36348dc-7b9b-4406-a18d-3dbceecda25f︠
ta_inv = total_action.inverse()
ta_inv
︡23396714-39fc-444d-aa65-89335222fd54︡
︠c7701e72-3bb3-4807-a5be-b37e6d080f55︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">We reach our goal by rearranging the equality above, writing <code class="code-inline tex2jax_ignore">A</code> as a product of a lower-triangular matrix with an upper-triangular matrix.</p></div>
︡42dc2ea9-1d5c-40dd-a838-6ebec2bdacd0︡
︠113fd5d8-ff54-4b62-a8f5-153c40efd9ba︠
A == ta_inv * F
︡adbdc82a-1297-475d-a9ed-ff32c72a7f42︡
︠ae05bdee-7f11-4787-a425-215531c6c360︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-15">Yes!  So we have decomposed the original matrix (<code class="code-inline tex2jax_ignore">A</code>) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (<code class="code-inline tex2jax_ignore">F</code>, the original matrix in row-echelon form).</p></div>
︡60f76a45-9c4a-4eb3-a505-b3608a251f87︡
︠0f8f6eab-3378-4e54-a2b5-768e719a6a9f︠
A, ta_inv, F
︡29fa9593-0d78-466e-ab89-1f0ae8b7222c︡
︠1460ff69-377a-40d0-ae99-8a99471ff411︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">This decomposition (the <dfn class="terminology">LU decomposition</dfn>) can be useful for solving systems quickly.  You <dfn class="terminology">forward solve</dfn> with \(L\text{,}\) then <dfn class="terminology">back solve</dfn> with \(U\text{.}\)</p></div>
︡1367467b-0a27-4525-a61e-fa883c05cfae︡
︠1b2836fb-2064-47b7-ad29-c134a71acea7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-17">More specifically, suppose you want to solve \(A\mathbf{x}=\mathbf{b}\) for \(\mathbf{x}\text{,}\) and you have a decomposition \(A=LU\text{.}\)  First solve the intermediate system, \(L\mathbf{y}=\mathbf{b}\) for \(\mathbf{y}\text{,}\) which can be accomplished easily by determining the entries of \(\mathbf{y}\) in order, exploiting the lower triangular nature of \(L\text{.}\)  This is what is meant by the term <dfn class="terminology">forward solve</dfn>.</p></div>
︡cc2e5655-2758-4cd4-a4a6-d680b28dd4b8︡
︠b74e6a5c-f744-4001-a44c-b2232e6bb3f6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-18">With a solution for \(\mathbf{y}\text{,}\) form the system \(U\mathbf{x}=\mathbf{y}\text{.}\)  You can check that a solution, \(\mathbf{x}\text{,}\) to this system is also a solution to the original system \(A\mathbf{x}=\mathbf{b}\text{.}\)  Further, this solution can be found easily by determining the entries of \(\mathbf{x}\) in reverse order, exploiting the upper triangular nature of \(U\text{.}\)  This is what is meant by the term <dfn class="terminology">back solve</dfn>.</p></div>
︡bbe0a5a0-1a75-4e85-a0ca-c8cfbfd1a85a︡
︠f06d102c-0468-4951-af5e-a266116e2177︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-19">We solve <em class="emphasis">two</em> simple systems, but only do half as many row-operations as if we went fully to reduced row-echelon form.  If you count the operations carefully, you will see that this is a big win, roughly reducing computation time by a factor of half for large systems.</p></div>
︡b7814a27-73be-4c53-ad59-bfb16d3cc6d3︡
︠e9a7bf1d-7913-47d8-abbe-56d183ec0a2d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡e179828a-0031-43be-ac7a-ac07d9bb6b69︡
︠94a1e236-d371-45ac-a473-e20fad959f10︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-20">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡8b52c35f-a331-448c-a1c3-5b55a0335d26︡
︠5f7a46f2-3daa-4a89-a2d6-acd9031a15c3︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡513cc82c-b695-403e-aa6b-008ea91b321f︡

