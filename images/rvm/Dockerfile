FROM debian:9

RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf \
    automake \
    bison \
    bzip2 \
    ca-certificates \
    curl \
    dirmngr \
    g++ \
    gawk \
    gcc \
    git \
    gnupg2 \
    libc6-dev \
    libffi-dev \
    libgdbm-dev \
    libgmp-dev \
    libgmp-dev \
    default-libmysqlclient-dev \
    libncurses5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl1.0-dev \
    libtool \
    libyaml-dev \
    make \
    nodejs \
    patch \
    patch \
    pkg-config \
    procps \
    sqlite3 \
    zlib1g-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN adduser ruby
USER ruby
WORKDIR /home/ruby

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && \curl -sSL https://get.rvm.io | bash -s stable --autolibs=read \
    && echo "gem: --no-document --no-ri --no-rdoc" >> ~/.gemrc \
    && echo "bundler" > ~/.rvm/gemsets/global.gems

LABEL Maintainer="kyriakos dot kentzoglanakis at the G mail of the com"
LABEL Version="1.0.0"
