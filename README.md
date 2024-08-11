# Web Page Analyzer Deployer

## Overview
This is the deployment management component of the `Web Page Analyzer`.

This will enable you to build and deploy the entire `Web Page Analyzer` with a single command.
- Web Page Analyzer API, the backend component ([https://github.com/kosatnkn/web-page-analyzer-api](https://github.com/kosatnkn/web-page-analyzer-api))
- Web Page Analyzer Client, the frontend component ([https://github.com/kosatnkn/web-page-analyzer-client](https://github.com/kosatnkn/web-page-analyzer-client))

## Configuring

In order for the `Makefile` of this repository to access `Makefiles` of **Web Page Analyzer API** and **Web Page Analyzer Client**, all three repositories should reside within a single directory.

```text
<base_dir>
├── web-page-analyzer-api
├── web-page-analyzer-client
└── web-page-analyzer-deploy
```

The `configs/api` directory within the **Deployer Repository** (`web-page-analyzer-deploy`) holds configurations for the `web-page-analyzer-api`.

There are sample config files already in place.

Simply make a copy of each `*.yaml.example` file and rename to `*.yaml`. Configurations in these files are minimal and self explanatory. Make the changes accordingly.

## Spinning Up
Use the following command to spin-up the environment.

```bash
make up
```

> **NOTE:** This will also build both `web-page-analyzer-api` and `web-page-analyzer-client` from source before deploying.

## Spinning Down
Use the following command to spin-down the environment.

```bash
make down
```
