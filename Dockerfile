FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-devel


RUN apt update
RUN apt install -y wget
RUN apt install -y unzip

RUN pip install -r requirements.txt

