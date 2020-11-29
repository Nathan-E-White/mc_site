# =========================================================================== #
#                                                                             #
#                                                                             #
#              .------..------..------..------..------..------.               #
#              |D.--. ||O.--. ||C.--. ||K.--. ||E.--. ||R.--. |               #
#              | :/\: || :/\: || :/\: || :/\: || (\/) || :(): |               #
#              | (__) || :\/: || :\/: || :\/: || :\/: || ()() |               #
#              | '--'D|| '--'O|| '--'C|| '--'K|| '--'E|| '--'R|               #
#              `------'`------'`------'`------'`------'`------'               #
#                      .------..------..------..------.                       #
#                      |F.--. ||I.--. ||L.--. ||E.--. |                       #
#                      | :(): || (\/) || :/\: || (\/) |                       #
#                      | ()() || :\/: || (__) || :\/: |                       #
#                      | '--'F|| '--'I|| '--'L|| '--'E|                       #
#                      `------'`------'`------'`------'                       #
#                                                                             #
#                                                                             #
# =========================================================================== #


# =========================================================================== #
#                           BUILD SAPPER APPLICATION
# =========================================================================== #
FROM mhart/alpine-node:12 AS build-app
WORKDIR /app
COPY . .
RUN npm install --no-audit --unsafe-perm
RUN npm run build

# =========================================================================== #
#                           INSTALL RUNTIME DEPENDENCIES                      #
# =========================================================================== #
FROM mhart/alpine-node:12 AS build-runtime
WORKDIR /app
COPY package.json package-lock.json ./
COPY sitemap.xml ./
RUN npm ci --production --unsafe-perm

# =========================================================================== #
#                           CREATE RUNTIME IMAGE                              #
# =========================================================================== #
FROM mhart/alpine-node:slim-12
WORKDIR /app
COPY --from=build-app /app/__sapper__ ./__sapper__
COPY --from=build-app /app/static ./static
COPY --from=build-runtime /app/node_modules ./node_modules

# =========================================================================== #
#                           START THE APPLICATION                             #
# =========================================================================== #
EXPOSE 3000
CMD ["node", "__sapper__/build"]
