FROM ubuntu:14.04
MAINTAINER Dmitry Kostyaev <dmitry@kostyaev.me>

RUN apt-get -y update && apt-get install -y \
python \
python-dev \
python-distribute \
python-pip \
libffi-dev \
libssl-dev \
libxml2-dev \
libxslt1-dev \
libevent-dev \
libjpeg8-dev \
python-all-dev \
libfreetype6-dev

COPY . /opt/image-turk-nastya/
# ADD https://dl.dropboxusercontent.com/u/40391687/api_credentials.py /opt/image-turk-nastya/searchtools/engines/

RUN mkdir -p /opt/image-turk-nastya/data

RUN pip install -r /opt/image-turk-nastya/requirements.txt


WORKDIR /opt/image-turk-nastya/

EXPOSE 5001

CMD ["python", "image_turk.py"]