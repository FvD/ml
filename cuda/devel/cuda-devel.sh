#!/bin/sh 

###### cuda devel #########
## Adapted from nvidia/cuda:9.0-devel
## https://gitlab.com/nvidia/cuda/blob/ubuntu16.04/9.0/devel/Dockerfile
apt-get update && apt-get install -y --no-install-recommends \
        cuda-libraries-dev-$CUDA_PKG_VERSION \
        cuda-nvml-dev-$CUDA_PKG_VERSION \
        cuda-minimal-build-$CUDA_PKG_VERSION \
        cuda-command-line-tools-$CUDA_PKG_VERSION \
        cuda-core-9-0=9.0.176.3-1 \
        cuda-cublas-dev-9-0=9.0.176.4-1 \
        libnccl-dev=$NCCL_VERSION-1+cuda9.0 && \
    rm -rf /var/lib/apt/lists/*

LIBRARY_PATH=/usr/local/cuda/lib64/stubs


