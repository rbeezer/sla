︠f5c6e836-103b-4101-ad06-c26b87027be8︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡5ee14d97-3b77-4798-a879-e3b5e4de74a6︡
︠df4b188a-0c68-43d1-ac58-54c19a579db3︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡3827440d-e095-49d2-aa98-3ed0f7a5e32a︡
︠7639e7de-4cfe-428b-a434-d73a7212805a︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ad1d7f45-d91d-4745-a299-761a18d3a530︡
︠64de34b1-a8ad-4d2c-ae00-e1eb54c79080︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="EE"></section></div>
︡df4ae8e9-9924-46f6-a3e7-3d828e75505e︡
︠02d5dbdb-5758-4bb8-a2e6-92424d0b26c8︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡4db228e0-4379-4c25-a454-be6f0bc07f73︡
︠7b02d3bb-4ffb-49be-aef3-2a28a2463b5a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section EE</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡ed6f033b-f7be-4349-a129-5448dea24eda︡
︠8c8fc82f-416f-40a4-a9b6-31b79954ba29︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Eigenvalues and Eigenvectors"><h1 class="heading hide-type" alt="Section 1 Eigenvalues and Eigenvectors">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Eigenvalues and Eigenvectors</span>
</h1></header></section></div>
︡5b5da26d-1be8-4be2-af8e-6c0139b8e620︡
︠07c5577b-4963-4212-a41a-37739ad43bb6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A \(6\times 6\) matrix with “nice” eigenvalues.</p></div>
︡cbd813f9-f426-4747-a999-4c0bfa5de88a︡
︠e46cd70d-1f14-4588-ad22-66e71e17b004︠
A = matrix(QQ, [
    [-31, -23, -16,  12, 120, -17],
    [ -3,   7,   0, -12,  60, -21],
    [-28, -14,  -9,  -4, 152, -30],
    [-36, -20, -16,  -1, 192, -32],
    [ -9,  -5,  -4,   0,  47,  -8],
    [ -1,   1,   0,  -4,  20,  -3]
    ]) 
