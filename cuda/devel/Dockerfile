FROM rocker/cuda:3.5.2

###### cuda devel #########
COPY cuda/devel/cuda-devel.sh install/cuda-devel.sh
RUN . install/cuda-devel.sh
ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs

#### cudnn7-devel ##########
ENV CUDNN_VERSION 7.4.2.24
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

COPY cuda/devel/cudnn7-devel.sh install/cudnn7-devel.sh
RUN . install/cudnn7-devel.sh

### required for linking OpenCL
RUN mkdir -p /etc/OpenCL/vendors/ \
  && echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd
