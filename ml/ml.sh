#!/bin/sh

pip3 install \
    wheel==0.33.0 \
    setuptools==40.8.0 \
    scipy==1.2.1 \
    tensorflow-probability==0.5.0 \
    --upgrade

## cpu-xgboost
pip3 install xgboost==0.81

## Get Java (for h2o R package)
apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    cmake \
    default-jdk \
    default-jre \
  && R CMD javareconf

install2.r h2o greta

