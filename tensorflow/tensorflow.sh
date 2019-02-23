#!/bin/sh

echo "TENSORFLOW_PYTHON=/usr/bin/python3" >> /usr/local/lib/R/etc/Renviron


## Python
apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    python3-dev \
    python3-setuptools \
    python3-pip

## Install Keras
pip3 install \
    h5py==2.9.0 \
    pyyaml==3.13 \
    requests==2.21.0 \
    Pillow==5.4.1 \
    tensorflow==1.12.0 \
    keras==2.2.4 \
    --no-cache-dir
 
install2.r keras

