#!/bin/bash

docker build -t spacemacs               \
       --build-arg devuser=$USER .
