# Minify Css Js and Html files in GitHub Action
The GitHub action for minifying CSS, Js, and HTML and push in main branch or another brach (e.g gh-pages).

# Usage
This project uses [actions-js/push](https://github.com/actions-js/push) to push changes. You can see inputs and customize push process as you need by reading [actions-js/push](https://github.com/actions-js/push).

Note that in many cases for rebasing codes in minified branch git needs -f (force) to work correctly.
```yml
jobs:
  test:
    runs-on: ${{ matrix.os }}

    strategy:
      fail-fast: false
      matrix:
        os: [ubuntu-20.04]
    env:
      prepo: ${{github.repository}}
    steps:
    - uses: actions/checkout@v2
    - name: Set up Minify Actions
      uses: amireshoon/minifyAction@main
      with:
        repo: $prepo
    - name: Minifying Codes
      run: |
        minifier.sh $prepo
    - name: Pushing to production branch
      uses: actions-js/push@master
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        directory: github/workspace
        branch: production
        message: Minified css, js and html
        author_name: MinifyAction[bot]
        author_email: amireshoon-minifyAction@users.noreply.github.com
        force: true
```

# License
This project is under [MIT License](/LICENSE).