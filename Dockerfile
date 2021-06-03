FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apt-utils -y 
RUN apt-get -y install python3-pip python3-dev build-essential
COPY . /app 
WORKDIR /app 
RUN pip3 install -r /app/requirements.txt 
ENTRYPOINT ["python3"] 
CMD ["app.py"]
