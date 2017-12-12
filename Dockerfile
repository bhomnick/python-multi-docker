FROM debian:9
MAINTAINER Ben Homnick <bhomnick@gmail.com>

RUN apt-get update && apt-get install -y \
    make \
    build-essential \
    libssl1.0-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    git

RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

ADD bashrc /root/.bashrc
ADD bash_profile /root/.bash_profile

RUN /bin/bash -lc "pyenv install 2.7.14 \
    && pyenv install 3.4.7 \
    && pyenv install 3.5.4 \
    && pyenv install 3.6.3"
