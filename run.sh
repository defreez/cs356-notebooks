#!/bin/bash

docker run --rm --gpus all -p 8888:8888 -v $PWD/notebooks:/notebooks --ipc=host -it defreez/cs356:fastai
