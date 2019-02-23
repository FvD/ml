#!/bin/sh

####### cudnn7 ###############################################################
## Adapted from nvidia/cuda:9.0-cudnn7
## Sources at https://gitlab.com/nvidia/cuda/blob/ubuntu16.04/9.0/runtime/cudnn7/Dockerfile


CUDNN_VERSION=7.4.2.24

apt-get update && apt-get install -y --no-install-recommends \
            libcudnn7=$CUDNN_VERSION-1+cuda9.0 && \
    apt-mark hold libcudnn7 && \
    rm -rf /var/lib/apt/lists/*


