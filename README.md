# cicd-project-1
1. cicd-project-1
Step:1
2. create ec2 server and install java 11 or 17 above also install Docker
3. login in Jenkins server with docker hub credentials
install Jenkins on that server & loginto Jenkins server install suggested plugins
create another server install sonarqube & sonar scanner
create project in sonarqube server. go to account --> security create token
configure token in jenkins global credentials
install sonarqube plugin & sonarqube scanner and configure in Jenkins tools section and apply & save
configure github repository with Jenkins enable webhooks
install docker plugin configure docker plugin in global tool cedentials
install trivy plugin in Jenkins server
Trivy is used to scan the image any vernabilities 
push to image to docker hub registry 
create password less authantication Jenkins server & target server 
install docker & java in target sever
