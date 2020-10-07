FROM golang:1.15.2

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/makeworld-the-better-one/amfora /usr/src/amfora

WORKDIR /usr/src/amfora
RUN make && make install

CMD ["amfora"]
