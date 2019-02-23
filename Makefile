all:
	make cuda-img 
	make tensorflow-img
	make ml-img

## Note: build path is top level, file path goes to Dockerfile

cuda-img: cuda/base/Dockerfile cuda/devel/Dockerfile 
	docker build -t rocker/cuda:3.5.2 . -f cuda/base/Dockerfile
	docker build -t rocker/cuda-dev:3.5.2 . -f cuda/devel/Dockerfile

tensorflow-img: tensorflow/cpu/Dockerfile tensorflow/gpu/Dockerfile
	docker build -t rocker/tensorflow:3.5.2 . -f tensorflow/cpu/Dockerfile
	docker build -t rocker/tensorflow-gpu:3.5.2 . -f tensorflow/gpu/Dockerfile

ml-img: ml/gpu/Dockerfile ml/cpu/Dockerfile
	docker build -t rocker/ml:3.5.2 . -f ml/cpu/Dockerfile
	docker build -t rocker/ml-gpu:3.5.2 . -f ml/gpu/Dockerfile



