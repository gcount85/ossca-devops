FROM ubuntu:latest
LABEL maintainer="EM Lee <100mgml@gmail.com>"
WORKDIR /ossca-devops
COPY . /ossca-devops

# install python 
RUN apt-get update \
    && apt-get install -y python3 python3-pip

# install dependency
RUN python3 -m pip install --upgrade pip \
    && pip install flask

# # lint with flake8
# RUN flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
# RUN flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

# Test with pytest
# RUN python3 -m pytest tests

# start app.py
CMD ["python3", "./src/app.py"]
