#!/bin/sh

####### Set up env variables in R #######
CUDA_HOME=/usr/local/cuda
CUDA_PATH=/usr/local/cuda
PATH=$CUDA_HOME/bin:$PATH
LD_LIBRARY_PATH=$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH

echo "rsession-ld-library-path=$LD_LIBRARY_PATH" | tee -a /etc/rstudio/rserver.conf 
echo "\n\
      \nCUDA_HOME=$CUDA_HOME \
      \nCUDA_PATH=$CUDA_PATH \
      \nPATH=$PATH" >> /usr/local/lib/R/etc/Renviron



