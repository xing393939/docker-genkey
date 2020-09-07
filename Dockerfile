FROM python:3.6.12
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]