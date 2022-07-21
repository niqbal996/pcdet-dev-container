ARG BASE_IMAGE=nvcr.io/nvidia/tensorrt:21.10-py3
FROM ${BASE_IMAGE} as tensorRT2110

#ARG WHEEL_FILE
ARG UNAME=docker
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd --create-home -u $UID -g $GID -o --shell /bin/bash $UNAME && echo "$UNAME:$UNAME" | chpasswd && adduser $UNAME sudo && usermod -a -G video $UNAME && usermod -a -G dialout $UNAME
USER $UNAME
WORKDIR /home/$UNAME
USER root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
          git \
		cmake \
		build-essential \
		curl \
		wget \
		gnupg2 \
		lsb-release \
		ca-certificates \
        build-essential \
        software-properties-common \
        python3-pip \
        python3-dev \
        cmake \
        unattended-upgrades \
    && rm -rf /var/lib/apt/lists/*

COPY . /workspace/pcdet-dev
WORKDIR /workspace/pcdet-dev 
RUN pip install --upgrade pip
# avoid downloading PyTorch and use cached downloads
RUN --mount=type=cache,target=/root/.cache \
    pip install -r ./docker/requirements.txt

# libGL.so.1 required for
RUN apt-get install -y ffmpeg libsm6 libxext6 python3-tk #import tkinter
#RUN ./docker/install_mmlab.sh
#RUN cd ./thirdparty/OpenPCDet && python3 setup.py develop
#RUN mim install mmcv-full mmdet
#RUN cd ./thirdparty/mmdetection3d/ && python3 setup.py develop
#RUN cd ./thirdparty/mmdeploy/ && python3 setup.py develop
