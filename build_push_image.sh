docker build -t item-app:v1 .
docker image ls
docker tag item-app:v1 hadezbladez/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u hadezbladez@gmail.com --password-stdin
docker push hadezbladez/item-app:v1
