︠c2ad9fef-32c5-4412-a4c4-379b13731585︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡b4852150-192d-4e6f-a1bb-5f2ea4217360︡
︠9251773d-846b-4242-a15d-dac0975b8cff︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡d912b9ae-633c-4e61-a076-d51a5b1a6976︡
︠95fa8a32-9a5d-4743-a84b-f101b6cd1378︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡90d9a63e-9d9e-4a03-ad97-8989a4f620a9︡
︠6ad4cb0b-75de-4568-ad03-2839a04dea70︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SD"></section></div>
︡8db61722-2a70-48d7-a1b7-4d077b8b875f︡
︠7ed25f98-1c29-4cb6-a3d1-b1fc96722098︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡007d3dcd-5e97-4762-ae9f-051f2b69d9a6︡
︠1a788a55-7a41-42c7-a5a1-4a76a9113ead︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section SD</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡5c8c507b-6e6a-4086-a8d0-92b096aa8d93︡
︠aff2b433-0926-432e-a9ac-a4f658df25cc︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Similarity</span>
</h6></section></div>
︡87c898dc-bd5d-4390-a22a-eded34603850︡
︠5e716194-d513-425d-a27f-d6dc400a1437︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p></div>
︡495cbcd4-0b92-4fc7-acef-cc598a985ac8︡
︠1127dd3a-246c-4658-ad17-cd326bd042b1︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B
︡bc2d4fa8-acc0-4825-a107-8d4c0b7dbcf6︡
︠da3f77f2-faec-4b7e-a18f-81dddd85a419︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">This next command might be broken, and might even just hang.  My fault.  It will be fixed, using rational canonical form, for Sage 7.6.  See <a class="external" href="https://trac.sagemath.org/ticket/18505" target="_blank">Trac ticket #18505</a> for the details.</p></div>
︡be4eec6e-e68d-4244-a15d-0dfdacb32583︡
︠f3241108-0ee9-4c1d-a122-f30e1abced26︠
A.is_similar(B)
︡11946b66-4653-4f14-ad26-f1af0cab999b︡
︠fad9f355-99cf-4cc0-a193-795285e317ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Diagonalization</span>
</h6></section></div>
︡3b50554a-bd47-4c13-ad2d-0a66cfcb2d3e︡
︠86ae703b-ae8f-4650-aa32-74cea9d64f48︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <code class="code-inline tex2jax_ignore">eigenmatrix</code> commands.</p></div>
︡ece9a59e-04d9-433f-a4d2-656331c1711b︡
︠908793d3-1e7e-47b2-a7f0-95609a15b97c︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Diagonalize the matrix \(A\text{.}\)</p></article></div>
︡50de8615-9341-42cc-a43b-4d1aea500097︡
︠df7ad01f-6b2a-4c46-a99a-4e76950e51ef︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ])
A
︡8cf07d08-c64f-4004-a7ae-1fc855e64473︡
︠4ff3f610-fe63-4d74-a2ee-00dc922786c0︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5"><code class="code-inline tex2jax_ignore">S</code>, the matrix whose columns are eigenvectors, will “diagonalize” <code class="code-inline tex2jax_ignore">A</code>.</p></div>
︡90f94f05-ff36-431d-a73c-64c31563cfa9︡
︠f49feeee-4ee7-4419-a19c-ef1a22f86c81︠
D, S = A.eigenmatrix_right()
D, S
︡576f64e5-3231-4982-a2ac-f8b12d3269ee︡
︠a4604c52-2846-4ade-ad09-9014141568f5︠
S.inverse()*A*S == D
︡699cad90-0b84-4232-a103-a93cd50eb77a︡
︠cd46af43-f4f8-481b-aa3b-de41a17a0217︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Here is an equivalent formulation.</p></div>
︡ce514f08-2fc2-4744-a3f7-ec53e055a58c︡
︠d5b36f26-7564-47e9-ac18-405a33a895e2︠
A*S == S*D
︡2c7dfec2-547b-49f9-a2cb-a0bfaf258ca7︡
︠ed35a347-59cd-445d-ae79-91a41544ac05︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Now, in contrast, a matrix that is not diagonalizable.  Try to diagonalize the matrix \(C\text{.}\)</p></article></div>
︡3e274ca9-4020-4e65-ab4d-5eff20474f35︡
︠4646e939-2794-478b-ad40-b9ea91ad8fcb︠
C = matrix(QQ, [
    [128,   20,  44, -50,  236, -18, -330, -565],
    [ -23, -16,  -5,   6,  -40,  27,   62,  128],
    [ -44, -12, -15,  16,  -78,  20,  110,  207],
    [ -2,   10,  -4,   3,  -10, -23,   20,   -9],
    [ -61,   5, -25,  27, -116, -26,  153,  225],
    [ -12, -12,  -1,   2,  -20,  24,   34,   82],
    [ -23,  -3,  -8,   9,  -42,   2,   57,   99],
    [  13,   6,   3,  -4,   23, -12,  -35,  -72]
    ])
