#!/bin/bash

docker run -ti -v $HOME:/home/$USER/host --name spacemacs spacemacs || ( docker start spacemacs && docker attach spacemacs ) || docker attach spacemacs || exit 1
docker rm spacemacs
