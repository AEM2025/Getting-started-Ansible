FROM ubuntu

RUN apt update -y && apt install ssh -y && apt install sudo -y

RUN adduser test

RUN  echo 'test:123' | chpasswd

RUN usermod -aG sudo test

ENTRYPOINT service ssh restart && bash

