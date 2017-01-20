︠115ebd1c-614e-4b5d-a6c7-aee8872910aa︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡fbc5982b-48c9-477e-a4eb-b99a2124b356︡
︠e41bab3c-6753-41ca-af18-bc25646982de︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{ &lt; }
\newcommand{\gt}{ &gt; }
\newcommand{\amp}{ &amp; }
\)</div></div>
︡8b3a6d59-ac1f-4f3c-aa2d-3ea5319aa2c7︡
︠05330916-3b25-4b28-a7cb-50905c1f6b13︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡32966907-f322-49e5-a161-db26b73d6a88︡
︠e4f20748-04af-4d3f-a1bd-d5676ff30d6b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡440470cc-9c03-4be6-abf1-8c7f4ef32f18︡
︠b5dba5b6-1421-48ef-af9e-12b81f712914︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡2c9f7443-a57d-470b-a7f5-50709900b2ac︡
︠6c80b050-306b-4ddb-a94a-eaa6b4fb4aef︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section CRS</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡75bf67fb-73bd-4e8b-a920-30ae7526171f︡
︠68428a98-51b1-4faa-aa3c-a7d554b8ac0c︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Column and Row Spaces"><h1 class="heading hide-type" alt="Section 1 Column and Row Spaces">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Column and Row Spaces</span>
</h1></header></section></div>
︡b6508ea2-7032-412c-abd0-7875dd996456︡
︠01d6165c-8ccb-4fee-ab9b-c134611fa730︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <tt class="code-inline tex2jax_ignore">A</tt> is a \(5\times 7\) matrix.</p></div>
︡e41bb310-f9cb-45b9-a473-f4538b59bf1f︡
︠0f41a04c-035d-4fb9-a9f0-df423ce86a88︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡a87ea2fe-ef24-4d2f-a6cf-79fcc29bb054︡
︠8fd0e72e-61e9-45bb-a528-59246f70a300︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And its column space:</p></div>
︡78048fbb-d2cb-4b26-a789-fd3229199bda︡
︠b42b9ba4-6773-4326-aa9e-39c6be0c8a85︠
A.column_space()
︡44a7f33a-8a2f-4d51-a3fb-234e90dad545︡
︠b9a51984-40e6-40cc-a10c-d2f1192e3f48︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡5f2f539d-8de6-44e2-a103-dd5df6615a19︡
︠36965eaf-c2db-492a-ac3a-f185e7b491fa︠
S = A.column_space().basis()
S
︡a3049623-6f63-4af5-a4c9-fba708fcd8dc︡
︠2803c99f-cfe2-4392-a8ee-1dac5a4572d4︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <tt class="code-inline tex2jax_ignore">S</tt>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡f0df398d-95d7-4811-aa9f-9bd383ec86f6︡
︠be78da26-8bb6-4337-a4e1-48d2c56b2e11︠
b = *S[0] + *S[1] + *S[2]
b
︡5cfc5c77-303e-4662-adb1-ef9b26181373︡
︠4c039501-d311-4277-a452-6320f460d844︠
P = A.augment(b, subdivide=True)
P.rref()
︡b81cca2c-bf0c-4124-a879-bedeed34e0d2︡
︠58a64616-3d63-4976-ae0e-7cc5aa2ef0ec︠
︡335daa4b-0787-4b2f-a100-08ccd7705614︡
︠34781226-d3d5-4b98-aab9-bb177feff451︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <tt class="code-inline tex2jax_ignore">S</tt> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡88500723-df6b-4514-aecf-77a9e28d1817︡
︠9afea05c-42ca-4e1c-a208-17fc0ee8c01e︠
c = *S[0] + *S[1] + *S[2]
c
︡7a87928f-fc2b-470d-a32d-b45b05afe6f0︡
︠57bee417-3036-4ca6-aae9-7add5d20c17c︠
d = copy(c)
d[4] = d[4]+1
d
︡1c3ca21b-95cd-4b88-a227-ba18766a63cd︡
︠fea3b55c-0f1d-4dd5-a608-db3e4b5a6bd2︠
P = A.augment(d, subdivide=True)
P.rref()
︡9d040b96-896a-4738-ada8-5739674b2a70︡
︠d1de5e9e-528b-4cff-a4c9-c110b77f2aaa︠
︡b7b8507f-ec16-47e5-a721-0f31ff97eb19︡
︠5c11571d-6f98-4617-ab89-d981b704ef00︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Moral of the Story: the elements of the column space are <!--Style me with CSS--><em>exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡86d97218-0789-40eb-a7a4-17d99919e09e︡
︠eca72012-716a-43f8-a81f-aeac56493b3c︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡328d9beb-d5c3-4002-a984-832308a51e05︡

