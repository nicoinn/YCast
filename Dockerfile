FROM python:3.8.2-slim-buster

COPY ycast /usr/local/lib/python3.8/site-packages/ycast
COPY requirements.txt /
COPY examples/stations.yml.example /config/stations.yml

WORKDIR /

RUN pip install -r requirements.txt
 
ENTRYPOINT ["python","-m","ycast","-c","/config/stations.yml"]
