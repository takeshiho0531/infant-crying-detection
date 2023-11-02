FROM --platform=linux/amd64 python:3.9.18-bookworm as base

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
		sudo \
		wget \
		vim \
        git

RUN pip install --upgrade pip

RUN git clone https://github.com/alibaba/FederatedScope.git

WORKDIR /FederatedScope

RUN pip install torch==1.10.2
RUN pip install torchvision==0.11.3
RUN pip install torchaudio==2.1.0

RUN pip install .

