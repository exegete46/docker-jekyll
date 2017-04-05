FROM ruby:2.4.1

RUN gem install -Nq \
  jekyll \
  jekyll-assets \
  jekyll-coffeescript \
  jekyll-sitemap \
  therubyracer \
  uglifier

WORKDIR /usr/src/app
EXPOSE 3000
CMD jekyll server -P 3000 -H 0.0.0.0 -w --force_polling --incremental
