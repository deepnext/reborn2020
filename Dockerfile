FROM python:3.8.2-alpine3.11

COPY requirements.txt /opt/requirements.txt
COPY src /opt/reborn2020/

RUN pip3 install -r /opt/requirements.txt

WORKDIR /opt/reborn2020

EXPOSE 5000
CMD ["python3", "reborn2020.py"]
