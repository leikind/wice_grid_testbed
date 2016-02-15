# How to use it
# =============
#
# Visit http://blog.zedroot.org/using-docker-to-maintain-a-ruby-gem/

# ~~~~ Image base ~~~~
# Base image with the latest Ruby only
FROM ruby:2.2.3
MAINTAINER Guillaume Hain zedtux@zedroot.org


# ~~~~ Set up the environment ~~~~
ENV DEBIAN_FRONTEND noninteractive

# ~~~~ OS Maintenance ~~~~
RUN apt-get update && apt-get install -y git nodejs

# ~~~~ Rails Preparation ~~~~
# Rubygems and Bundler
RUN touch ~/.gemrc && \
  echo "gem: --no-ri --no-rdoc" >> ~/.gemrc && \
  gem install rubygems-update && \
  update_rubygems && \
  gem install bundler && \
  mkdir -p /gem/

# ~~~~ Set up the environment ~~~~
ENV PHANTOMJS_VERSION 1.9.8

# ~~~~ Phantomjs ~~~~
RUN cd /tmp && \
    curl -L -O https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
    tar xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
    mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/local/bin && \
    rm -rf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64

WORKDIR /gem/
ADD . /gem/
RUN bundle install

# Import the gem source code
VOLUME .:/gem/

ENTRYPOINT ["bundle", "exec"]
CMD ["rake", "-T"]
