FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-devel


RUN apt update
RUN apt install wget
RUN apt install unzip

RUN conda create -n synorim python=3.8
RUN conda activate synorim
RUN conda install pytorch==1.10.2 cudatoolkit=11.1 -c pytorch -c nvidia
RUN pip install -r requirements.txt

