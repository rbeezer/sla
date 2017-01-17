︠5222b52a-6e7c-4eaf-adfc-7cfb3d34e5cc︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡71fa3a06-465c-4337-a217-f83e47c8bbd7︡
︠75860c00-2577-42bb-a9ec-1d44c9c8174e︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡fb482443-468b-4eb7-a945-552aae3675eb︡
︠4d7869da-c115-4df0-a495-9ebc96adc22b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d7940fed-9bfb-41cb-a114-7b337c92a64d︡
︠24beaa4a-d1ea-4144-a222-2bad444777a0︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="MISLE"></section></div>
︡cc47af2f-9f18-4a3d-ae5f-17bc5f1a7811︡
︠8ded59d8-977a-4f1d-ac03-c2b7e070af8c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡01aeff8d-814f-4c31-a902-dd48538d33cc︡
︠fcdabda3-a25e-4112-a3b3-580905c920de︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section MISLE</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡cdb97671-a230-4051-a39d-6e5686c50e5e︡
︠c1b7b2e2-4948-495d-ab86-8f5e5d522608︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 An Invertible Matrix"><h1 class="heading hide-type" alt="Section 1 An Invertible Matrix">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">An Invertible Matrix</span>
</h1></header></section></div>
︡4d9f4423-67db-4f60-ad19-4a899e7e0950︡
︠29db92fb-6633-412a-a1fc-a363df14e2e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">An invertible \(6\times 6\) matrix.</p></div>
︡20d0b63b-2a15-4d28-a747-3fba28a4c86a︡
︠c9b9960d-1373-4856-a0ca-80a3adc418d8︠
A = matrix(QQ, [[ 1,  2, -1, -2, -1, -6], 
                [-2, -3,  1,  3,  1,  6], 
                [ 2,  4, -1, -4,  0, -7], 
                [ 0, -1,  1,  2, -1,  1], 
                [ 2,  4, -2, -4, -1, -8], 
                [ 1,  0,  0,  0, -1,  2]])
A
︡3a1f4b54-8770-4a05-a112-ba25ec2a143e︡
︠c79e6d9c-1249-42fa-a80c-ab6c1494fb82︠
Ainv = A.inverse()
Ainv
︡a593300c-c2f0-4c2f-a6af-35ba2ceb1d69︡
︠01fa42a4-f66e-4720-a69b-6c0162e5ef35︠
Ainv*A
︡9468eaa8-eaf5-4878-a9d1-44e55573a63e︡
︠bc2241cf-9b99-4120-a9be-b02958fdca4f︠
A*Ainv
︡8fbb10ce-0699-4fbb-a047-ef719d99b63f︡
︠5ce17024-e2a8-4ba3-a7a8-e986b234beae︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">Building the inverse, now column by column, by solving systems of equations with the vector of constants equal to columns of an identity matrix.</p></div>
︡d0bc23c4-7b62-442c-a797-0818fca3161b︡
︠5fc0ce39-2b49-4d8b-aa05-21e39df410a2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-3">Edit and re-run the next cell, using several different columns of the identity matrix.  Compare the solution vectors with the columns of the inverse of <tt class="code-inline tex2jax_ignore">A</tt> above.</p></article></div>
︡c0280e74-7a0c-43d5-af86-5a74d12d53d0︡
︠6a08317a-6e46-4b84-a07c-6d7e15f32570︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡5da65d8c-7ebc-4464-a97c-6eadcb2bf406︡
︠563fd9d6-6542-4199-a620-38ed5a9868d7︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Consolidating the above as the following illustrates Theorem CINM and its proof.</p></div>
︡e2e22cbf-2256-4470-ade2-d1bce1779d07︡
︠5fa31c0d-c2f2-4939-a907-be87a781f2f0︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡a4f48118-eeae-4031-a9c2-18090a19c1cb︡
︠16f1b82c-00ab-4eaf-a04c-2552f5d0f92b︠
B.rref()
︡53154cd7-9e73-4a6e-a963-598bc7098f3a︡
︠b9ede3ac-b3a2-4749-a6e0-9491f590f103︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 A Matrix Without an Inverse"><h1 class="heading hide-type" alt="Section 2 A Matrix Without an Inverse">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">A Matrix Without an Inverse</span>
</h1></header></section></div>
︡cbdb8bf2-7a62-4dd7-a636-6ca0e967a69a︡
︠95661e20-1ab7-4d85-a4f9-a65564fcb934︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">Now, a non-invertible \(6\times 6\) matrix.</p></div>
︡4daa3b96-bb06-43df-a82e-1d472bb286cb︡
︠b085bc04-3cf3-4321-a2b4-1c26451f7963︠
C = matrix(QQ, [[-1,  0,  2,  8,  8,  0], 
                [-1, -1,  0,  1,  0,  3], 
                [-1, -2, -1, -4, -4,  5], 
                [ 1,  2,  1,  4,  5, -5], 
                [-1, -1, -1, -1, -8,  4], 
                [ 0,  1,  0,  3,  5, -1]])
