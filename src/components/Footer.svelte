<script>
    export let footer;
    export let segment;
</script>


<section id="page-footer">
    <nav>
        <ul>

            <!---- About page ---->
            <li><a rel="prefetch"
                   aria-current='{segment === "about" ? "page" : undefined}'
                   href='/about-us'
                   hreflang="en"
                   target="_self">
                About</a>
            </li>

            <!---- Contact Us Page ---->
            <li><a rel="prefetch"
                   aria-current='{segment === "contact" ? "page" : undefined}'
                   href='/contact-us'
                   hreflang="en"
                   target="_self">
                Contact
            </a>
            </li>

            <!---- Cookies Policy ---->
            <li><a aria-current='{segment === "cookies-policy" ? "page" : undefined}'
                   rel="prefetch"
                   href="/cookies-policy"
                   hreflang="en"
                   target="_self">
                Cookies Policy</a>
            </li>

            <!-- Disclaimers -->
            <li><a rel="prefetch"
                   aria-current='{segment === "disclaimers" ? "page" : undefined}'
                   href="/disclaimers"
                   hreflang="en"
                   target="_self"
            >
                Legal Stuff</a>
            </li>

            <!-- FAQs -->
            <li><a rel="prefetch"
                   aria-current='{segment === "faqs" ? "page" : undefined}'
                   href="/faqs"
                   hreflang="en"
                   target="_self">
                FAQs</a>
            </li>

            <!-- Privacy Policy -->
            <li><a aria-current="{segment === 'privacy-policy' ? 'page' : undefined}"
                   rel="prefetch"
                   href="/privacy-policy">
                Privacy Policy</a>
            </li>

            <!-- Site Status -->
            <li><a rel="prefetch"
                   aria-current="{segment === 'status' ? 'page' : undefined}"
                   href="/site-status"
                   hreflang="en"
                   target="_self">
                Site Status
            </a>
            </li>

            <!-- ========================================================== -->
            <!--                         Terms of Use                       -->
            <!-- ========================================================== -->
            <li><a
                    aria-current="{segment === 'terms-of-use' ? 'page' : undefined}"
                    rel="prefetch"
                    href="/terms-of-use"
                    hreflang="en"
                    target="_self">
                Terms of Use
            </a>
            </li>

            <!-- == -->
            <!-- CODE OF CONDUCT -->
            <!-- == -->
            <li><a
                    aria-current="{segment === 'code-of-conduct' ? 'page' : undefined}"
                    href="/code-of-conduct"
                    hreflang="en"
                    rel="prefetch"
                    target="_self">
                Code of Conduct
            </a>

            </li>
        </ul>
    </nav>
</section>
