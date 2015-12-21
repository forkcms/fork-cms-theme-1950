{include:Core/Layout/Templates/Head.tpl}

<body>
<div id="wrap">
<header id="head" role="banner">
	<h1><a href="/" title="{$siteTitle}">{$siteTitle}</a></h1>
	<p id="skip"><a href="#main">{$lblSkipToContent|ucfirst}</a></p>
	<nav>
		{$var|getnavigation:'page':0:2}
	</nav>
	{* Block 1 (default: Search) *}
	{option:!block1IsHTML}
	<div id="headerSearch">
		{$block1}
	</div>
	{/option:!block1IsHTML}
</header>

<section id="content" class="cols">
	<h1>{$pageTitle}</h1>
	{option:block2}
	<section class="full">
		<article class="content">{$block2}</article>
	</section>	
	{/option:block2}
	<section id="main" class="c4 before1">
	{option:block3}
		<article class="content">{$block3}</article>
	{/option:block3}
	{option:block4}
		<article class="content">{$block4}</article>
	{/option:block4}
	{option:block5}
		<article class="content">{$block5}</article>
	{/option:block5}
	</section>
	{option:block6}
	<aside class="page-aside c3">
		{$block6}
	</aside>
	{/option:block6}
	{option:block7}
	<aside class="page-aside c3">
		{$block7}
	</aside>
	{/option:block7}
	<section id="widgets" class="c2 before1">
	{option:block8}
		{$block8}
	{/option:block8}
	{option:block9}
		{$block9}
	{/option:block9}
	{option:block10}
		{$block10}
	{/option:block10}
	</section>	
</section>

{include:Core/Layout/Templates/Footer.tpl}

</div>
{* General Javascript *}
{iteration:javascriptFiles}
<script src="{$javascriptFiles.file}"></script>
{/iteration:javascriptFiles}
<script src="{$THEME_URL}/Core/Layout/Js/scripts.js" type="text/javascript"></script>
</body>
</html>