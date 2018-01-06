︠62338aed-d1a4-4734-a54b-879cf82554d5︠
%auto
%html(hide=True)
<div class="mathbook-content">
<link rel="stylesheet" type="text/css" href="http://buzzard.ups.edu/mathbook-content.css">
<link rel="stylesheet" type="text/css" href="https://aimath.org/mathbook/mathbook-add-on.css">
</div>
︡c48070a5-e878-4ceb-a04f-bc7586ebc3f9︡
︠9cd2c527-b1f2-49b1-a5c5-581dda4b60e5︠
%auto
%html(hide=True)
<div class="mathbook-content"><div class="hidden-content">\(
\newcommand{\lt}{&lt;}
\newcommand{\gt}{&gt;}
\newcommand{\amp}{&amp;}
\)</div></div>
︡9817aedd-58e4-4b80-acec-244411e5c45b︡
︠af4c7ea4-b0da-4592-a551-1756b68ac5f1︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡0a157832-df2a-4973-acc9-ee135dad8628︡
︠3c0e3f11-d2e8-4453-a1e8-98b999db8058︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="article" id="IVLT"></section></div>
︡48457749-92c8-4a0d-ae1c-6a524eb2942f︡
︠c770cf81-8134-49d5-a6b6-32185670814a︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="frontmatter" id="frontmatter-1"></section></div>
︡01181d79-efa2-434f-a8bb-fee1738e40f8︡
︠a09c8baf-59e0-4b24-abb0-7be5d6855c55︠
%auto
%html(hide=True)
<div class="mathbook-content">
<h1 class="heading">
<span class="title">Sage and Linear Algebra Worksheet</span><span class="subtitle">FCLA Section IVLT</span>
</h1>
<address class="contributors"><p>Robert Beezer<br>Department of Mathematics and Computer Science<br>University of Puget Sound</p></address>
<address class="contributors">Spring 2017</address>
<p></p>
</div>
︡505fdda7-c01b-40de-a489-4f53429d7f9c︡
︠4ed9ea69-2393-4f90-ade9-728c6de0a5f4︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-1"><h2 class="heading hide-type" alt="Section 1 Invertible Linear Transformations">
<span class="type">Section</span><span class="codenumber">1</span><span class="title">Invertible Linear Transformations</span>
</h2></section></div>
︡2330d1a4-ad73-417c-a14a-bcd483164cc3︡
︠0f73044a-8e80-4198-aebc-8695a19c8d85︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-1">A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡1858b5d0-06e8-4702-afed-c745de76bf43︡
︠55cae8fc-8f37-48a8-aaa7-77ebdba42547︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T
︡99d53ce3-862b-4ea6-a640-dc8b75729a8d︡
︠227f7ab5-e4c0-4fab-a600-6ecea4317dcf︠
T.is_injective(), T.is_surjective()
︡be12d9d9-fbdc-4cd6-a737-8a549f9c10ad︡
︠05c27ac4-3c00-48ce-ae41-6cbb14bb1ccb︠
T.is_invertible()
︡ad16090c-e38e-441b-a2ff-46cf1d4c9595︡
︠132292ca-fae8-4839-a469-3affa1dee737︠
S = T.inverse()
S
︡c5af8424-e2ed-4a70-a4b6-df0dfaed8c4c︡
︠412f1a43-f36e-4016-a051-6217f02edbb1︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-2">The <code class="code-inline tex2jax_ignore">*</code> operator, like we would use for multiplication, will create a composition.  This will be perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p></div>
︡8f3af453-846e-426f-a874-ae7b56c85a30︡
︠bbff6e3b-2b08-492f-a9b6-d5441abd3086︠
comp = S*T
comp
︡142139f6-4214-4ab7-aa42-01856a02733f︡
︠a43d5765-db7e-4029-a8cd-bdf336d4858b︠
comp.is_identity()
︡53090507-bd33-4c45-a6c2-3803b49981f1︡
︠d44de53f-dfd1-4296-a7f3-a3ba77f0082f︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-2"><h2 class="heading hide-type" alt="Section 2 Defining an Invertible Linear Transformation on Bases">
<span class="type">Section</span><span class="codenumber">2</span><span class="title">Defining an Invertible Linear Transformation on Bases</span>
</h2></section></div>
︡904ed341-220f-4329-a9a9-c4d8f4fe5f67︡
︠f074e583-7b58-4b9b-a425-efac8907867e︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-3">Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p></div>
︡e7e6cdb4-03f5-4bae-a7f1-ce16a90b1818︡
︠70f56c32-0350-491b-a88a-959bc35cf650︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()
︡fc1e27a6-9b9f-4b31-a6b9-15fa1be68dde︡
︠ecafad75-301d-4fd0-a13c-b51a026e9ec6︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-4">Vector spaces with defined user bases.</p></div>
︡cb27ad41-3824-4521-a635-2eb48b7ea0d6︡
︠6a191c76-eae0-4f42-a0a6-6d411dd8c789︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace
︡ef4095d0-cbaa-4c9f-afaa-507a297f137a︡
︠d5a26473-43ef-4ea9-ae93-8e4087906b4d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-5">The invertible linear transformation defined with images as the vectors in the codomain basis <code class="code-inline tex2jax_ignore">D</code>.</p></div>
︡6231495c-c90b-48e5-a2df-55ea671078bc︡
︠62e93238-ef2e-4abd-a0db-f31dd74f7c73︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T
︡8d57789a-18a3-474f-a55c-04f12d97c043︡
︠3c19381d-336d-47e1-a647-25c26ef06b0a︠
T.is_invertible()
︡f470db9f-8c3f-49ad-ab02-237e5ed4e30f︡
︠ef35f108-1954-48ef-a69f-8b3fa8e7dcbe︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-6">Now we simply “turn around” the definition, to make the inverse.</p></div>
︡b9dffd1f-629b-472a-a683-61f9192f10bc︡
︠e76c65a8-50af-4c21-a69a-a0c9ad3cd4c8︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S
︡1b0876e1-f429-43fc-a456-ff6b908cd50a︡
︠e25fad68-e5c1-4e00-ab56-2458fe98b6ec︠
S.is_invertible()
︡0de5c922-217f-426f-a325-949fd9e629c1︡
︠5de43bd6-e075-4fac-afee-473d607469e3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-7">Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p></div>
︡b4098356-9361-485c-a54a-3826696ded7c︡
︠0200c941-fd45-4fdb-ab3f-6788de14c014︠
comp = S*T
comp.is_identity()
︡c26d2366-4549-4a47-a60b-562effd14916︡
︠dd84ab80-2c67-461b-ae7b-9d1bb1b82024︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v
︡702f5dbd-eda4-4415-a0fc-b99d55f1d110︡
︠69088554-231c-486d-ad7d-a2740d9fe610︠
%auto
%html(hide=True)
<div class="mathbook-content"><section class="section" id="section-3"><h2 class="heading hide-type" alt="Section 3 Rank and Nullity">
<span class="type">Section</span><span class="codenumber">3</span><span class="title">Rank and Nullity</span>
</h2></section></div>
︡679702c6-6fa8-4b2f-a906-7a9ee9c78ae9︡
︠b515c178-7e81-4643-a6d4-c5e54df047b3︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-8">A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\text{.}\)</p></div>
︡1682c433-db25-4d9a-a0f8-5cd32201259e︡
︠8a51d151-43c7-4990-a3af-bfb93eb4fda8︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R
︡b231402a-17de-4e78-aea2-d629f58a9784︡
︠04645b48-56f3-45db-adc6-fac24c7c7130︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-9">Rank is dimension of range (image).  Note there are not left/right variants.</p></div>
︡544c9a8d-3d42-4190-ac6c-266f8ab0732b︡
︠38f8583e-66cb-48d5-a8ac-5d2ccb78cebf︠
R.image()
︡9e896e29-c9f9-4486-a911-66e92b4a318e︡
︠12cab39d-c56c-4fb4-a555-7bc64f1994b2︠
R.rank()
︡2c4f7f20-df64-4b5f-a0b4-62028429dbe8︡
︠e052fc12-df13-43d8-a2d3-74677fc99957︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-10">Nullity is dimension of kernel.  Note there are not left/right variants.</p></div>
︡23786758-a27b-46a9-afd6-35b9c288c122︡
︠9560ec84-427c-4ed7-a7c4-ef9996c2f942︠
R.kernel()
︡bd81e7e7-b2a2-4f80-a6fd-aed486b49bdd︡
︠d9b6aad8-18bb-4ba3-ab03-8b250acbe57c︠
R.nullity()
︡355fb099-8a24-46de-aa9f-e2a08ba579be︡
︠5e3befb7-842a-4898-a732-61411dcc235d︠
%auto
%html(hide=True)
<div class="mathbook-content"><p id="p-11">Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p></div>
︡2bc57b42-2d75-48fe-a072-3e48f55c2808︡
︠83298a1c-cebe-4955-ad22-7019466e3f56︠
%auto
%html(hide=True)
<div class="mathbook-content"><table width="90%" style="font-size: 200%;"><tr></tr></table></div>
︡7daa6248-e07a-4e00-a4e2-7638f7e5625b︡

