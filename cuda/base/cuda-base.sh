#!/bin/sh
#### cuda base ##########

## Adapted from nvidia/cuda:9.0-base (A ubuntu16.04-based image)
## Sources at https://gitlab.com/nvidia/cuda/blob/ubuntu16.04/9.0/runtime/Dockerfile
## Commit f7625b4242bb8206fc1f76a321efae930a7f3554

CUDA_VERSION=9.0.176
CUDA_PKG_VERSION=9-0=$CUDA_VERSION-1
PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64
NVIDIA_VISIBLE_DEVICES=all
NVIDIA_DRIVER_CAPABILITIES=compute,utility
NVIDIA_REQUIRE_CUDA="cuda>=9.0"


apt-get update && apt-get install -y --no-install-recommends ca-certificates apt-transport-https gnupg2 curl dirmngr && \
    rm -rf /var/lib/apt/lists/* && \
    NVIDIA_GPGKEY_FPR=ae09fe4bbd223a84b2ccfce3f60f4b3d7fa2af80 && \
    apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub && \
    apt-key adv --export --no-emit-version -a $NVIDIA_GPGKEY_FPR | tail -n +5 > cudasign.pub && \
    echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/cuda.list && \
    echo "deb https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list

apt-get update && apt-get install -y --no-install-recommends \
        cuda-cudart-$CUDA_PKG_VERSION && \
    ln -s cuda-9.0 /usr/local/cuda && \
    rm -rf /var/lib/apt/lists/*


echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf 
echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf





