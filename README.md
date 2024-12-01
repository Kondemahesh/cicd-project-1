# cicd-project-1
1. cicd-project-1
Step:1
2. create ec2 server and install java 11 or 17 above also install Docker
3. login in Jenkins server with docker hub credentials
4. install Jenkins on that server & loginto Jenkins server install suggested plugins
5. create another server install sonarqube & sonar scanner
6. create project in sonarqube server. go to account --> security create token
7. configure token in jenkins global credentials
8. install sonarqube plugin & sonarqube scanner and configure in Jenkins tools section and apply & save
9. configure github repository with Jenkins enable webhooks
10. install docker plugin configure docker plugin in global tool cedentials
11. install trivy plugin in Jenkins server
12. Trivy is used to scan the image any vernabilities 
13. push to image to docker hub registry 
14. create password less authantication Jenkins server & target server 
15. install docker & java in target sever
16. create ssh public key on Jenkin server /root/.ssh/authaizedkeys
17. start log int to server ssh connection is Okay
18. configure in Jenkins pipeline deploy stage
19. deploy container on ec2 instance
