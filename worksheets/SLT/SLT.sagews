︠1973b27f-5a6f-41c8-af6e-20f9db47f7ac︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡8b6ff227-1728-4635-af2b-d4cce98318bb︡
︠437a36c5-dec0-4633-ab26-7fb4cae4dfc8︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡b0c2bf97-4760-47c4-ab86-206e42826613︡
︠fc4bffa9-7e0d-4f8a-a342-a630573e9a4b︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡d381e818-1872-466b-a0af-34665be8a82e︡
︠281f640b-6ee0-41a4-a3eb-7982f7ac6690︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="SLT"></section></div>
︡fb91af5b-bc99-4db4-a1e2-d6b59bc372a0︡
︠3abdb6c1-17eb-41b6-a5c5-89b4f50b97e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡82d4f9ab-ac38-4754-aeb0-34af89485d04︡
︠196fd688-1345-4ccb-a0a6-1eabd351cbfc︠
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
︡f056f3c7-beb0-447c-af76-6850424a4053︡
︠d533b267-a265-42ad-af94-6fdb01d4b151︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Surjective Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Surjective Linear Transformations</span>
</h2></section></div>
︡426861ac-95ff-4b29-a813-d73a24c0982e︡
︠9610f729-4bf3-4ba5-a526-8feca10629f4︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">Two carefully-crafted linear transformations: <code class="code-inline tex2jax_ignore">T</code> is surjective, <code class="code-inline tex2jax_ignore">S</code> is not.</p></div>
︡88b98a1a-4563-481d-ae70-5004ca5d1770︡
︠cf97922a-d6f3-4985-a76d-7cd7092574de︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')
︡4ade2604-1eb1-4259-a8c0-54c2cccf2330︡
︠18bf7d67-276d-4983-a20f-254f71c40f74︠
T.is_surjective()
︡09cb9390-bb81-491a-ac3a-c6f16722b223︡
︠72d3e677-632e-44b0-ae83-94a850073ca6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p></div>
︡f18c563d-ea00-495c-a944-dd976f867c31︡
︠223af912-6fd6-406c-adf0-2cdb44acb29e︠
T.image()
︡4b076017-3770-4e86-aa56-b73837de480d︡
︠6487ce7d-6a5e-4b46-a1fc-8a3b37205685︠
T.image() == T.codomain()
︡4fac66be-429a-404e-a76d-3e879becb334︡
︠97333aaf-8f12-4917-a78e-5cdd36913456︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')
︡8fdb315d-0ec1-4162-a9eb-73741bbadef2︡
︠47223539-338f-4496-a724-2a8aea694384︠
S.is_surjective()
︡6db8ffd2-8060-40aa-a61d-b473f6d5f288︡
︠6f527515-8a6e-4a78-a5ea-29fade0a30cc︠
IM = S.image()
IM
︡83be5346-9c0f-4ab7-a315-e4fdecbe6ff3︡
︠c7686bca-2573-452f-ac60-245213ed25d1︠
IM == S.codomain()
︡8a9f20be-be42-4195-a06b-1906b2a90cfd︡
︠e7787a82-930d-4627-ac3e-7478b2a5ca2b︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Pre-Images">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Pre-Images</span>
</h2></section></div>
︡713f9ba1-d35e-41c1-a984-709f8512aedd︡
︠a4ed488f-963f-455c-a6e4-b6545d97046d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-1"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">1</span>
</h6>
<p id="p-3">We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p></article></div>
︡2020d796-62da-422f-ae9d-344889621767︡
︠5977a5f3-c669-408b-af74-da9131b94d1b︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp
︡464cee2d-1e47-4840-a437-9112343ee8b0︡
︠3067d45f-27e6-4e6a-aeae-640763ca2b2d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">A check on our work.</p></div>
︡b5e2cb62-b99a-4080-ab6b-adfa45d100d2︡
︠e87ca481-63bf-4db7-ae6e-a0b9b0f9209f︠
S(inp)
︡278a33ec-5500-44dc-acc2-b6360e708901︡
︠9382dc5c-8a19-4b67-a723-adad4bcbc45d︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-2"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">2</span>
</h6>
<p id="p-5">We can make other inputs, using the kernel.</p>
<p id="p-6">Any value of <code class="code-inline tex2jax_ignore">new_inp</code> is in the preimage of <code class="code-inline tex2jax_ignore">out</code>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p></article></div>
︡6f0e1eb6-a41c-4dc2-a445-8e32c7e83ad9︡
︠73882a6e-1132-4e0f-a154-6e291e1f75a5︠
K = S.kernel()
K
︡e1879b10-932d-450d-a513-981c22a3129b︡
︠77d0f7b0-853a-429b-a0fd-49555780ba34︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)
︡6ac3abb6-c3c0-4efa-aaf9-733c994190bc︡
︠517152d1-8945-4a34-a4d4-e58121a6347e︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="exercise-like" id="exercise-3"><h6 class="heading">
<span class="type">Exercise</span><span class="codenumber">3</span>
</h6>
<p id="p-7">Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
<p id="p-8">With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p></article></div>
︡1c08d6ab-734c-48e0-ac3e-113935adcd23︡
︠c4fdcd37-8bbd-474c-a81f-6209b4e52a34︠
in_range = ()*bas[0] + ()*bas[1]
in_range
︡ef8ed5c1-d5c9-424d-afce-e20fbb3a1554︡
︠a343218e-363f-4f63-ac5f-b42b3e7788de︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)
︡d721a433-3696-469d-a952-917ccba333c0︡
︠302c1042-96b0-4917-a421-465acb6b3035︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡f6513718-abe5-4c77-a3c9-50fabc62792b︡

