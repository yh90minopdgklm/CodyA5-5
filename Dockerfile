FROM debian:bullseye

WORKDIR app

COPY . .

RUN apt update -y && apt upgrade -y && apt install -y python3 pip && pip install -r ./requirements.txt

EXPOSE 8080

CMD [ "bash", "-c", "gunicorn 'david.app:app' --bind 0.0.0.0:8080" ]
