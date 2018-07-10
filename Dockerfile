FROM ruby:2.3.1

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get update && \
    apt-get -y install nodejs git && \
    apt-get -y clean
RUN gem install --no-rdoc --no-ri bundler smashing
RUN mkdir /smashing

COPY run.sh /

ENV PORT 3030
ENV GIT_REPO_URI ""
ENV GIT_USERNAME ""
ENV GIT_TOKEN ""
EXPOSE $PORT
WORKDIR /smashing

CMD ["/run.sh"]
