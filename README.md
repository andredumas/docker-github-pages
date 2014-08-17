# docker-github-pages

Another docker jekyll container. Jekyll install via the [github-pages gem](https://github.com/github/pages-gem).

```
docker pull andredumas/github-pages
```

## Usage

Standard usage:

```
docker run --rm -v /mysite:/site -p 4000:4000 andredumas/github-pages serve --watch
```

Usage within Vagrant due to [this](http://stackoverflow.com/questions/19822319/jekyll-regeneration-doesnt-work-inside-vagrant) issue

```
docker run --rm -v /vagrant:/site -p 4000:4000 andredumas/github-pages serve --watch --force_polling
```
