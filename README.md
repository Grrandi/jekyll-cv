Jekyll template for a simple cover page / unofficial cv 
=====================================================

[Demo](http://grrandi.github.io/jekyll-cv/)

## Usage

### Running locally

1. Fork and clone this repository
2. Install Jekyll `gem install jekyll`
3. Run `make serve`
4. Customize your content
5. Run `make dist`

`make serve` runs jekyll serve -w command that enables live reload on editing the content

`make dist` runs `git subtree push --prefix _site origin gh-pages` to publish your generated site under `_site` folder to gh-pages.

### Customizing

The template can be mainly customized by writing posts under `_posts` folder following Jekyll's guidelines for posts, and editing `_config.yml`. Each post is meant for one item of something, be it something about education or work experience. A post consists of a yaml front matter block and a content sections. For example:

```
---
category: "language"
name: English
level: Full working profiency
value: 90%
---

I sometimes have trouble pronouncing squirrel.
```

Posts are ordered by category _AND_ by file name. Jekyll posts follow the naming format of `YYYY-MM-DD-{unique-name}.md`, sorting newest date to the top. So if you have three nodes in your work history you will want the latest to be closes to the current date and the oldest to be the furthest. Actual date in the post names doesn't matter at all, just the order. 

#### Localization

In the `_config.yml` file you can change section header texts to your suiting.

#### Sidebar

Sidebar is for showing business card like information about yourself.

Gets it's data from `_config.yml`. Currently customizable fields that are shown in sidebar are:
- name
- email
- address
- phone
- date of birth
- image
- title
- github username
- linkedin url
- twitter handle
- description

If you don't want to show or use these just leave them empty. More fields can be added in `_includes/sidebar.html`

#### Intro

Intented to be an introductory first summary of you. It shows your name, your title and a short abstract. Abstract, name and title are customized in `_config.yml`

#### Experience

Displays your work history. Each node of the history is a single file in the `_posts` folder. Every experience post has experience as the value of category variable. In addition to category, experience posts need also duration, title and company variables in order to be shown properly. For example: 

```
---
category: "experience"
duration: Jan. 2011 - Aug. 2013
title: Awesomness Specialist
company: Specialists Incorporated
---
```

After these you can write a summary about the experience in question. Content of these variables except for category is free, you can write anything you wish in them. 

#### Education

Similar to experience. Each node is a file in the `_posts` folder. Different variables though.

```
---
category: "education"
duration: Sep. 2004 - Aug. 2007
institution: High school of botteled sexual frustration
degree: High something something?
---
```

#### Skills

Similar with the others, only here value variable defines where the progress line and dot will be drawn and it has to be a percentage number like `50%`.

```
---
category: "skill"
name: HerpaDerping
level: professional
value: 50%
---
```

#### Languages

Exactly the same as skills.

```
---
category: "language"
name: Swahili
level: Beginner
value: 3%
---
```

#### Projects

Project differs from the others slightly by having conditional repository urls. If repo and repo_url are given a link with the repo icon will be displayed next to project name. Icons are limited to the icons provided by Font Awesome, currently they have icons for at least github and bitbucket.

```
---
category: "project"
name: Online CV
repo: github
repo_url https://github.com/Grrandi/stunning-pancake
---
```


#### Hobbies

Only has category and name variables.

```
---
category: "hobby"
name: Inventing bad puns
---
```

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


