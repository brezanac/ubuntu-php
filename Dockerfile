FROM ubuntu:18.04

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

# Adding missing packages and repositories.
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata \
    && apt-get -y install curl \
    && apt-get -y install software-properties-common \
    && yes | add-apt-repository ppa:ondrej/php

WORKDIR /var/www

CMD ["/bin/bash"]
SHELL ["/bin/bash", "-c"]