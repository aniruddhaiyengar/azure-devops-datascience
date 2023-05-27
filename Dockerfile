FROM hshar/webapp
WORKDIR /app
COPY ./app
RUN pip3 install -r requirements.txt
EXPOSE 80
CMD python ./hello.py