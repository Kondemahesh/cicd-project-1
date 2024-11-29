vi docker.sh
chmod +x docker.sh
./docker.sh
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version
docker ps
docker --version
docker ps
docker run -d --name jenkin-ci/cd \ -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock \jenkins_home jenkins
docker run -d --name jenkin-ci/cd \ -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock \ jenkins_home jenkins
docker run -d --name jenkin-ci/cd \ -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock \ -v $(which docker):/us/bin/docker/ -u root \  -e DOCKER_GID=$(getent group docker | cut -d: -f3) \ jenkins/jenkins:lts
docker run -d --name jenkins-ci-cd \ -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock \ -v $(which docker):/us/bin/docker/ -u root \  -e DOCKER_GID=$(getent group docker | cut -d: -f3) \ jenkins/jenkins:ltsclear
docker run -d --name jenkin-ci/cd \ -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock \ -v $(which docker):/us/bin/docker/ -u root \  -e DOCKER_GID=$(getent group docker | cut -d: -f3) \ jenkins/jenkins:lts
clear
docker run -d --name jenkins-cicd \ 
clear
vi shell
chmod 777 shell
./shell 
cat /etc/passwd
clear
groupadd docker
cat /etc/group
clear
cat /etc/groupcat shell 
vi shell 
./shell 
docker ps
docker exec -it /bin/bash
docker exec -it docker-cicd /bin/bash
docker exec -it jenkins-cicd /bin/bash
docker restart jenkins-cicd
docker logs -f jenkins-cicd
ls
clear
ls
re -rf docker.sh shell 
rm -rf docker.sh shell 
vi app.js
vi package-lock.json
ls
vi package-lock.json
vi package.json
vi jenkinfile
cat jenkinfile 
vi jenkinfile 
git 
git --version
git push 
git init
ls
git configure
git config --global user.name "Kondemahesh"
git config --global user.email "kondemahesh02@gmail.com"
git push 
git add .
git commit -m "edited jenkinfile"
git status
git push
git remote -v
git remote add origin https://github.com/Kondemahesh/cicd-project-1.git
git add .
git status
git commit -m "edited jenkinsfile"
git push -u origin main
git branch
git checkout -b main
git add .
git status
git commit -m "edited jenkins"
git push -u origin main
git add .
git status
git checkout master
git add .
git status
ls
ls -la
vi jenkinfile 
git add jenkinfile
git status
git add app.js package-lock.json package.json 
git status
git add app.js
git status
git commit -m "edited jenkinsfile"
git push -u origin main
git clone https://github.com/Kondemahesh/cicd-project-1.git
ls
git push -u origin main
git fetch origin
git pull origin main
git push origin main
git push origin main --force
ls
ls -la
vi Dockerfile
git add Dockerfile
git status
git push
git push --set-upstrem origin main
git push --set-upstrem origin master
git push --set-upstream origin master
ls
mv Jenkinsfile jenkinfile
mv jenkinfile Jenkinsfile
ls
vi Jenkinsfile
git add Jenkinsfile
git commit -m "added agentany in Jenkinfile"
vi Jenkinsfile 
git add Jenkinsfile Dockerfile 
git status
ls
git push 
git status
