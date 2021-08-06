FROM debian:10
LABEL MAINTAINER="https://github.com/kareemalshfy00/kareemalshafey.git"

WORKDIR kareem/
ADD . /kareem

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./kareem.sh"]
