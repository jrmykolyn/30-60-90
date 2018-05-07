# 30/60/90

## Table of Contents
- [About](#about)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Setup](#setup)
- [Usage](#usage)
- [Documentation](#documentation)

## About
30/60/90 is a simple RiotJS application which reads in and displays information about personal goals to be completed within the next 30, 60, and 90 days.

## Prerequisites
- Node
- npm

## Installation
Fork the repository and clone it to your local file system.

## Setup
Navigate to the root of the repository and run:

```
npm install
```

## Usage
The data displayed by the application lives within `src/config/index.js`. Goals may be added, removed, or marked as complete by making adjustments to this file.

Before any adjustments can be previewed, the project must be rebuilt. This can be completed by running `npm run build` which compiles a new JavaScript bundle and stylesheet, and saves both to the `docs/` folder. To view the results, open the `docs/index.html` file in a web browser.

Why are the compiled files saved to `docs/` and not `dist/` you ask? Simple, because this project has been structured around Github's [`GH Pages`](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/) publishing requirements. To configure GH Pages, view [this tutorial](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/#publishing-your-github-pages-site-from-a-docs-folder-on-your-master-branch). Once the repo has been set up, the contents of the `docs/` folder can be published by running `npm run publish` (or by pushing to the `master` branch).

## Documentation
Currently, 30/60/90 does not include any external documentation.

For an overview of the project's evolution, please consult the CHANGELOG.
