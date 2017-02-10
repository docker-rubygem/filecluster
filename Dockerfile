FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.4

RUN gem install filecluster --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fc-daemon"]
CMD ["--help"]
