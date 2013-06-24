{include:core/layout/templates/head.tpl}

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
	<section id="main" class="c4 before1">
		{$block2}
	</section>
	<section id="widgets" class="c2 before1">
		{$block3}
		{$block4}
		{$block5}
	</section>	
</section>

{include:core/layout/templates/footer.tpl}

</div>
{* General Javascript *}
{iteration:javascriptFiles}
<script src="{$javascriptFiles.file}"></script>
{/iteration:javascriptFiles}
<script src="{$THEME_URL}/core/layout/js/scripts.js"></script>
</body>
</html>