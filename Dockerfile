FROM ubuntu

MAINTAINER estudiante@tuia.com.ar
	
ADD "*.sh" "fragmento.txt" "/home/Programa_TP/"

ENV PATH="${PATH}:/home/Programa_TP"

RUN apt-get -y update && apt-get install -y nano
RUN apt-get -y update && apt-get install -y sed
RUN apt-get clean
RUN echo '/home/Programa_TP/Enunciadotp.sh' >>/root/.bashrc

