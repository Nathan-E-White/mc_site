<script>
	export let segment;
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


<section id="nav-bar">
<nav>
	<ul>
		<!-- Home page -->
		<li><a aria-current='{segment === undefined ? "page" : undefined}' href='.' rel="prefetch">home</a></li>

		<!-- Blogs Page -->
		<li><a aria-current='{segment === "blog" ? "page" : undefined}' href='/blog' rel="prefetch">blog</a></li>

		<!-- SITE MAP -->
		<li><a aria-current='{segment === "site map" ? "page" : undefined}' href="/site-map" rel="prefetch">site map</a>
		</li>
	</ul>
</nav>
</section>




