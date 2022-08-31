FROM python:3.9.7-slim-buster


WORKDIR .
RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo
COPY . .
RUN pip3 install -r requirements.txt
RUN apt install ffmpeg
RUN env API_ID=15645529
RUN env API_HASH=ebce16047fc49dc1347db6366a30bf86
RUN env BOT_TOKEN=5027731817:AAEdVdwm2ljYDaGqDJc8iOv-iWkwqerrTGs

CMD ["python3", "main.py"]
