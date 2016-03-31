FROM ruby

RUN gem install -Nq jekyll jekyll-sitemap

WORKDIR /usr/src/app
EXPOSE 3000
CMD jekyll server -P 3000 -H 0.0.0.0 -w --force_polling --incremental
