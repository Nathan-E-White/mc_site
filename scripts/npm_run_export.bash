#!/usr/bin/env bash

# =========================================================================== #
# Description:  The following command does several things:
#
#               1.  Sapper applies code splitting based on the routes in:
#                     `src/routes`
#                   and generates bundles of .js, .html and .css;
#
#               2.  Sapper starts the web application locally and crawls
#                   its content, starting at `/` and following each `<a>`
#                   tag. It fetches the data defined in a route's `preload`
#                   function.
#
#               3.  For each route, Sapper generates a static HTML file in:
#                     `__sapper__/export`.
#
#               Following which the user can deploy the content of
#               `__sapper__/export` to any hosting platform and serve up the
#               static web application.
# =========================================================================== #

npm run export;

