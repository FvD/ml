FROM rocker/cuda:3.5.3

###### cuda devel #########
## Adapted from nvidia/cuda:9.2-devel
## https://gitlab.com/nvidia/cuda/blob/ubuntu16.04/9.2/devel/Dockerfile


RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-libraries-dev-$CUDA_PKG_VERSION \
        cuda-nvml-dev-$CUDA_PKG_VERSION \
        cuda-minimal-build-$CUDA_PKG_VERSION \
        cuda-command-line-tools-$CUDA_PKG_VERSION \
        libnccl-dev=$NCCL_VERSION-1+cuda9.2 && \
    rm -rf /var/lib/apt/lists/*

ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs


#### cudnn7-devel ##########
## Adapted from nvidia/cuda:9.2-cudnn7-devel
## https://gitlab.com/nvidia/cuda/blob/ubuntu16.04/9.2/devel/cudnn7/Dockerfile
ENV CUDNN_VERSION 7.5.0.56
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN apt-get update && apt-get install -y --no-install-recommends \
            libcudnn7=$CUDNN_VERSION-1+cuda9.2 \
            libcudnn7-dev=$CUDNN_VERSION-1+cuda9.2 && \
    apt-mark hold libcudnn7 && \
    rm -rf /var/lib/apt/lists/*

### required for linking OpenCL
RUN mkdir -p /etc/OpenCL/vendors/ \
  && echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd

