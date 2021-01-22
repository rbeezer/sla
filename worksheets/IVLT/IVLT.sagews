︠88838d66-6ca9-4309-a0f1-3f92a3537df1︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡87a1b2f1-95e3-4e14-a814-a5338d7d1fa1︡
︠139b44d3-6694-4a86-ae08-2be6f646456f︠
%auto
%html(hide=True)
<div class="mathbook-content"><div xmlns:svg="http://www.w3.org/2000/svg" id="latex-macros" class="hidden-content" style="display:none">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡67302840-ba64-4f1c-a5fd-d18b872ce725︡
︠69c99e1d-fd86-4277-afd6-db8560d9dc0f︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡168d02c1-fbf8-4110-a81d-fe874f8186e9︡
︠474db761-70e3-40df-a87c-b5c047929b20︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡f67343ba-42a3-45b0-a548-2feef2694f47︡
︠f3e772b3-df68-42c4-a318-b48a28c81185︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡989701ab-57ab-40d8-a419-dce570d39f42︡
︠4dae5aff-6570-408e-a8cf-2ac1031d7bcb︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h2 xmlns:svg="http://www.w3.org/2000/svg" class="heading">
<span class="title">Sage and Linear Algebra Worksheet:</span> <span class="subtitle">FCLA Section IVLT</span>
</h2>
<div xmlns:svg="http://www.w3.org/2000/svg" class="author">
<div class="author-name">Robert Beezer</div>
<div class="author-info">Department of Mathematics and Computer Science<br>University of Puget Sound</div>
</div>
<div xmlns:svg="http://www.w3.org/2000/svg" class="date">Spring 2021</div>
</div>
︡d1980e3f-e955-4a6d-a8ea-815425843f0f︡
︠be146139-1136-47dc-a56b-0ed530ab5db5︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">1</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Invertible Linear Transformations</span>
</h6></section></div>
︡d63fba0e-3206-4984-a6da-1d8f2b0d75a3︡
︠a7ae6587-4ca5-433d-a79a-1b8aab5a8d02︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡1bab9112-96e3-4b26-a89f-3aac457a0f80︡
︠1abc55d7-77d6-4a88-a012-05cb1118c175︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡19fd6524-cab9-4152-a963-b7882aa3275a︡
︠c74c4a17-ee29-473f-a9d5-d8d61f0c3238︠
T.is_injective(), T.is_surjective()
︡d0f1c4be-bace-4441-a3de-9b7618614a48︡
︠2182357e-3390-41d4-a202-1ad80e17f613︠
T.is_invertible()
︡e45678ce-7f10-4f2d-a45e-6683f9200162︡
︠556acd28-ca7d-4a70-a8b6-62df6c98ca93︠
S = T.inverse()
S
︡cf82940c-cc64-4a0c-aa98-1faef0a88732︡
︠af132a83-75fd-4aae-a657-e678479e0153︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-2">The <code class="code-inline tex2jax_ignore">*</code> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡4025450d-8728-45c2-a337-b1d3a2a40a66︡
︠da70fb60-8f7b-47d8-aa1b-2cd0f82ac342︠
comp = S*T
comp
︡92c13cc9-c584-4001-a8b3-4df1dfa0a63f︡
︠9d16e52b-ef07-4418-a6a3-9e190f8af213︠
comp.is_identity()
︡1a030e83-973a-4f7b-a7d5-b74c05b80bb1︡
︠edce1dda-1724-411c-ad9a-351711ddad96︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">2</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Defining an Invertible Linear Transformation on Bases</span>
</h6></section></div>
︡e73b6583-f9b1-4ed3-aabc-4e256473110a︡
︠7f2ba803-c0d7-41b5-a560-2af405879a8a︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡4097b4fc-8bc5-43e1-a937-a529a2e2a8c3︡
︠213c8f07-c939-4e77-a01b-7b194bc3e6ba︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡9dbd94ca-c83f-4127-a938-5a374831b177︡
︠b147eeca-883c-475f-aff2-85dcc24f301b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-4">Vector spaces with defined user bases.</p></div>
︡7dcc4aa0-5388-400e-af0e-183f4f18f480︡
︠f0dcc267-3bbc-44bd-a3bd-1d54c94d242b︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡52b3e854-090b-4556-a292-faf5fce4918c︡
︠cee81c07-1002-4c68-a381-58b4db0cfad8︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <code class="code-inline tex2jax_ignore">D</code>.</p></div>
︡69652823-f430-4606-af3f-087cd47e168e︡
︠ff865ae7-deb1-4e21-a414-32dbea0581c1︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡fb17162f-efda-41cd-a20f-74150ff05811︡
︠a1cb9e2b-e1bb-4bc8-a8f8-86d9bd8bdd4f︠
T.is_invertible()
︡fe0baaad-58e0-44ad-ac2c-5a324f0daebf︡
︠daee6980-6e85-4fcf-ac82-9ddc01b0f6fa︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡6d44cbd5-b434-4931-a80a-b98868a29988︡
︠3f683231-7f5a-44ee-a57e-f277be0509e9︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡2288acae-d1e2-4c21-aa88-97b0f6ffcf9b︡
︠8bd148df-7a15-4cd8-ad80-618227917500︠
S.is_invertible()
︡09cea177-0e21-44ef-adc8-e3a65ceee54f︡
︠6582433b-b4ad-46fb-a5d8-ebc821500365︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡2cabeee2-a965-46c4-a221-b1d79f8ff925︡
︠e419f08e-3379-48e6-ac19-ecbb34bc3a66︠
comp = S*T
comp.is_identity()
︡05b2eb37-96a1-4020-a7f1-0edba105d403︡
︠a0863717-ead9-4cdb-ac4b-d59a13b29979︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡c1a58dc9-4b42-4400-a0c4-b9a54c90e295︡
︠b675cf38-884c-4a8c-ab89-f43a97628452︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h6 class="heading hide-type">
<span xmlns:svg="http://www.w3.org/2000/svg" class="type">Section</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="codenumber">3</span> <span xmlns:svg="http://www.w3.org/2000/svg" class="title">Rank and Nullity</span>
</h6></section></div>
︡a081650a-d921-46da-a383-c87f20793fe8︡
︠189a9ffa-ad4c-4faa-a9e3-cbb4be527825︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡14ebe7be-25b6-41b1-ac50-f2ba669b814b︡
︠76f51ddc-cf17-4633-a808-8fa3a0a4b350︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡ec6d27bf-47f6-4f5a-a2ea-a695a454818e︡
︠16a74df0-c37b-4971-a3af-e567a0c0551d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡334eb9bb-97e1-4388-a5c2-4a7a22be2134︡
︠f67343d0-e68d-48b5-a101-35bb0debc0df︠
R.image()
︡4c6c0bfd-be43-4bce-a0df-215ed5bb17be︡
︠70bdcb8c-83ac-4768-a566-597b7413f2bb︠
R.rank()
︡12bd0889-50d0-4d46-a6ad-cf63bd8c08fb︡
︠30efde86-7d75-4d49-a3a3-0727be43a5b9︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡1fa0e7e6-e645-4b19-a554-85bbc791a376︡
︠c96695e7-cce0-41a1-abf7-f7db393cbef3︠
R.kernel()
︡4ccb2501-dcdc-4cf6-aeb6-5be271cae88d︡
︠bd988cd8-da5b-461b-ad06-4623995533eb︠
R.nullity()
︡0a8a217f-95ae-4110-ace1-337560eb62e5︡
︠dff6a171-116c-4f8d-a04b-18f8e59d0fff︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡4df4396b-b7c2-43ca-a1cf-ce7b76103203︡
︠240194af-f67b-48b8-a2c5-19395a06b49b︠
%auto
%html(hide=True)
<div class="mathbook-content"><article class="conclusion" id="conclusion-1"><h5 class="heading"><span></span></h5></article></div>
︡7b07c9c7-8bd0-475b-af88-4a184724dd86︡
︠8f197e23-5bf2-4c68-a760-0ba23e95373b︠
%auto
%html(hide=True)
<div class="mathbook-content"><p xmlns:svg="http://www.w3.org/2000/svg" id="p-12">This work is Copyright 2016–2019 by Robert A. Beezer.  It is licensed under a <a class="external" href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">Creative Commons Attribution-ShareAlike 4.0 International License</a>.</p></div>
︡dcbf52e8-6336-46fd-af73-f8eaa2938cab︡
︠6f0fd01a-2161-4983-a904-602f86f08876︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡1d61c42d-e4e5-468d-a91e-e8e0867770fe︡

