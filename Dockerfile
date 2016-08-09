FROM ubuntu:latest
MAINTAINER Philippe Traverse "philippe.traverse@gmail.com"

RUN apt-get update
RUN apt-get install -y python python-pip php php-cli libtool pkg-config build-essential autoconf automake libzmq3-dev git

WORKDIR /home/

RUN 'git clone https://github.com/ptraverse/python-php-0mq-docker'

RUN 'cd python-php-0mq-docker && ls'

RUN php -r 'while ($i < 4) { echo "PHP WORKS"; $i++; }'

RUN python -c 'for r in range(3): print "PYTHON WORKS"'
