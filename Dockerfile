FROM tensorflow/tensorflow:2.0.1-gpu-py3-jupyter

# Working Directory
WORKDIR /app

# Copy source code to working directory
# # COPY . app.py /app/

# # Install packages from requirements.txt
# # hadolint ignore=DL3013
# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt
RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
RUN chmod +x /bin/hadolint
