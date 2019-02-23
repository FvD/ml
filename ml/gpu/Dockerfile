FROM rocker/cuda-dev:3.5.2

## xgboost source build
COPY ml/xgboost-gpu.sh /install/xgboost-gpu.sh
RUN . /install/xgboost-gpu.sh

FROM rocker/tensorflow-gpu:3.5.2 

COPY --from=0 /usr/local/lib/R/site-library/xgboost /usr/local/lib/R/site-library/xgboost
COPY ml/ml.sh /install/ml.sh
RUN . /install/ml.sh

