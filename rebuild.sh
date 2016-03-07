#!/bin/bash

#docker pull ubuntu:15.10
docker build --no-cache -t spacemacs               \
       --build-arg devuser=$USER .
