FROM debian:latest

ADD "*.sh" "fragmento.txt" "/home/Programa_TP/"

RUN apt-get update
RUN apt-get install -y locales locales-all

ENV LANG es_AR.UTF-8
ENV LC_ALL es_AR.UTF-8
ENV LANGUAGE es_AR.UTF-8

ENV PATH="${PATH}:/home/Programa_TP"

CMD ["/bin/bash"]

RUN apt-get -y update && apt-get install -y nano
RUN apt-get clean

RUN echo '/home/Programa_TP/Enunciadotp.sh' >>/root/.bashrc
