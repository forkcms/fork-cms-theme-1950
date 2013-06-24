{include:core/layout/templates/head.tpl}

<body>
<div id="wrap" class="home">
<header id="head" role="banner">
	<h1><a href="/" title="{$siteTitle}">{$siteTitle}</a></h1>
	<p id="skip"><a href="#main">{$lblSkipToContent|ucfirst}</a></p>
	<nav>
		{$var|getnavigation:'page':0:1}
	</nav>
	{* Block 1 (default: Search) *}
	{option:!block1IsHTML}
	<div id="headerSearch">
		{$block1}
	</div>
	{/option:!block1IsHTML}
</header>

<section id="content" class="cols">
	{option:block2}
	<div id="intropic">{$block2}</div>
	{/option:block2}
	{option:block3}
	<section id="main" class="c8">
		<article class="c4 before1">
			<h1>{$page.title}</h1>
			{$block3}
		</article>
	</section>
	{/option:block3}
	<section id="widgets" class="c7 before1">
		{option:block4}
		<section class="c3 first"> 
			{$block4}
		</section>
		{/option:block4}
		{option:block5}
		<section class="c3 last"> 
			{$block5} 
		</section>
		{/option:block5}
	</section>
</section>

{include:core/layout/templates/footer.tpl}

</div>
{* General Javascript *}
{iteration:javascriptFiles}
<script src="{$javascriptFiles.file}"></script>
{/iteration:javascriptFiles}
</body>
</html>