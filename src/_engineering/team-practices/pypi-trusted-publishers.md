---
layout: page
title: PyPI Trusted Publishers
weight: 4
subcategory: Dev Standards
---

This page describes how to setup PyPI and GitHub to handle releases for Meltano-managed packages using [PyPI Trusted Publishers](https://docs.pypi.org/trusted-publishers/).

## PyPI

### PyPI Account

The credentials for the Meltano PyPI accounts are stored in the `Engineerin` 1Password vault.

### PyPI Trusted Publishers

All PyPI packages managed by Meltano should use [PyPI Trusted Publishers](https://docs.pypi.org/trusted-publishers/), a form of OpenID Connect used to generate short-lived tokens for publishing packages from GitHub.

#### Existing Projects

For existing PyPI projects, you can add a trusted publisher by navigating to `Publising` in the project management view (`https://pypi.org/manage/project/<project name>/settings/publishing/`).

#### New Projects

For projects that haven't yet been published to PyPI, you can add a trusted publisher by navigating to `Publishing` in the account-level management view (`https://pypi.org/manage/account/publishing/`).

#### OIDC Form

You'll have to fill in the following information for the project:

* **PyPI Project Name**: The name of the project on PyPI. This won't be required for projects already present on PyPI. It doesn't have to match the GitHub repository name.
* **Owner**: The GitHub organization that owns the project. For example, `meltano` or `MeltanoLabs`.
* **Repository name**: The GitHub repository name.
* **Environment**: The name of the GitHub environment that will be used for publishing packages. This should match the name of [the environment you create](#environment) in the repository settings. We default to using `publishing` for all Meltano packages.

## GitHub

### Environment

This setting is found in the repository settings under `Environments`. You'll need to create a new environment for publishing packages to PyPI. The name of this environment needs to match the name you filled in [the PyPI OIDC form](#oidc-form).

### Workflow

Add a publishing workflow if one doesn't already exist. The workflow should be triggered on when a new GitHub release is **published**:

For example, the following workflow will publish a package to PyPI when a new release is published and will use the `publishing` environment:

```yaml
# release.yaml
name: Publish with Dynamic Versioning

on:
  release:
    types: [published]

permissions:
  contents: write
  id-token: write

jobs:
  publish:
    name: Publish to PyPI
    runs-on: ubuntu-latest
    environment: publishing
    env:
      PIP_CONSTRAINT: .github/workflows/constraints.txt
    steps:
      - name: Checkout code
        uses: actions/checkout@v3.5.2
        with:
          fetch-depth: 0

      - name: Set up Python
        uses: actions/setup-python@v4.6.0
        with:
          python-version: "3.10"

      - name: Upgrade pip
        run: |
          pip install pip
          pip --version

      - name: Install Poetry
        run: |
          pipx install poetry
          pipx inject poetry poetry-dynamic-versioning[plugin]
          poetry --version
          poetry self show plugins

      - name: Build
        run: poetry build

      - name: Upload wheel to release
        uses: svenstaro/upload-release-action@v2
        with:
          file: dist/*.whl
          tag: ${{ github.ref }}
          overwrite: true
          file_glob: true

      - name: Publish
        uses: pypa/gh-action-pypi-publish@v1.8.6
```

Note that the name of the workflow file has to match what you filled in for the `Workflow name` field in the [PyPI OIDC form](#oidc-form).
