FROM rocker/tidyverse:3.5.2

COPY cuda/base/cuda-base.sh install/cuda-base.sh
RUN . install/cuda-base.sh

LABEL com.nvidia.volumes.needed="nvidia_driver"
LABEL com.nvidia.cuda.version="${CUDA_VERSION}"


ENV CUDA_VERSION 9.0.176
ENV CUDA_PKG_VERSION 9-0=$CUDA_VERSION-1
ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV NVIDIA_REQUIRE_CUDA "cuda>=9.0"

######### runtime ########
ENV NCCL_VERSION 2.4.2

COPY cuda/base/cuda-runtime.sh install/cuda-runtime.sh
RUN . install/cuda-runtime.sh


####### cudnn7 ##########
ENV CUDNN_VERSION 7.4.2.24
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

COPY cuda/base/cuda-cudnn7.sh install/cuda-cudnn7.sh
RUN . install/cuda-cudnn7.sh


####### Set up env variables in R #######
COPY cuda/base/cuda-r-env.sh install/cuda-r-env.sh
RUN . install/cuda-r-env.sh

       
