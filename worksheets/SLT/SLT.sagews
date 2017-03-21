︠2a108928-fd9f-4ed1-ac0e-8cf74c25b0a8︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡0d32ecc0-4cde-4bcb-ad8b-b08b8c8a13bc︡
︠bc9ff7bb-7085-4e31-a91a-5dbd8390db39︠
%auto
%html(hide=True)
<div class="mathbook-content"><div style="display:none;">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡7f50f57b-0fb8-45ac-a74e-19bc64ff4da8︡
︠618c2719-229e-4be8-a85c-66513c52caf7︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡369b3b25-547e-433d-abb3-81ae3da9073f︡
︠94c237d2-c870-4b2b-ae9f-6c083d48fa69︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡e0ea3220-4f9c-405f-ab38-aa5b28970817︡
︠2f80ab2c-c7b5-43ba-a37e-c291dba72b04︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡324b2e75-b4c7-4a03-a43a-3fcd1a8b2b72︡
︠0a44663d-ce18-46c9-a90c-44c11dba9d61︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section SLT</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡06c4b2be-07d2-404e-a9df-5232350f0ad6︡
︠bdd7189d-7a45-4c49-aad7-939d5d36d40a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><header title="Section 1 Surjective Linear Transformations"><h1 class="heading hide-type" alt="Section 1 Surjective Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Surjective Linear Transformations</span>
</h1></header></section></div>
︡ac87390d-777b-4d40-a6ee-e827685ae2ee︡
︠d8a50ef1-c693-4268-a2c6-1af326b809be︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <tt class="code-inline tex2jax_ignore">T</tt> is surjective, <tt class="code-inline tex2jax_ignore">S</tt> is not.</p></div>
︡8873d81c-9d22-4158-a975-0800c367b616︡
︠49ecdc4e-8dcb-4fe1-a888-d81d9d1f5c66︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡3b027deb-b798-4397-a41f-df8ec1ce11a7︡
︠8e28095f-516e-4aa7-a1e9-0c89a5b73c9e︠
T.is_surjective()
︡31c69dff-c503-43ad-abbc-5c8d6321b6d4︡
︠416170e7-fbcf-4e0a-acc6-9131e951a088︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡5c9be1bd-8b84-4a74-a540-bd2fe084234a︡
︠ba755561-2ecb-4372-a8d7-994b83b07e3c︠
T.image()
︡8f6f4c5a-e89a-43c2-a65f-de8190551c34︡
︠8c4fb8b1-399d-44da-a63f-61df37f8c040︠
T.image() == T.codomain()
︡5dc9d828-9622-4370-ade3-d45b38230e45︡
︠ea3a3026-9ccc-4f03-afe2-3b686a18e272︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡85cb00c3-6603-42f3-a6e1-82cfa39cc7e3︡
︠a6962a7e-dd4d-417d-a4dc-55e2495e5164︠
S.is_surjective()
︡50ae7d8e-b6c0-44d7-a115-d7ab9f5fda13︡
︠e7395b6e-9245-4292-aaa4-f8ba35985737︠
IM = S.image()
IM
︡b1efb4a1-2337-4960-ab1b-f13bc70606d3︡
︠d85b70f1-2155-49ec-aaad-5af85bf61fcf︠
IM == S.codomain()
︡39784f94-1b66-40f5-ad9f-beaa7f676773︡
︠6ace31dc-5e7b-458b-aa64-a134ca422aa9︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><header title="Section 2 Pre-Images"><h1 class="heading hide-type" alt="Section 2 Pre-Images">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Pre-Images</span>
</h1></header></section></div>
︡e04af7cd-42bb-4e14-a9ca-e7c1b8c0aeb5︡
︠896c4540-282e-4410-a8ac-383f9f76024b︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h5>
<p id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡7c4e983d-965c-449d-a427-16055a5d05f5︡
︠07155ae9-88fd-4447-a18a-9a0af6443593︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡aaab006e-af69-4dbd-a4d6-f7001f6649be︡
︠c5971988-827f-4c4a-a998-08f0900f6582︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">A check on our work.</p></div>
︡447dc974-1f69-4f2d-aac7-2cf1d82e8840︡
︠b85251cc-5dcb-46be-a45a-b77b854a3c37︠
S(inp)
︡cef2153d-19bd-4529-a36e-e155dea19edc︡
︠6ab5cdb0-bc97-4af9-a32f-10176e510ffd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h5>
<p id="p-5">We can make other inputs, using the kernel.</p>
<p id="p-6">Any value of <tt class="code-inline tex2jax_ignore">new_inp</tt> is in the preimage of <tt class="code-inline tex2jax_ignore">out</tt>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡c587b556-513f-48de-a111-1323a810a2f9︡
︠fbf83bd9-23a5-4223-a135-358582ea38c2︠
K = S.kernel()
K
︡1ce141d1-af44-4577-a99b-ec0628902c8e︡
︠fabdbfe8-1985-4edd-a567-0541b6956c1e︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡b086d45c-d665-4c43-aa9a-2af6bbc50211︡
︠0c2930d9-cbf3-41c7-a471-e9bef79bcadd︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h5 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h5>
<p id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p></article></div>
︡ceae7df5-6c16-4f23-a66a-753332ade68b︡
︠44ae32c2-83e9-4adb-ad41-8b7bebe89cf1︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡8352185e-ad29-46c7-a1ab-326ad55bef8d︡
︠000532e8-0962-42cf-a9e9-52bbc8124f1d︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡c1ed7106-a0f1-432d-a3cc-c1e7db0ee5df︡
︠e6672924-e896-47c9-a584-8163090b2026︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡00d67f0a-4f3d-45aa-aef3-3749a42bf5c2︡

