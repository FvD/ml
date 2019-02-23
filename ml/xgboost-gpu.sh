#!/bin/sh

## Install xgboost from source to include CUDA GPU support 
## and NCCL multi-GPU support
apt-get update && apt-get install -y --no-install-recommends \
    wget cmake && \
    git clone --recursive --branch v0.81 https://github.com/dmlc/xgboost && \
    mkdir -p xgboost/build && cd xgboost/build && \
    cmake .. -DUSE_CUDA=ON -DR_LIB=ON -DUSE_NCCL=ON && \
    make install -j$(nproc)


## Alternate python binary of xgboost with multi-GPU support
# RUN apt-get update && apt-get -y install wget && \
#  wget https://s3-us-west-2.amazonaws.com/xgboost-wheels/xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl && \
#  pip3 install  xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl && \
#  rm xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl && \
#  apt-get remove --purge -y wget && \
#  rm -rf /var/lib/apt/lists/*


