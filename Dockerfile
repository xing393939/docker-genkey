FROM python:3.6.12
RUN apt-get upgrade && apt-get install openssl && apt-cache search openjdk
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","app.py"]