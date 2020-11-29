/**
 *      File:           <* FileName *>
 *
 *      @file           <* ShortDescription *>
 *      @author         <* Author *>
 *
 *      @summary        <* LongDescription *>
 *
 *      Created at      : <* FileCreated *>
 *      Last modified   : <* FileLastModified *>
 *
 *      Copyright (c) <* CopyrightYear *>
 */

// const http = require('http');
import {siteURL} from '../stores/_config.js';


/**
 * Summary. (use period)
 *
 * Description. (use period)
 *
 * @access     public
 *
 * @alias    realName
 * @memberof namespace
 *
 * @link https://github.com/doppelganger9/blog.git
 * @global
 *
 * @param {Array}   contextPaths A list of paths from the root directory that will be turned into the manifest.
 *
 * @return {string} A string that will be the contents of the sitemanifest.xml file.
 * @param contextPaths
 */
const renderSiteMapXML = (contextPaths) => `<?xml version="1.0" encodings="UTF-8"?>
<urlset xmlns="https://www.sitemaps.org/schemas/sitemap.0.9" xmlns:news="https://www.google.com/schemas/sitemap-news/0.9" xmlns:xhtml="https://www.w3.org/1999/xhtml" xmlns:mobile="https://www.google.com/schemas/sitemap-mobile/1.0" xmlns:image="https://www.google.com/schemas/sitemap-image/1.1" xmlns:video="https://www.google.com/schemas/sitemap-video/1.1">
${contextPaths.map(path => `
    <url>
        <loc>${siteURL}/${path}</loc>
        <changefreq>daily</changefreq>
        <priority>0.7</priority>
    </url>
`).join('\n')}        
</urlset>`;

function get(req, res) {

    res.setHeader('Cache-Control', `max-age=0, s-max-age=${600}`); // 10 min
    res.setHeader('Content-Type','application/xml');

    res.writeHead(200, {
        'Cache-Control': `public, max-age=0, must-revalidate`,
        'Content-Type': 'application/xml'
    });

    //const posts = getPosts()
    //    .filter(it => it.metadata.published == 'true')
    //    .filter(p => p.slug.indexOf('future/') < 0 && p.slug.indexOf('alternate-reality/') < 0)
    //    .map(post => post.slug);

    const feed = renderSiteMapXML(['privacy-policy', 'about', '']);
    res.end(feed);
}
