#!/bin/sh

docker build --tag=exegete46/jekyll -f Dockerfile .
docker build --tag=exegete46/jekyll:onbuild -f Dockerfile-onbuild .
