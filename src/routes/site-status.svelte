<svelte:head>
    <title>Site Status</title>

    <!-- Mandatory OpenGraph tags -->
    <meta property="og:title" content="">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <!-- Optional OpenGraph tags -->
    <meta property="og:audio" content="">
    <meta property="og:description" content="">
    <meta property="og:locale" content="">
    <meta property="og:locale:alternate" content="">
    <meta property="site_name" content="">
    <meta property="video" content="">

</svelte:head>

<script>
    let statusArray = [
        /* label:  String  tag for user display */
        /* Link:   HTTP    clickable link */
        /* TODO: Status: Integer http return code */
        /* TODO: Online: Boolean if site is currently ok */
        /* TODO: Checked: Timestamp when page was last checked */
        {label: 1, link: "<a href=\"/\">Home Page</a>"},
        {label: 2, link: "<a href=\"/site-map\">Site Map</a>"},
        {label: 3, link: "<a href=\"/about-us\">About Us</a>"},
        {label: 4, link: "<a href=\"/contact-us\">Contact us</a>"},
        {label: 5, link: "<a href=\"/terms-of-use\">Terms of use</a>"},
        {label: 6, link: "<a href=\"/privacy-policy\">Privacy Policy</a>"},
        {label: 7, link: "<a href=\"/code-of-conduct\">Code of Conduct</a>"}
    ];

    /* Holds table sort state. Initialized to reflect table sorted by id column ascending */
    let sortBy = {col: "label", ascending: true};

    $: sort = (column) => {
        if (sortBy.col === column) {
            sortBy.ascending = !sortBy.ascending;
        } else {
            sortBy.col = column;
            sortBy.ascending = true;
        }

        // Modifier for sorting ascending or descending;
        let sortModifier = (sortBy.ascending) ? +1 : -1;

        let sort = (a, b) => {
            a[column] < b[column] ? -1 * sortModifier : a[column] > b[column] ? sortModifier : 0;
        }

        statusArray = statusArray.sort(sort);
    }
</script>

<body>

<!-- STATUS TABLE -->
<table>
    <thead>
    <tr>
        <th on:click={sort("label")}>Page</th>
        <th on:click={sort("link")}>Link</th>
        <!-- TODO: <th on:click={sort("status")}>Status</th> -->
        <!-- TODO: <th on:click={sort("code")}>Code</th> -->
        <!-- TODO: <th on:click={sort("scanned")}>Last Scan</th> -->
    </tr>
    </thead>
    <tbody>
    {#each statusArray as row}
        <tr>
            <td>{row.label}</td>
            <td>{row.link}</td>
            <!-- <td>{row.status}</td> -->
            <!-- <td>{row.code}</td> -->
            <!-- <td>{row.scanned}</td> -->
        </tr>
    {/each}
    </tbody>
</table>


</body>