C
︡512a703b-9623-4aab-a68f-6394d2580e8d︡
︠9dec86db-1714-4acf-a627-68a0c8221209︠
D, S = C.eigenmatrix_right()
D, S
︡0a7e7f54-b6bc-4b68-aadb-133c30563694︡
︠09f7867d-b246-4f0d-a8aa-3ce6927e8a52︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">The zero columns in <code class="code-inline tex2jax_ignore">S</code> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <code class="code-inline tex2jax_ignore">C</code> is not diagonalizable.</p></div>
︡f5ced544-2f77-4667-a4e2-e2ed98f078bc︡
︠ba278fcd-4fdc-4742-af81-17304d84dfd9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">A second consequence of the zero columns of <code class="code-inline tex2jax_ignore">S</code> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p></div>
︡c83efcec-92c7-4e3b-a134-34b7504d42d1︡
︠b99f89b6-6582-4d76-a899-cde843991dbe︠
C*S == S*D
︡f7896031-697f-4c47-a2d0-bad922dbbe97︡
︠c9e52455-6cfe-4bb2-a2ef-3a914c318ff1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Perhaps simpler is the built-in function <code class="code-inline tex2jax_ignore">.is_diagonalizable()</code>.</p></div>
︡6ca41d97-3033-4eff-a02d-067a7c6adf9d︡
︠009b5b9e-2ce6-40c6-afd9-cdf4860e1dda︠
A.is_diagonalizable()
︡aeb4a0f4-e21d-491a-af07-9c581de1cffa︡
︠aa85e35e-7418-42a9-acaa-4369b77a9398︠
C.is_diagonalizable()
︡e43792af-0241-4b6c-a537-f7a616d807ca︡
︠0bf3295d-86fd-48a4-a4f7-bfe650d39ea6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Nearly Diagonalizable</span>
</h6></section></div>
︡9b18e314-0abf-473a-ab8a-2491af182b6c︡
︠1f727658-b636-46aa-a062-b965b14d9680︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">A matrix that is not diagonalizable will always be similar to a matrix that is <em class="emphasis">almost</em> diagonalizable.  The “nearly diagonal” matrix is called the <dfn class="terminology">Jordan canonical form</dfn> of the matrix.</p></div>
︡39fbb621-fd73-44ed-aee4-1ad8f99463be︡
︠3e72a39c-59ac-4cea-aad9-fe4d64608c33︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-3"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">3</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">While beyond the scope of this course, use Sage to compute the Jordan canonical form for the matrix <code class="code-inline tex2jax_ignore">C</code>.  Notice the eigenvalues of <code class="code-inline tex2jax_ignore">C</code> on the diagonal and the 1's on the <dfn class="terminology">super-diagonal</dfn>.</p>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-13">Peculiarly, the similarity matrix need not be computed to get the form, and it is a significant computational expense.  So we ask for it explicitly.</p></article></div>
︡a721ac53-8ad3-47a2-a24f-b4e015476c3a︡
︠0d12fbe4-f7ec-4a56-ac8b-c3fb4018875b︠
J, T = C.jordan_form(transformation=True)
J, T
︡158378e6-cedb-4b71-a249-d1ddc1ed964e︡
︠164a9b28-1f6f-4a26-ac4b-52c2f84e6e5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-14">The transformation matrix, <code class="code-inline tex2jax_ignore">T</code>, is invertible and will “almost diagonalize” <code class="code-inline tex2jax_ignore">C</code>.</p></div>
︡c6101bc4-3e3a-4dec-a4a0-ff2c22561b46︡
︠71c82e4f-27d6-42b4-affe-0fe3b15186dd︠
T.inverse()*C*T == J
︡d4e9d181-0b8e-41b9-a5a9-4b83e4445cb2︡
︠987824aa-5b5e-4979-a3d4-c1054e993f6e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-4"><h6 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">4</span><span class="period">.</span>
</h6>
<p xmlns:svg="http://www.w3.org/2000/svg" id="p-15"><dfn class="terminology">Rational canonical form</dfn> is another interesting version of this idea, try <code class="code-inline tex2jax_ignore">.rational_form()</code> on <code class="code-inline tex2jax_ignore">C</code>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  Learn more about <dfn class="terminology">companion matrices</dfn> if this makes you curious.</p></article></div>
︡2f6989d2-32d9-4071-aaae-f7ffc4e6e154︡
︠f7460cfe-f30c-4d13-aece-cb6cb2199fae︠
C.rational_form()
︡3957064f-4335-4f07-a3f3-2bf88ab9448e︡
︠3c8849e8-92bc-48bd-affc-2282a0d691b2︠
C.fcp()
︡0ee97325-bb87-4712-a502-13495fa26441︡
︠7406d790-d4b6-4b37-ae87-1aa54f5e2b36︠
((x-1)^3*(x+2)^3).expand()
︡dabd0949-91e5-48a8-af81-69c1f014f302︡
︠add6adff-7915-4f9f-a788-9f2502617557︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡80457e37-da0e-40f7-a070-91fb60ed2527︡
︠ca80fff3-6dd7-4be7-a3ee-480447424676︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-16">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡e4165064-4d11-44d0-ab1f-a57a9b1de546︡
︠9397c4d0-26db-458c-a865-fff889d70f8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡81e19a56-a8d8-4421-a1a7-7a663ff0700f︡

