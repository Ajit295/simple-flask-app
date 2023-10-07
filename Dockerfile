FROM ubuntu

RUN apt-get update

RUN apt-get install python3 -y

RUN apt-get install pip -y

WORKDIR /opt

RUN pip install flask

COPY app.py /opt/app.py

EXPOSE 5000

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
