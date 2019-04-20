all:
	make cuda-img 
	make tf-img
	make ml-img

cuda-img: cuda/base/Dockerfile cuda/devel/Dockerfile 
	docker build -t rocker/cuda-10.1 cuda/base
	docker build -t rocker/cuda-10.1-dev cuda/devel

tf-img: tensorflow/gpu/Dockerfile
	docker build -t rocker/tensorflow-gpu-10.1 tensorflow/gpu

ml-img: ml/gpu/Dockerfile 
	docker build -t rocker/ml-gpu-10.1 ml/gpu


