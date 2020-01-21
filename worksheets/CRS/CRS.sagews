︠8910220c-5f45-4121-a8f4-3e13ca72000a︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡b93d96fa-2597-4ab9-ac48-0772a4c26d27︡
︠7e0bba2a-540f-4bba-a47e-d76590962035︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡7b387e29-98d9-4794-a2ec-1c372d8c3bc6︡
︠0423c92f-2c70-46fa-ab18-725b97823cd0︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡3d4510e4-0107-4167-ac28-49aa441d6594︡
︠1ae8577b-8e4f-4372-a2d1-39cd689b06b6︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="CRS"></section></div>
︡9d1756fd-17c6-47fe-a92b-b5473b0c7032︡
︠6c0846f3-30b0-4720-a6c2-1776fb2f890b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡c77cfc3e-07fc-477f-a7db-af3252d82522︡
︠0e98b95e-8557-41df-a05c-bfbf111e934b︠
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
<div class="date">Spring 2020</div>
</div>
︡65a0e6a3-528b-4aa8-a9ad-66d15e37dcb2︡
︠8172259c-9ee1-499b-a126-f8cca2bd99a5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span class="type">Section</span> <span class="codenumber">1</span> <span class="title">Column and Row Spaces</span>
</h6></section></div>
︡b373699f-52d4-436d-af80-689254512fad︡
︠460b9653-6b53-4f9a-ad93-efb720b71e6c︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). <code class="code-inline tex2jax_ignore">A</code> is a \(5\times 7\) matrix.</p></div>
︡bb3b6d2c-0875-4c6e-a747-a266a9760947︡
︠5f29a96d-565d-4b23-aa98-23a8a511b2af︠
A = matrix(QQ, [[ 1, -1, -2,  0,  0, -2, 0],
                [-4,  5,  6, -3, -1,  5, 0],
                [-3, -2, -3,  1, -2, -2, 5],
                [-7,  3,  3, -2, -3,  3, 5],
                [-1, -5, -5,  4, -1, -3, 5]])
A
︡a0ed997f-7d6c-4a2e-adc8-5ec0765971c2︡
︠063f3c9a-c072-4d15-acf1-4500687c2ede︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">And its column space:</p></div>
︡1d44d816-3d7a-404c-a50c-7418571c43b1︡
︠1cf61ce2-310a-4c0f-a86f-4e4679e862b1︠
A.column_space()
︡3ce22ff1-2222-4de3-ac7a-cc8020a18034︡
︠1710a4f9-51c8-44a7-a77e-13ba3daee3e2︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Grab the elements of a linearly independent spanning set.</p></div>
︡709803d0-d22a-4b64-a2db-1ffc9294087f︡
︠aff48085-0572-4028-a456-065f2f2c334a︠
S = A.column_space().basis()
S
︡2f92322c-721f-4422-ad67-37d97089ccd1︡
︠6f002424-0a72-49b4-ab9b-2d307a0f3cb0︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">1</span><span class="period">.</span>
</h6>
<p id="p-4">Use the cells below to make a linear combination of the three vectors of the column space provided in <code class="code-inline tex2jax_ignore">S</code>.  Of course, this will also be a column space vector.  As such, we can use it as the vector of constants in a linear system of equations, and the system will be guaranteed to be consistent.</p></article></div>
︡e20e3236-740e-46aa-ab53-771a88488854︡
︠937a2ad5-1492-420c-adc2-13a2d2a2b3a0︠
b = *S[0] + *S[1] + *S[2]
b
︡744ee69b-cbf5-4d26-aaf3-d167349e6411︡
︠595973f1-fbce-41a1-a851-b22296635d86︠
P = A.augment(b, subdivide=True)
P.rref()
︡fef47787-8734-465f-a7d4-996cb022470c︡
︠efbe326c-ae3d-4393-a211-7bad76ea9219︠
︡f08aecd5-873b-4575-a8a7-9124fabd4406︡
︠df76a627-bbfe-4746-add0-4717b016e6be︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Demonstration</span><span class="space"> </span><span class="codenumber">2</span><span class="period">.</span>
</h6>
<p id="p-5">Repeat the exercise above, but with a slight variation to produce an inconsistent system.  Notice that the vectors of <code class="code-inline tex2jax_ignore">S</code> have a nice pattern of zeros and ones in several of the entries (three to be precise).  The scalars you choose for the linear combination will automatically become three entries of the vector.  What about the other entries?  I like to say they are “forced.”  Let's wiggle one of these forced entries just a little bit.  Such a vector will now leave the column space and when used as a vector of constants, will create an inconsistent system.</p></article></div>
︡c9e3f892-f4de-4353-aa20-a77ce3dfab65︡
︠a2e86e00-0f5e-4e94-a136-1ed9acc7b732︠
c = *S[0] + *S[1] + *S[2]
c
︡dd4b5ba5-cb51-4a3b-ae4e-56c3f7fceb31︡
︠d0f2c4d7-a92f-4bc3-a6b7-51d14d83a7fd︠
d = copy(c)
d[4] = d[4]+1
d
︡9ce8fadc-2764-4621-a98c-1ddff2d857f5︡
︠482311ee-e054-44c7-a560-28e08d2568c5︠
P = A.augment(d, subdivide=True)
P.rref()
︡d1e04013-ef34-4481-abe8-b0091874edca︡
︠3ac1a11c-40b7-45f0-a6be-e7ff00884651︠
︡19cea7fc-34de-4c2e-ac8a-a71972afaf60︡
︠079d6445-07ae-4660-a529-fd1078217d0e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Moral of the Story: the elements of the column space are <em class="emphasis">exactly</em> those vectors of constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector of constants that yields an inconsistent system.</p></div>
︡d156eca3-1bbb-4a22-ab74-462679eaa67b︡
︠44dabc66-f82b-44cd-a684-bcbd2261d174︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡cc99756d-b56e-40ab-ae13-2c0e93004e1c︡
︠2e9c701e-ed45-4b50-a731-a5ea38e4822a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡f5891092-e802-4db7-ad2a-fd0d84568e9b︡
︠5c1923a0-7a27-424e-a900-24acff10c856︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡ca2e451e-5898-40cc-af6c-081a409606f6︡