C
︡513d6ea7-3d33-4166-a391-8aea02f126b8︡
︠a19ef0c9-707b-4381-aaca-b45ae5ce7e43︠
C.inverse()
︡7f41d31a-d9a5-44ee-a68a-14f6edcbc3a1︡
︠710c2d04-7ee1-4320-a199-badb1c9d8512︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-6">Edit and re-run the next cell, using several different columns of the identity matrix, in attempts to construct columns of the inverse.  Just one of these failures is enough to be certain that <tt class="code-inline tex2jax_ignore">A</tt> does not have an inverse, following the logic of Example MWIAA.</p></article></div>
︡68365635-ba39-4c6c-ad75-6304f108e8df︡
︠b38fad6d-2186-4a5c-a624-b88cc7ddfb6d︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡b2131b17-9381-4a37-a799-c5241fcecca3︡
︠a55b866a-efd7-418a-a9f4-3b950b5ca194︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">It is the case that <!--Style me with CSS--><em>no</em> column of the identity matrix leads to a consistent system (for this matrix).  We can see all six systems with a computation reminiscent of Theorem CINM.</p></div>
︡53aae215-d05b-4763-a2f2-62d08ebda5f4︡
︠a474f671-c411-4f97-a2b7-51a3231d0c30︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡0e5825fa-6bf8-4ce2-a41e-c7f6a29cfa83︡
︠b9101451-fcce-459d-a7df-5965007ac755︠
D.rref()
︡a0ec0006-102e-4e77-abf5-a4f19f21ae8f︡
︠4302f120-740a-42f1-a9a0-f55e6fd80879︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5>
<p id="p-8">You might struggle to find <!--Style me with CSS--><em>any</em> vector of constants that will combine with <tt class="code-inline tex2jax_ignore">C</tt> to be a consistent systems.  (Though there are some.  And I can think of seven that are real easy to find if you think about it a bit.)</p></article></div>
︡7bc8eb91-c05c-4a7b-ac16-d0c2f31cc254︡
︠bd075e3e-ffe4-4c9c-a85d-f2ec4df6ac8f︠
w = vector(QQ, [     ])
P = C.augment(w, subdivide=True)
P.rref()
︡03d1b2ff-0fff-44b8-a04e-e41d05b0c5d4︡
︠5e82f45e-35e2-452e-ae32-c27df83a9006︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-4"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">4</span>
</h5>
<p id="p-9">Do you see the fundamental difference between the matrices <tt class="code-inline tex2jax_ignore">A</tt> and <tt class="code-inline tex2jax_ignore">B</tt>?</p></article></div>
︡554d831d-2531-4793-a577-849029853164︡
︠7bac820a-0204-447d-a8d5-f6996b2f1607︠
︡a8345b75-6886-4cce-aa4c-f429d95f8759︡
︠ff2237eb-d535-4cf2-aaa7-7ab938397c0d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">This work is Copyright 2016 by Robert A. Beezer.  It is licensed under a <a class="external-url" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡50c820f1-cd6f-422f-a5c9-c347d80117d2︡
︠124a7496-2311-4f2d-aa4f-fba2e2f859ea︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7fcb9403-a27b-446e-a212-10ec3de253c3︡

