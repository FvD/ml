all:
	make cuda-img 
	make tf-img
	make ml-img

cuda-img: cuda/base/Dockerfile cuda/devel/Dockerfile 
	docker build -t rocker/cuda:devel cuda/base
	docker build -t rocker/cuda-dev:devel cuda/devel

tf-img: tf/cpu/Dockerfile tf/gpu/Dockerfile
	docker build -t rocker/tf:devel tf/cpu
	docker build -t rocker/tf-gpu:devel tf/gpu

ml-img: ml/gpu/Dockerfile ml/cpu/Dockerfile
	docker build -t rocker/ml:devel ml/cpu
	docker build -t rocker/ml-gpu:devel ml/gpu


