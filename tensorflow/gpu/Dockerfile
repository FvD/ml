FROM rocker/cuda:3.5.2

COPY tensorflow/tensorflow.sh install/tensorflow.sh
RUN . install/tensorflow.sh
RUN pip3 install --no-cache-dir tensorflow-gpu==1.12.0


