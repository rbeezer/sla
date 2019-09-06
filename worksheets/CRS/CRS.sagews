︠bad534cf-6748-4575-a109-c11ca732087d︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡a3789bc5-a2cf-4b16-a137-a08bc32f638e︡
︠0218aa37-0eac-4e6e-a571-c115dd8fde25︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡c38ec390-b9f5-46db-a423-6f47415c13b4︡
︠88816450-50a4-4502-a155-4b4938b94dc0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡158a6ffb-f4ca-491a-ab30-08b51fdd82a5︡
︠38b1865f-6093-4f1f-ac35-9e512ca563ab︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡3d4ffd54-cb55-4f57-af2a-4b9acb771eac︡
︠ae9ee8b3-d7f2-4df7-a5e9-f359e2559634︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2d3cb157-53f4-45c4-ad12-715ca3ef986c︡
︠d990651b-c6ec-4b48-af2a-29c866c565dd︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section CRS</span>
</h2>
<div class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div class="date">Fall 2019</div>
</div>
︡1b6bbc0d-8d47-4afb-a2fd-d279ad0626c0︡
︠4dba977a-4088-4728-a258-f2a7b44cb727︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Column and Row Spaces</span>
</h6></section></div>
︡87542fb9-9f91-4804-a039-83b3a77f3366︡
︠bfd13f0e-99e3-4b64-af68-8fb426ca5fdc︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <code class="code-inline tex2jax_ignore">A</code> is a \(5\times 7\) matrix.</p></div>
︡69b4ae4b-cd5b-4101-a607-e97ad9093591︡
︠1fac35b8-0865-4376-a4e6-ccf36dc660c0︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡2dfca325-c2d2-4809-ae58-51445b12282e︡
︠84b816c3-b869-4afa-a4ef-c31186c98e2a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And its column space:</p></div>
︡daf930ff-4b7b-441a-af68-e2c03460eef0︡
︠9cb95ea5-de05-4a57-a54d-e30a33ea4c93︠
A.column_space()
︡c208c666-b45c-49f2-a047-d2adde1b8681︡
︠954ad003-7c7c-481c-ab11-2f4dd1bfd355︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡5fa998aa-c163-4df5-aaa6-bc6f93152e98︡
︠4e7f8172-b332-4711-accc-379973c98f71︠
S = A.column_space().basis()
S
︡8c00b812-bd6e-40d0-a2ac-ed476cb3532d︡
︠5b95b4dc-79ad-47ab-a8c5-5b29396ecb2f︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">1</span>.</h6>
<p id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <code class="code-inline tex2jax_ignore">S</code>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡87a1c56a-2e3c-4cb7-a744-daff429a1553︡
︠4daef746-2646-4301-ab76-f50f542ee333︠
b = *S[0] + *S[1] + *S[2]
b
︡6811618b-7b2b-415b-a303-908afde1bd4f︡
︠1b73ce45-9b0b-4611-a242-5e2e81c73848︠
P = A.augment(b, subdivide=True)
P.rref()
︡763f90dd-5785-43f7-a51c-77a963b2afbf︡
︠735a2ea0-c084-45b3-ad05-98c4237d51d1︠
︡0446e759-8190-46fc-aacd-f65ca8f15523︡
︠737c953f-fc08-4d77-a914-71ade45e5b38︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span> <span class="codenumber">2</span>.</h6>
<p id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <code class="code-inline tex2jax_ignore">S</code> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡ebc575bb-5a75-424d-aaee-e6093fd8d341︡
︠c2c883e3-e3d6-490a-a6a9-59f62250b23f︠
c = *S[0] + *S[1] + *S[2]
c
︡30208a36-e2ac-483c-a3a7-c00b63eb39e7︡
︠927b2f56-6391-4f15-ac5f-41f4d68b1b40︠
d = copy(c)
d[4] = d[4]+1
d
︡3d2a85ae-c125-4227-a7ec-72e77bd06fba︡
︠fe829173-f341-4974-a0f3-d65bed6bdcb9︠
P = A.augment(d, subdivide=True)
P.rref()
︡7b80d115-5099-4221-a630-907fc5d31b0c︡
︠477c74e8-a393-4dc5-ae38-ed95c6ba9c59︠
︡8a107855-1f9b-4267-a85a-137b9415ea14︡
︠3ae4b5d0-bf04-4a3a-a2bf-dc357d993834︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Moral of the Story: the elements of the column space are <em class="emphasis">exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡d6fbba19-bc8b-413e-ab6a-b36f8ed271bb︡
︠68154d06-6b3e-4742-a608-0cb6c4596db2︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡81ba6f77-6d39-4cad-ae0d-7092756dfdaa︡
︠f2bad2a4-902c-49f7-a7d7-448d7f3ec3c6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡db9966b1-b52d-42cc-a93a-08f9678954c1︡
︠2caa6195-d9a9-433b-aefe-e06a58936250︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡87d2134b-9143-4b87-a667-548cfe591bb6︡

