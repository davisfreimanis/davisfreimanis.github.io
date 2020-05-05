---
title: "Deploying a Hugo Website Using Github Actions"
date: 2020-05-05T15:04:12+02:00
draft: true
tags:
- Github Actions
---

This [blog](https://github.com/davisfreimanis/davisfreimanis.github.io) uses Hugo to serve static pages. To make deploying posts easy, I am using Github Actions for automatic deployment. This post will present how it works.

## Github Actions

My Github repository contains two branches. Everything that exists in the `master` branch is automatically published using Github Pages. To separate source code with optimized Hugo pages, I'm adding content and modifying the style of the blog in a separate branch `source`.

The magic is how the code gets deployed from the `source` branch to `master`. This is done with Github Actions and the configuration file is shown below.

```yaml
name: Github Pages

on:
  push:
    branches: [ source ]
  pull_request:
    branches: [ source ]

jobs:
  build:
    runs-on: ubuntu-18.04
    steps:
    - uses: actions/checkout@v2 # Fetches commits
      with:
        submodules: true  # Fetches Hugo themes
        fetch-depth: 0    # Fetch all history for .GitInfo and .Lastmod

    - name: Setup
      uses: peaceiris/actions-hugo@v2
      with:
        hugo-version: '0.68.3'
        extended: true # For SCSS support in theme

    - name: Build
      run: hugo --minify

    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./public
        publish_branch: master
```

This configuration file defines when and how Github Actions will run. It monitors the `source` branch and will run everytime a new commit or pull request is pushed is detected.

The next thing that happens is that a virtual machine is created running `Ubuntu 18.04`.

There are three Github Actions that are used on this virtual machine:

* [checkout](https://github.com/actions/checkout)
* [actions-hugo](https://github.com/peaceiris/actions-hugo)
* [actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)

The first action `checkout` fetches the code from the `source` branch.

Next `actions-hugo` installs Hugo and builds the source code and generates the `public` folder.

The last action `actions-gh-pages` takes the public folder and pushes it to the master branch where my page is hosted using Github Pages.

![Hugo with Github Actions](/images/hugo.jpg)
