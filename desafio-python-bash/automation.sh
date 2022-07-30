#!/bin/bash

APP=python:v1
APP_NAME=python_app_1

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp desafio2_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY desafio2_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/desafio2_app.py" >> tempdir/Dockerfile

cd tempdir

docker build -t $APP .

docker run -t -d -p 5050:5050 --name $APP_NAME $APP

docker ps 
    
    
    
    
    
    
    

