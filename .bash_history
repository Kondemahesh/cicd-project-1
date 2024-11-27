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
