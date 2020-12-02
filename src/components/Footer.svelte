<script>
    export let footer;
    export let segment;
</script>


<section id="page-footer">
    <nav>
        <ul>

            <!-- Home page -->
            <li><a rel=prefetch aria-current='{segment === undefined ? "page" : undefined}' href='.'>home</a></li>

            <!-- About page -->
            <li><a rel=prefetch aria-current='{segment === "about" ? "page" : undefined}' href='about'>about</a></li>

            <!-- Contact Us Page -->
            <li><a rel=prefetch aria-current='{segment === "contact" ? "page" : undefined}' href='contact'>contact</a></li>

            <!-- Blogs Page -->
            <li><a rel=prefetch aria-current='{segment === "blog" ? "page" : undefined}' href='blog'>blog</a></li>
        </ul>
    </nav>
</section>
