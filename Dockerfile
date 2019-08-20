FROM pytorch/pytorch:0.4.1-cuda9-cudnn7-devel
ARG PYTHON_VERSION=3.6

RUN /opt/conda/bin/conda install -y -c conda-forge opencv &&\
    pip install face-alignment pandas &&\
    apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install -y ffmpeg