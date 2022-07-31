FROM ubuntu

MAINTAINER estudiante@tuia.com.ar
	
ADD "*.sh" "fragmento.txt" "/home/Programa_TP/"

ENV PATH="${PATH}:/home/Programa_TP"
RUN echo '/home/Programa_TP/Enunciadotp.sh' >>/root/.bashrc

