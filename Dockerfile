from ubuntu:14.04
MAINTAINER prathees 


run apt-get update
run apt-get upgrade -y
run apt-get -y install wget 
workdir /root
run wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-5.10.4-x64.bin
run chmod a+x atlassian-confluence-5.10.4-x64.bin
run apt-get -y install git
workdir /root



run git clone https://github.com/pratheeshts0/wikieconfluence.git
workdir /root/wikieconfluence
run cp response.varfile  /root
workdir /root
run ./atlassian-confluence-5.10.4-x64.bin  -q -varfile response.varfile
entrypoint sudo service confluence restart &&  bash
