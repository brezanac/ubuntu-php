# ubuntu-php

A Docker image based on the [official Ubuntu image](https://hub.docker.com/_/ubuntu) with integrated apt, curl and [Ondřej Surý PHP](https://launchpad.net/~ondrej/+archive/ubuntu/php/) repository.

The main use case for this image would be to use it in PHP projects where trusting the base image, like the official one provided by Ubuntu, takes precedence over the smaller size of built images and running containers provided by smaller base images which are built from scratch.

Please note that this comes at a cost of images that can be more than twice the size of those built with highly optimized images like [apt-image](https://hub.docker.com/repository/docker/brezanac/apt-image).

## Usage ##
You can use the image as base for your own Dockerfile.

```
FROM brezanac/ubuntu-php:18.04
```

Alternatively you can just run it with `docker run`.

```
docker run -it brezanac/ubuntu-php:18.04
```

## Installing PHP packages

Simply reference the list of [available packages](https://launchpad.net/~ondrej/+archive/ubuntu/php/) and add them to your own Dockerfile.

```
FROM brezanac/ubuntu-php:18.04

RUN apt-get update \
    && apt-get -y install php7.3 php7.3-curl php7.3-mysql php-xdebug

CMD ["/bin/bash"]
```

The repository currently provides multiple versions of PHP (5.6, 7.0, 7.1, 7.2, 7.3, 7.4).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.