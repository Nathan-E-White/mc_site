<script>
	export let segment;

	export let navlists = [];
	export let header;
</script>

<style>
	nav {
		border-bottom: 1px solid rgba(255,62,0,0.1);
		font-weight: 300;
		padding: 0 1em;
	}

	ul {
		margin: 0;
		padding: 0;
	}

	/* clearfix */
	ul::after {
		content: '';
		display: block;
		clear: both;
	}

	li {
		display: block;
		float: left;
	}

	[aria-current] {
		position: relative;
		display: inline-block;
	}

	[aria-current]::after {
		position: absolute;
		content: '';
		width: calc(100% - 1em);
		height: 2px;
		background-color: rgb(255,62,0);
		display: block;
		bottom: -1px;
	}

	a {
		text-decoration: none;
		padding: 1em 0.5em;
		display: block;
	}
</style>
<section id=”nav-bar”>
	<nav class=”navbar main-bgcolor navbar-expand-md navbar-dark”>
		<a class=”navbar-brand company_brand” href=”/”>
			{header}
		</a>
		<button
				class=”navbar-toggler”
				type=”button”
				data-toggle=”collapse”
				data-target=”#navbarNav”
				aria-controls=”navbarNav”
				aria-expanded=”false”
				aria-label=”Toggle navigation”>
			<span class=”navbar-toggler-icon” />
		</button>
		<div class=”collapse navbar-collapse” id=”navbarNav”>
			<ul class=”navbar-nav ml-auto”>
				{#each navlists as list}
					<li class=”nav-item”>
						<a class=”nav-link light-color” href={list.url}>{list.label}</a>
					</li>
				{/each}
			</ul>
		</div>
	</nav>
</section>

<! — — — — — — — — — — — — — — — — — — — — — ->
<! — — — — — — — — STYLE — — — — — — — — — — — ->
<! — — — — — — — — — — — — — — — — — — — — — ->
<style>
	#nav-bar {
		position: sticky;
		top: 0;
		z-index: 10;
	}
	.navbar {
		padding: 0 20px !important;
	}
	.navbar-nav li {
		padding: 0 0 0 20px;
	}
	.navbar-nav li a {
		font-weight: 600;
		text-transform: uppercase;
		float: right;
		text-align: left;
	}
</style>

<section id="nav-bar">
<nav class="navbar main-bgcolor navbar-expand-md navbar-dark">
	<ul>
		<li><a rel=prefetch aria-current='{segment === undefined ? "page" : undefined}' href='.'>home</a></li>




		<li><a rel=prefetch aria-current='{segment === "about" ? "page" : undefined}' href='about'>about</a></li>
		<li><a rel=prefetch aria-current='{segment === "contact" ? "page" : undefined}' href='contact'>contact</a></li>

		<!-- for the blog link, we're using rel=prefetch so that Sapper prefetches
		     the blog data when we hover over the link or tap it on a touchscreen -->
		<li><a rel=prefetch aria-current='{segment === "blog" ? "page" : undefined}' href='blog'>blog</a></li>
	</ul>
</nav>
</section>




