FROM ruby

RUN gem install jekyll jekyll-sitemap

WORKDIR /usr/src/app

CMD jekyll server -P 3000 -H 0.0.0.0 -w --force_polling --incremental
