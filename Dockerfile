FROM tensorflow/tensorflow:2.0.1-gpu-py3-jupyter
ARG DEBIAN_FRONTEND=noninteractive

# Working Directory
WORKDIR /app

# Copy source code to working directory
# COPY . app.py /app/
COPY . requirements.txt ./

# # Install packages from requirements.txt
# # hadolint ignore=DL3013
# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt
RUN apt-get update
RUN apt-get install apt-utils
RUN apt-get -y install build-essential wget curl
RUN apt-get -y install tmux tree screen
RUN apt-get -y install git




RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
RUN chmod +x /bin/hadolint
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Clean up
RUN apt-get clean
RUN apt-get -y autoremove
