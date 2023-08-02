
FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Recife

ENV LANG C.UTF-8

COPY . /refnerf-pytorch

WORKDIR /refnerf-pytorch

RUN apt-get update && apt-get install -y git

RUN pip install --no-cache-dir --upgrade pip setuptools

RUN pip install numpy
RUN pip install opencv-python
RUN pip install Pillow
RUN pip install tensorboard
RUN pip install gin-config
RUN pip install rawpy
RUN pip install mediapy
RUN pip install flatdict
RUN pip install scipy



