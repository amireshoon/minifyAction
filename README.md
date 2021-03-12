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

# How your code minified
We use [juancarlospaco's Python package](https://github.com/juancarlospaco/css-html-js-minify) to minify files but how we identify your files?

In [minifier.sh](/script/minifier.sh) file, Firs we search for files with .css and .js and also .htm/.html files with this bash command:
```bash
find . -type f -name "*.js"
```
The we loop for all founded files and one by one we run [minifier.py](/script/minifier.py) python script.

# What will I bring in future
This is TODO checklist I want to do in up coming days:

- [ ] Support minifying for just wanted files

You can do these to? [Contribute](/pulls)
# License
This project is under [MIT License](/LICENSE).