A
︡bf91c69c-4ac6-4e1e-a7f1-9578d97e12f2︡
︠7a10ce75-ab06-41e8-a067-1fd98b3fa529︠
p = A.characteristic_polynomial()
p
︡7948a061-51c5-48e4-a1ea-90a6921d2c24︡
︠59ea28a9-90a6-4634-aa42-5d3f4c26942b︠
p.factor()
︡9858270c-0adb-413f-a5d3-821b2584c29f︡
︠e273babb-7b64-4777-a6d5-a57b1a19fec8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p></div>
︡dab4d6f8-2648-4ab0-a12d-6c3e7489e77a︡
︠045c9328-c5e0-4e8c-aeaf-b0bfe337c2f4︠
A.eigenvalues()
︡cf82c25e-a149-4222-af0c-ecd9bccf3913︡
︠de360f85-e372-4d94-af85-c7190d5dc96e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-3">Create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p></article></div>
︡d3c09df2-3e5a-4024-a52d-be4d74ad2778︡
︠54c146e4-812e-4c31-a093-e412197b792e︠
(A-( )*identity_matrix(6)).rref()
︡282e9758-bdae-4c61-ad7a-05f280b0c29e︡
︠0c73b0a0-95e3-43aa-a572-088fa0f50c8a︠
(A-( )*identity_matrix(6)).rref()
︡a962c126-2cc0-4f0b-aa62-c6b46556b524︡
︠0dd7fa92-1bed-4bee-a784-95b591ae864a︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-4">Examine the eigenspace for the eigenvalue \(\lambda=3\text{,}\) using Sage's right kernel command and the pivot basis.</p>
<p id="p-5">Use a basis for the eigenspace to create eigenvectors of <tt class="code-inline tex2jax_ignore">A</tt> for the eigenvalue \(\lambda=3\) at will.</p></article></div>
︡a577c615-8307-40c5-af3d-4d2f2c1db930︡
︠4e5b6128-6bb7-42b4-a7b7-5f58e85050a9︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6
︡1e76ae8c-6f81-46ad-aa28-277806157651︡
︠0608da65-7d4f-4eba-ab6c-394b2523a9a0︠
B = E6.basis()
B
︡aa7a345a-ac7f-4c5a-a611-35a80dd207ba︡
︠865f1836-3e3a-4df0-a861-9a742710a176︠
v = *B[0] + *B[1]
v
︡c0d1fea3-5d19-48e8-a87f-a0915c96c484︡
︠a4476360-6be8-4467-adfe-dae6c426bfa3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We can check this.  Compare \(Av\) with \(3v\text{.}\)</p></div>
︡3487ceb2-f1ed-4a34-a104-feee5a281d7b︡
︠1afa2b9d-e8fc-469f-aab0-faed938cb9a3︠
A*v
︡4cd4600f-de8c-4ae6-a991-98c866be278d︡
︠bd982f92-f617-43b6-a95f-be877ed2d0a6︠
3*v
︡e537e677-87e9-4e15-a4ba-469dd0bb39ce︡
︠fa43229a-a218-4c09-a154-c9b569625ac1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Here's an easy check:</p></div>
︡8ccc0ff9-a9cb-428c-ac91-15bcb2525ac1︡
︠c4e91e80-8294-4ecc-ab86-d9c858baa056︠
A*v - 3*v
︡21b1acf3-c766-4b43-a80b-ed4a59214d29︡
︠35bf65b5-88ce-4f83-a203-ee1297cc819a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">Can you make more eigenvectors?</p></div>
︡ad06d6b9-b428-4321-a751-a30c6a327b30︡
︠6ee64cd0-5847-4189-a2ff-4a2468f9b65f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Eigenspaces, Eigenmatrices"><h1 class="heading hide-type" alt="Section 2 Eigenspaces, Eigenmatrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Eigenspaces, Eigenmatrices</span>
</h1></header></section></div>
︡7cd63220-3797-4fbf-a9de-828b6f368fce︡
︠e3ac9eeb-e238-4933-a9c1-84310a03092c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Continuing with <tt class="code-inline tex2jax_ignore">A</tt> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p></div>
︡71f2d90c-5fe8-478b-ab18-cadfcdac1a63︡
︠6e4602f1-e51d-4d95-a947-112f1ecbad51︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p></div>
︡1cf62f82-1772-455b-aaf0-2014032ceda3︡
︠ec0e22db-5f3c-4182-ad21-e42f922bf199︠
A.eigenspaces_right()
︡58656884-3d36-4a5f-ac31-e1601034c255︡
︠cad2f4b8-8f5b-4601-a5d4-7b5ec6efaa20︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">The <tt class="code-inline tex2jax_ignore">eigenmatrix</tt> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <tt class="code-inline tex2jax_ignore">i</tt> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <tt class="code-inline tex2jax_ignore">i</tt> of the first matrix.</p></div>
︡0fae1a2d-2ac8-4629-a777-be21cf7bf251︡
︠251d4286-fa0c-437e-ade5-4a47b163c651︠
A.eigenmatrix_right()
︡78786cbe-2b93-47ca-a6a8-ce205e1c1d26︡
︠faf7353e-36ac-4929-a383-c52f58d74e56︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <tt class="code-inline tex2jax_ignore">C</tt> next, but was not the case with <tt class="code-inline tex2jax_ignore">A</tt> above.</p></div>
︡5415c4a0-3e6d-4b00-a449-80eb033da7c0︡
︠e15f6131-26f9-44a9-a4fd-d8ec3ef6cad8︠
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
︡bc90b02e-2451-4e9c-a8eb-6c348638df3b︡
︠7e71e220-1456-4530-a1be-d1b16389b58f︠
C.eigenmatrix_right()
︡00d71ba3-cb71-42d5-a3f1-2c2de8062cca︡
︠bdb84c4f-01b7-43e4-a814-930c1f5157e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><header title="Section 3 Fancy Footwork"><h1 class="heading hide-type" alt="Section 3 Fancy Footwork">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Fancy Footwork</span>
</h1></header></section></div>
︡29fd2497-398f-41cd-a64e-ae2bb3a05074︡
︠29d16060-79a0-48cc-a521-4d079bb3b143︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-13">A totally random matrix is unlikely to have a characteristic polynomial that factors if we restrict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\text{,}\) the set of all algebraic numbers.  (This is the set of all real roots of all possible polynomials with integer coefficients.)</p></div>
︡57d3943f-4b8f-4c1b-a87e-acca355f911d︡
︠4641ad5e-caa5-4967-a5ee-39bf3e59eeaf︠
D = random_matrix(QQ, 10)
D
︡bf6010e7-fb29-41bf-a81e-75725a1a4f8f︡
︠f4e55063-75f9-4f05-ae97-c0c321e3b334︠
p = D.characteristic_polynomial()
p.factor()
︡22818d1f-1950-4341-a92a-0fac3de10954︡
︠e7668f49-e534-4668-a7fa-10acdd9bfa54︠
p.roots(ring=QQbar, multiplicities=False)
︡e3b5935d-d431-4897-a007-b275f4280135︡
︠6281725d-0313-449c-abad-350abffe8f0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-14">If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p></div>
︡46ed76fd-3004-434d-a0f7-e3ded8ed76c7︡
︠21d1f57f-2af2-4e26-ac36-419107ae4151︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E
︡883692b0-1eb1-4093-a767-da86c9e6738d︡
︠41587fb3-0d1b-4e24-a19b-9751e1bc82f1︠
p = E.charpoly()
p.factor()
︡0426ca57-e550-4033-a55c-0e46027bf0ee︡
︠1e344ffa-7efc-4e00-a155-e533b453f44e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p></div>
︡36c6b15a-bd9b-4a8b-aa90-0863b281675a︡
︠5912fc35-7f31-4ad9-a583-68bdc7f495bf︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
p = F.charpoly()
p.factor()
︡018237f7-d670-481e-a176-4ee0bb7bf01b︡
︠01d84103-8da0-4d22-ab39-278173cffc00︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">This is such a common operation, that Sage has a shorthand method for the <em class="terminology">Factored Characteristic Polynomial</em>, namely <tt class="code-inline tex2jax_ignore">.fcp()</tt>.</p></div>
︡70249669-9f74-4f56-a10a-b313497196d9︡
︠74a993f0-d9f4-4de9-a4fa-ebd0f29633d0︠
F.fcp()
︡c456dfad-f76e-4b4d-a58d-f68d7701e34c︡
︠40197e92-c992-4857-a5bf-3b6b8d38e2c2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Nothing short of amazing!</p></div>
︡e03fabe4-dad7-4d5c-a4b8-4e3bab8e4701︡
︠ae1dec9c-067e-4d54-aaa0-2ee599127698︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-4"><header title="Section 4 Numerical Matrices"><h1 class="heading hide-type" alt="Section 4 Numerical Matrices">
<span class="type">Section</span><span class="codenumber">4</span><span class="title">Numerical Matrices</span>
</h1></header></section></div>
︡7379155a-261a-44ff-a9a9-9c87221349ae︡
︠1128a3e0-e060-4bbf-aa49-4d6c58e6c3f6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">If we use <tt class="code-inline tex2jax_ignore">CDF</tt> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p></div>
︡11839378-368a-4635-a5e9-f275fcee3a13︡
︠134a6ede-604f-4ab3-a011-a04163e411f3︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()
︡4169cd79-cda1-4c5c-a05e-1fe6159fab1a︡
︠0ed1b400-9eab-4b1f-a148-acfb70444fa7︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0a5dc12c-1cbc-476d-a772-02efe502a414︡

