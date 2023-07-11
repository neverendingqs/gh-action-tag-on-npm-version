# gh-action-tag-on-npm-version

Creates a new Git tag whenever the npm package version has changed. Works well
with [publish-me-maybe](https://www.npmjs.com/package/publish-me-maybe).

Outputs whether the tag was created so that other actions can be taken

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
    - name: Tag new npm package releases
      id: tag
      runs-on: ubuntu-latest

      steps:
        - uses: actions/checkout@v2
        - uses: neverendingqs/gh-action-tag-on-npm-version@master
      
    - name: Do something else
      if: ${{ steps.tag.outputs.tag-created == 'true' }}
      run: "echo 'Something else'"
```
