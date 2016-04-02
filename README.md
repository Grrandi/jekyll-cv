Jekyll template for a simple cover page / unofficial cv
=====================================================

[Demo](http://grrandi.github.io/stunning-pancake/)

## Usage

### Running locally

1. Fork and clone this repository
2. Install Jekyll `gem install jekyll`
3. Run `make serve`
4. Customize your content
5. Run `make dist`

`make serve` runs jekyll serve -w command that enables live reload on editing the content

`make dist` runs `git subtree push --prefix dist origin gh-pages` to publish your generated site under `_site` folder to gh-pages.

### Themes

Currently the project only supports one layout, but several color templates. Colors are picked from https://github.com/chriskempson/base16

You can change the theme by changing the `theme: theme-ocean-orange` line in _config.yml file. It translates into a class of the body tag for the site. Editing different themes happens in the `_sass/themes.scss` file. 

Current themes are:

- theme-greyscale
- theme-default-red
- theme-default-orange
- theme-default-green
- theme-default-blue
- theme-twilight-red
- theme-twilight-orange
- theme-twilight-green
- theme-twilight-blue
- theme-sulphur-red
- theme-sulphur-orange
- theme-sulphur-green
- theme-sulphur-blue
- theme-ocean-red
- theme-ocean-orange
- theme-ocean-green
- theme-ocean-blue

### Licence

[MIT](LICENCE.md)


