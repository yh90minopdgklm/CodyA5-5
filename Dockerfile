FROM debian:bullseye

WORKDIR app

COPY ./david ./

RUN apt update -y && apt upgrade -y && apt install -y python3 pip && pip install -r ./requirements.txt

EXPOSE 8080

CMD [ "gunicorn 'main:app' --bind 0.0.0.0:80" ]
