# I assume theres a method of getting a base image from somewhere local
FROM python:slim

COPY app.py /app/
COPY /dependencies /dependencies/

#Important Instana stuff

RUN pip install /dependencies/*
ENV AUTOWRAPT_BOOTSTRAP=instana

# Just App examples below

WORKDIR /app
RUN pip install flask
RUN export FLASK_APP=app.py
EXPOSE 5000
CMD ["/usr/local/bin/flask", "run", "--host", "0.0.0.0"]

