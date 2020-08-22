# gh-action-tag-on-npm-version

Creates a new Git tag whenever the npm package version has changed. Works well
with [publish-me-maybe](https://www.npmjs.com/package/publish-me-maybe).

## Example usage

```yaml
name: Tag new npm package releases
on:
  push:
    branches:
      - master
    paths:
      - package.json
jobs:
  tag-npm-release:
    name: Tag new npm package releases
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2
      - uses: neverendingqs/gh-action-tag-on-npm-version@master
```
