<script>
    export let footer;
    export let segment;
</script>


<section id="page-footer">
    <nav>
        <ul>

            <!-- About page -->
            <li><a rel=prefetch aria-current='{segment === "about" ? "page" : undefined}' href='about'>about</a></li>

            <!-- Contact Us Page -->
            <li><a rel=prefetch aria-current='{segment === "contact" ? "page" : undefined}' href='contact'>contact</a></li>

        </ul>
    </nav>
</section>
