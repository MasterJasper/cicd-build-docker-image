#! /bin/bash

# fail on any error
set -eu

# login to your docker hub account
# cat ~/my_password.txt | sudo docker login --username aosnotes77 --password-stdin
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# use the docker tag command to give the image a new name
# sudo docker tag techmax aosnotes77/techmax
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME


# push the image to your docker hub repository
# sudo docker push aosnotes77/techmax
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME