#!/bin/bash

raw_arg=$1
img_field=$(docker images | fzf --filter $raw_arg)
img_name=$(echo $img_field | awk '{print $1}')
img_tag=$(echo $img_field | awk '{print $2}')
img_id=$(echo $img_field | awk '{print $3}')
echo "Mounting Documents folder to the container ..."
echo "Running docker container for $img_name:$img_tag $img_id ..."
docker run --rm -it -v ~/winhome/Documents/:/Documents --name $img_name $img_id