FROM jekyll/jekyll:3.8

ARG PWD

COPY $PWD /srv/jekyll
COPY ${PWD}_site /srv/jekyll/_site



RUN gem install bundler:2.2.24 && bundle install

ENTRYPOINT [ "jekyll" ]

CMD [ "build" ]
