# Docker Jekyll
[Docker](https://www.docker.com/)
image for using
[Jekyll](https://jekyllrb.com/)
for development and building.

## Development Environment

In the root of your Jekyll project, create a `Dockerfile` using the `:onbuild`
image:

    FROM exegete46/jekyll:onbuild

This will copy your project into `/usr/src/app/` in a container with Jekyll
installed.  To run the development environment:

    $ docker build --tag=my-site .
    $ docker run --rm -P -v `pwd`:/usr/src/app/ my-site

This will start the docker container with the development server, and should
reload the code as you edit it.

## Creating a New Site

All of the Jekyll commands are available inside the container:

    $ docker run --rm -v `pwd`:/usr/src/app exegete46/jekyll jekyll new my-site

## Build Your Site

Similar to creating a new site.

    $ docker run --rm -v `pwd`:/usr/src/app exegete46/jekyll jekyll build
