︠2f518bdb-e723-4224-a8a8-0fef44f144d2︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡4f1a095e-5368-478b-ab16-31521a70cb59︡
︠d99f4a89-8ede-4647-a208-84ad7b8ec591︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡e7b86f2f-9bd6-4a4b-a16c-ae04c8056ca0︡
︠e97a1d93-d3ea-498f-a5a5-144290aa5170︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡2599fa79-d4cc-4f65-aebf-4c48ed898eaf︡
︠3d92d794-dab9-4166-ac24-9ae1e6383f25︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="B"></section></div>
︡362c8032-51d1-4ae7-a0a9-44435299bc8e︡
︠2b448d5b-0add-4b7b-a386-ddb1113aaf72︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡dae2e603-20ef-4e97-aac0-19ecbfdfa7e2︡
︠acc8faff-e2fd-42e6-aa83-a9d8598282a7︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section B</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡4430d3bd-2af2-4710-aeb9-2620f897b2a5︡
︠9fad080c-5264-45e6-a6d2-f09208aa06ca︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Bases">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Bases</span>
</h2></section></div>
︡c6a63ae3-646d-49cc-af29-21ab3b4e5442︡
︠f0997c45-0ba7-4833-a525-e5791a45999d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Five “random” vectors, each with 4 entries, collected into a set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡c9e52527-b225-4ab8-ad0b-3f1a825c7e61︡
︠c2ab8d1a-4dd6-4371-ac51-780938b8537b︠
v1 = vector(QQ, [-4, -2,  3, -11])
v2 = vector(QQ, [-2,  7,  3,   9])
v3 = vector(QQ, [ 6, -4, -7,   5])
v4 = vector(QQ, [-1,  0,  3,  -4])
v5 = vector(QQ, [-4,  5, -5,  11])
S = [v1, v2, v3, v4, v5]
︡44def6b0-0fdd-4615-a7da-952ae639e8c6︡
︠30a1f97b-a8a8-4519-ab96-53b8d9e13d90︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Consider the subspace spanned by these five vectors.  We will make these vectors the <em class="emphasis">rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).  This is an application of Theorem BRS.</p></div>
︡3d1ef176-c2e6-4b48-a4f1-b546d20c349d︡
︠5da6b973-036f-4a13-a363-418986b93edd︠
A = matrix(S)
A
︡c3a69601-a050-4002-a338-7890127dbac9︡
︠78c2e68f-73fd-43fd-a531-db97ba9274d3︠
A.rref()
︡e4ba7a00-9839-4669-a3cd-4a8e148a70f5︡
︠4da081a8-1414-4e7b-a8b7-601fe337eb7d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Sage does this semi-automatically, tossing zero rows for us.</p></div>
︡0bbab3c6-cdbe-4296-ad21-4826709b886f︡
︠57b1275e-d2b9-40d3-a7a5-8feb65c00487︠
W = span(S)
B = W.basis()
B
︡3eef0065-e47a-4d87-a0f2-682449909a42︡
︠1800711d-601e-4af7-a2f7-550894134be9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-4">Construct a <em class="emphasis">random</em> vector, <code class="code-inline tex2jax_ignore">w</code>, in this subspace by choosing scalars for a linear combination of the vectors we used to build <code class="code-inline tex2jax_ignore">W</code> as a span originally.</p>
<p id="p-5">Then use the three <em class="emphasis">basis</em> vectors in <code class="code-inline tex2jax_ignore">B</code> to recreate the vector <code class="code-inline tex2jax_ignore">w</code>.  Question: how many ways can you do this?  By Theorem VRRB there should always be exactly one way to create <code class="code-inline tex2jax_ignore">w</code> using a linear combination of a basis of <code class="code-inline tex2jax_ignore">W</code>.</p></article></div>
︡df1e08f2-6628-44d7-ac07-35d3d78fbca9︡
︠58977906-c6de-4f2c-a7ec-f22c604effaa︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w
︡80317ab8-17fe-46e0-a36f-f51127165160︡
︠ce1f09ac-1b30-4aaf-aad5-adabed20482a︠
w in W
︡9e8ad938-5539-45e3-a481-93e4ed21e6a0︡
︠03e9ec22-4878-41c6-a51f-7b25f132218c︠
*B[0] + *B[1] + *B[2]
︡18002ec5-01d7-4af4-a055-0c121035266b︡
︠38448625-b369-4b18-a01d-61a74c881be7︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Nonsingular Matrices">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Nonsingular Matrices</span>
</h2></section></div>
︡62fa6819-ddc4-4685-af87-de875d3e5594︡
︠cf6cac5b-6292-460a-acf3-3d1c57995fef︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">We will obtain a basis of \(\mathbb{C}^{10}\) from the columns of a \(10\times 10\) nonsingular matrix.</p></div>
︡3bf9896d-5d0e-4f6e-aa3e-d6cf227cbcba︡
︠ce5b8e4f-bacb-49c2-a876-74c34f5bc187︠
entries = [[ 1,  1,  1, -1, -2,  4,  2, -3,  1, -6],
           [-2, -1, -2,  2,  4, -7, -4,  5, -1,  7],
           [ 1, -1,  2, -2, -5,  8,  5, -3,  4, -4],
           [-1, -2,  0,  1,  0, -5,  0, -3, -5,  6],
           [ 0, -2,  1, -1, -2,  3,  2,  3,  3,  7],
           [ 1,  0,  1, -1, -2,  4,  2,  0,  2,  0],
           [-1,  0, -1,  1,  3, -1, -2,  7,  5,  1],
           [ 1,  1,  1, -1, -2,  8,  3,  2,  8, -6],
           [ 0,  2, -1,  1,  2, -1, -2,  2,  2, -6],
           [ 1,  3,  0,  0,  1,  3,  0,  0,  3, -8]]
