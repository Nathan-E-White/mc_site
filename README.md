# Mogul Charts

Archived Svelte/Sapper market-data web app built during the 2020 lockdown period.
The original public site is no longer hosted, but the repository preserves the
application source and the deployment pattern used at the time.

## What this shows

- Sapper/Svelte web application structure with route-level pages, static assets,
  and server middleware.
- Dockerized Node runtime for local and Cloud Run deployment.
- Google Cloud Build pipeline that builds the image, pushes it to Artifact
  Registry, and deploys the service to Cloud Run.
- Firebase Hosting configuration that rewrites web traffic to the Cloud Run
  service.
- Early market-data and equity-universe exploration artifacts under `dev/`.

## Deployment architecture

The historical deployment pipeline was:

1. Push to GitHub.
2. Cloud Build builds the Docker image.
3. The image is pushed to Artifact Registry.
4. Cloud Build deploys the image to Cloud Run.
5. Firebase Hosting routes public web traffic to the Cloud Run service.

The Cloud Run service names in `cloudbuild.yaml` and `firebase/firebase.json`
come from the original Sapper-on-Cloud-Run scaffold and are retained as
historical configuration, not as an active production deployment.

## Local development

```sh
npm install
npm run dev
```

For local container testing:

```sh
npm run dev:docker:build
npm run dev:docker:run
```

## Archive status

This project is kept as a portfolio archive and precursor to later research
workbench projects. It is not maintained as a live trading, investment, or
financial-advice product.
