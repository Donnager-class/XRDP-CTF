# X-CTF 

## myCTF  
 ![](/images/ctf_6_1.png) 
## What does this CTF entail? 
This Dockerfile is a CTF that is based on an x11 service in addition to an apache2 and mysql service. The CTF mentioned is a "capture the flag" scenario that focusses on a variety of vulnerabilities to obtain the "flag". The first vulnerability is a service misconfiguration and other vulnerabilities may differ.  
 
The goal is to obtain the "flag"(you will know it when you see it.). It is recommended to start from the misconfiguration, but there is more than one method to obtain the flag.
 
--- 
## The scenario:
 You are in a organisation’s office. Upon talking to one of the staff
members, who introduced himself as Amos Burton, he briefly
complained about their remote desktop envirnoment.

---
## The Task 
 The organisation's desktop environment for their employees
has been configured lazily. Exploit their staff's working
environment to gain full control of their service.

---
## CTF setup guide 
Firstly, clone the repository to your terminal: 
```
git clone https://gitlab.com/thephoenix2022/projecta1.git 
```

Go to the repository: 
```
cd projecta1/ 
```  
Build your Dockerfile:  
```
docker-compose build
``` 
```
docker-compose up
``` 

