FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install -r requirements.txt

FROM hshar/flaskapp
WORKDIR /app
ADD . /app/


EXPOSE 80
CMD ["python", "./hello.py"]