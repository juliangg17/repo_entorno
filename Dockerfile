FROM ubuntu

MAINTAINER estudiante@tuia.com.ar
	
ADD "*.sh" "fragmento.txt" "/home/Programa_TP/"

RUN bash /home/Programa_TP/Enunciadotp.sh
