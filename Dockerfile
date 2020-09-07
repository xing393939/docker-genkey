FROM python:3.6.12
RUN add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-7-jdk && \
    apt-get install -y ant && \
    apt-get clean;
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]