M = matrix(QQ, entries)
M
︡b461fff4-fbfb-4788-aa0f-084db8d1492c︡
︠1e17f06f-55b4-413c-aadd-9e5dc1693a25︠
not M.is_singular()
︡6447b382-3d8e-42a2-af4f-cde2ba4137b6︡
︠d2a1a652-9801-472b-a910-9ed81926a6e6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">A totally random vector with 10 entries:</p></div>
︡db88d2e2-47b5-4938-a5da-5793fac2179f︡
︠d6a5f87d-bc57-42fa-aa48-490dcf892a0b︠
v = random_vector(ZZ, 10, x=-9, y=9)
v
︡9d2431ca-f774-4e93-a948-19127e1084a8︡
︠f3617933-42bc-47a6-ab3b-35457b49bcd5︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-8">By Theorem CNMB, the columns of the matrix are a basis of \(\mathbb{C}^{10}\text{.}\)  So the vector <code class="code-inline tex2jax_ignore">v</code> should be a linear combination of the columns of the matrix.  Verify this fact in three ways.</p>
<ol id="ol-1" style="list-style-type: decimal;">
<li id="li-1">First, the old-fashioned way, thus exposing Theorem NMUS.</li>
<li id="li-2">Then, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</li>
<li id="li-3">Finally, the Sage way, as described below.</li>
</ol></article></div>
︡5d9cf062-4b40-47ca-ae7d-9a3d0a944511︡
︠a7f43e5a-1a56-4ad2-a4b9-2446241b951a︠
aug = M.augment(v)
aug.rref()
︡7c160555-f7f4-4da1-affd-922d84190af1︡
︠56d7dec3-3ba3-407e-a27d-f0f1e86017b1︠
M.inverse()*v
︡90777553-89f3-4dfa-ab11-81282009020b︡
︠39cb0306-79f6-4cc6-a678-809b8cb86ca7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">The Sage way: first create a space with a <b class="terminology">user basis</b>.</p></div>
︡8d048179-8f27-46e4-ad5c-5ecf94c5c227︡
︠9a4aedc6-6469-4cc7-a19d-dfb9e5ebabed︠
X = (QQ^10).subspace_with_basis(M.columns())
X
︡2877265f-db43-450f-ac29-af8597b72530︡
︠358adb12-aeee-413f-a101-ba130aab2c15︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Sage still carries an <b class="terminology">echelonized basis</b>, in addition to the <b class="terminology">user-installed</b> basis.</p></div>
︡d4b5e800-abe8-4a0b-aa2b-cd6d068b1a72︡
︠056ba53b-5e64-4615-a2b7-d74445ad0b88︠
X.basis()
︡e8d438a7-305a-44cb-a9e6-1ce603ca0d68︡
︠541384c3-cf32-4a8e-a52c-c39aa9d64e3a︠
X.echelonized_basis()
︡79e8d7d9-a99e-4b36-aa88-65cf079dddc1︡
︠73b6b8d8-282b-47ee-ad87-6ec3eca7a857︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Now ask for a coordinatization, relative to the basis in <code class="code-inline tex2jax_ignore">X</code>, thus exposing Theorem VRRB.</p></div>
︡acb536e0-f191-4c00-abe8-257f85c3d7c3︡
︠f6fac31b-40cd-429e-a24d-a7227b74e5ca︠
X.coordinates(v)
︡8b185db7-9f75-4dae-acc3-97aba2626572︡
︠00e194f4-b843-4e2d-acfa-082a4ccae306︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Orthonormal Bases">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Orthonormal Bases</span>
</h2></section></div>
︡60641f91-4499-477c-a54b-f431f7ec2cf2︡
︠3629a494-5d8f-4706-a35a-e5f27ea5ac2a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-12">A particularly simple orthonormal basis of \(\mathbb{C}^3\text{,}\) collected into the set <code class="code-inline tex2jax_ignore">S</code>.</p></div>
︡f502fb68-fc68-4bd8-a11e-c04c2bac1593︡
︠0890a8c1-0cd7-4485-ada6-c76039be6c3f︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]
︡03894311-52d2-492b-aef6-5cdcc158fb53︡
︠b574eb70-dc3a-4fdd-abbd-219fd612e0e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h6>
<p id="p-13">If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p></article></div>
︡399be875-842c-4f29-ace5-906203816714︡
︠a5e40cc7-25c5-41b7-ab75-006726ab7129︠
Q = column_matrix(S)
Q
︡6de51f1d-7433-494e-a1f5-705d78323b36︡
︠4a32f421-2955-4dfa-ab1a-19b762fa5358︠
Q.conjugate_transpose()*Q
︡993cc21f-3499-4a69-a52a-f34aaada52db︡
︠b74e3115-149a-4e40-a793-28663111b749︠
Q.is_unitary()
︡2f07e49f-9a43-4427-a5a0-8d9f4d06fcd3︡
︠6f3671b0-14a5-48f8-a043-1d0bc58db8a9︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h6>
<p id="p-14">Build a random vector of size \(3\) and find our ways to express the vector as a (unique) linear combination of the basis vectors.  Which method is most efficient?</p></article></div>
︡b09e7002-117b-460b-af0f-22d3da8674e2︡
︠da378b78-d8a5-4406-af07-f29c677fef3c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-15">A totally random vector with 3 entries.</p></div>
︡11658f00-8e92-43d3-a9d3-1c6a9c20b0ff︡
︠d1146a36-ac43-4e80-a12e-53abe4805405︠
v = random_vector(ZZ, 3, x=-9, y=9)
v
︡3d651df5-3918-4d01-ad23-c77636bc6007︡
︠545c9798-cc2e-45fe-a6d1-a9820c8b8ec9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-16">First, the old-fashioned way, thus exposing Theorem NMUS.</p></div>
︡62ece737-0043-4ea2-ad00-eb97da456d42︡
︠6a4462ca-adae-4098-a379-365de2727d0c︠
aug = Q.augment(v)
aug.rref()
︡f774ce78-8163-406d-a994-3da8a9a1c2ec︡
︠fe363f4a-8dce-40d5-ae7f-2acd366d8207︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-17">Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p></div>
︡ff62692a-4b81-499e-af75-ea0b731e1a12︡
︠10173706-251b-46b4-a4ac-a96a4de6cf0d︠
Q.inverse()*v
︡11d391ba-7ef8-4953-aeae-a471fcfe2bd3︡
︠8f562e8e-8fc8-486d-ab48-afd10ddfb0b9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-18">The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p></div>
︡3388ab62-9f16-47ac-a551-e01b128f23fd︡
︠d205bb11-db1f-4189-aeef-0cf171300640︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)
︡31347ef8-0d31-4c5a-a638-54555d69d7f2︡
︠733a7a96-3936-4b0b-a56f-eb3319173ee3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-19">Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <code class="code-inline tex2jax_ignore">.inner_product()</code> does not conjugate the entries of either vector, so we use the more careful <code class="code-inline tex2jax_ignore">.hermitian_inner_product()</code> vector method instead.)</p></div>
︡16651d0a-4348-4af8-a64f-53b97c383672︡
︠9880d9dd-4218-4ab8-a31c-270e17a4feb6︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3
︡05e95c33-975a-4f06-a737-46f550cf4be0︡
︠ed58742e-e03a-4c31-a21c-1585e7360b5b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡b480cf5e-e3f2-4ec5-afe7-bfd45bc92d57︡

