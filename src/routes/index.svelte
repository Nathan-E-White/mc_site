<script>
    import Navbar from "../components/Nav.svelte";
    import Banner from "../components/Banner.svelte";
    import Services from "../components/Services.svelte";
    import About from "../components/About.svelte";
    import Testimonials from "../components/Testimonials.svelte";
    import Social from "../components/Social.svelte";
    import Footer from "../components/Footer.svelte";
    import DATA from "../data/data";
</script>

<style>
    h1, figure, p {
        text-align: center;
        margin: 0 auto;
    }

    h1 {
        font-size: 2.8em;
        text-transform: uppercase;
        font-weight: 700;
        margin: 0 0 0.5em 0;
    }

    figure {
        margin: 0 0 1em 0;
    }

    img {
        width: 100%;
        max-width: 400px;
        margin: 0 0 1em 0;
    }

    p {
        margin: 1em auto;
    }

    @media (min-width: 480px) {
        h1 {
            font-size: 4em;
        }
    }
</style>

<svelte:head>
    <title>Mogul Charts -- Trade Like a Mogul!</title>
    <!-- Mandatory OpenGraph tags -->
    <meta property="og:title" content="Mogul Charts -- Trade Like a Mogul!">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.mogulchart.com">
    <meta property="og:image" content="">

    <!-- Optional OpenGraph tags -->
    <meta property="og:description" content="MogulChart.com is your first and only stop for real time market data and cutting edge quantitative analysis.">
    <meta property="og:locale" content="en_US">
    <meta property="site_name" content="Mogul Charts">
</svelte:head>


<Navbar navlists={DATA.NAVBAR_DATA} header={DATA.HEADER}/>
<Banner bannerData={DATA.BANNER_DATA}/>
<Services serviceData={DATA.SERVICE_DATA}/>
<About aboutData={DATA.ABOUT_DATA}/>
<Testimonials testimonialData={DATA.TESTIMONIAL_DATA}/>
<Social socialData={DATA.SOCIAL_DATA}/>
<Footer footerData={DATA.FOOTER_DATA} header={DATA.HEADER}/>

<h1>Check back later...</h1>

<figure>
    <img alt='Borat' src='great-success.png'>
    <figcaption>HIGH FIVE!</figcaption>
</figure>

<p><strong>Page coming soon!</strong></p>
